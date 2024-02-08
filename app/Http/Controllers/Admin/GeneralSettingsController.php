<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\GeneralSettings;
use Illuminate\Http\Request;

class GeneralSettingsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $generalSettings = GeneralSettings::first();
        return view('admin.settings.general-setting.index',compact('generalSettings'));
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
        //dd($request->all());
        $request -> validate([
            'logo' =>['max:5000','image'],
            'footer_logo' =>['max:5000','image'],
            'favicon' =>['max:5000','image'],
        ]);

        $setting = GeneralSettings::first();
        $logo = handleUploads('logo', $setting);
        $footer_logo = handleUploads('footer_logo', $setting);  
        $favicon = handleUploads('favicon', $setting);
        $generalSettings = GeneralSettings::first();
        $generalSettings->logo = (!empty($logo)? $logo : $setting->logo);
        $generalSettings->footer_logo = (!empty($footer_logo)? $footer_logo : $setting->footer_logo);
        $generalSettings->favicon = (!empty($favicon)? $favicon : $setting->favicon);
        $generalSettings->save();
        toastr('General Settings saved successfully', 'info');
        return redirect()->back();
        //dd($request->all());
        // $setting = GeneralSettings::first();

        // $logo = handleUploads('logo',$setting);
        // $footer_logo = handleUploads('footer_logo',$setting);
        // $favicon = handleUploads('favicon',$setting);
        
        // $generalSettings = GeneralSettings::first();
        // $generalSettings->logo = (!empty($logo) ? $logo : $setting->logo);
        // $generalSettings->footer_logo = (!empty($footer_logo) ? $footer_logo : $setting->footer_logo);
        // $generalSettings->favicon = (!empty($favicon) ? $favicon : $setting->favicon);

        // $generalSettings->save();
        // toastr('General Settings saved successfully', 'success');
        // return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
