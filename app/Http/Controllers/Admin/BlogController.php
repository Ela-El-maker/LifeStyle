<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\BlogDataTable;
use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\BlogCategory;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(BlogDataTable $dataTable)
    {
        //
        return $dataTable->render('admin.blog.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        $categories = BlogCategory::all();
        return view('admin.blog.create',compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $request-> validate([
            'image' =>['required','max:5000','image'],
            'title' =>['required','max:200'],
            'category' =>['required','numeric','max:200'],
            'description' =>['required'],
        ]);

        $imagePath = handleUploads('image');
        
        $blog = new Blog();
        $blog->image = $imagePath;
        $blog->title = $request->title;
        $blog->category = $request->category;
        $blog->description = $request->description;
        $blog->save();

        toastr('Created Successfully!!!', 'success');
        return redirect()->route('admin.blog.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
        $blog = Blog::findOrFail($id);
        $categories = BlogCategory::all();
        return view('admin.blog.edit',compact('blog','categories'));
        // return view('admin.blog.edit');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        // dd($request->all());
        $request-> validate([
            'image' =>['max:5000','image'],
            'title' =>['required','max:200'],
            'category' =>['required','numeric'],
            'description' =>['required'],
        ]);

        $blog = Blog::findOrFail($id);

        $imagePath = handleUploads('image', $blog);
        
        $blog->image = (!empty($imagePath) ? $imagePath : $blog->image);
        $blog->title = $request->title;
        $blog->category = $request->category;
        $blog->description = $request->description;
        $blog->save();

        toastr('Updated Successfully!!!', 'info');
        return redirect()->route('admin.blog.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        $blog = Blog::findOrFail($id);
        deleteFileifExist($blog->image);
        $blog->delete();

        toastr('Deleted Successfully!!!', 'danger');
        //return redirect()->route('admin.blog.index');
    }
}
