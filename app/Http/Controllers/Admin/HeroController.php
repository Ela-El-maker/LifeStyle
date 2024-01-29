<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Hero;
use Faker\Core\File as CoreFile;
use Faker\Provider\File as ProviderFile;
use Illuminate\Http\Request;
use File;
use Illuminate\Http\File as HttpFile;
use Illuminate\Http\Testing\File as TestingFile;

class HeroController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $hero = Hero::first();
        return view('admin.hero.index', compact('hero'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
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
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        
        $request -> validate([
            'title' => ['required','string','max:255'],
            'sub_title' => ['required','string','max:500'],
            'image' => ['max:3000','image'],
        ]);
        //dd($request ->all());
        if($request -> hasFile('image')){
            // dd("Hello World");
            $hero = Hero::first();
               if($hero  && File::exists(public_path($hero -> image))){
                   File::delete(public_path($hero -> image));
               }
   
               $image = $request -> file('image');
               $imageName = rand().$image -> getClientOriginalName();
               $image -> move(public_path('/uploads'), $imageName);
   
               $imagePath = "/uploads/" . $imageName;
            //    dd($imagePath);
               Hero::updateorCreate(
                  ['id' => $id],
                  [
                       'title' => $request -> title,
                       'sub_title' => $request -> sub_title,
                       'btn_text' => $request -> btn_text,
                       'btn_url' => $request -> btn_url,
                       'image' => isset($imagePath) ? $imagePath : '',
                   ]
                   );

                   //dd('success');
                //Display a success toast, with a title
                toastr()->success('Updated Successfully', 'Congrats');
                return redirect() -> back();
          
         
        
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
