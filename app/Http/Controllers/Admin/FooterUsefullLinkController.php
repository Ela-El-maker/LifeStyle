<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\FooterUsefullLinkDataTable;
use App\Http\Controllers\Controller;
use App\Models\FooterUsefullLink;
use Illuminate\Http\Request;

class FooterUsefullLinkController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(FooterUsefullLinkDataTable $dataTable)
    {
        //
        return $dataTable-> render('admin.footer-usefull-link.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('admin.footer-usefull-link.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $request-> validate([
            'name' => ['required','max:200'],
            'url' => ['max:50'],
        ]);
        $link = new FooterUsefullLink();

        $link->name = $request-> name;
        $link-> url = $request-> url;
        $link -> save();

        //Display a success toast, with a title
        toastr()->success('Updated Successfully', 'Congrats');
        return redirect()->route('admin.footer-usefull-link.index');
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
        $link = FooterUsefullLink::findOrFail($id);
        return view('admin.footer-usefull-link.edit',compact('link'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
         //
        $request-> validate([
            'name' => ['required','max:200'],
            'url' => ['max:50'],
        ]);

        $link = FooterUsefullLink::findOrFail($id);

        $link->name = $request-> name;
        $link-> url = $request-> url;
        $link -> save();

        //Display a success toast, with a title
        toastr()->success('Updated Successfully', 'Congrats');
        return redirect()->route('admin.footer-usefull-link.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        $link = FooterUsefullLink::findOrFail($id);
        $link->delete();
        toastr('Deleted Successfully ', 'error');
    }
}
