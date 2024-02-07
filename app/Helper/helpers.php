<?php


use PhpParser\Node\Stmt\TryCatch;

/***Handle File Uploads */

function handleUploads($inputName, $model=null){

    try{
        if(request() -> hasFile($inputName)){
            // dd("Hello World");
            
            if($model  && \File::exists(public_path($model -> {$inputName} ))){
                \File::delete(public_path($model -> {$inputName}));
            }
    
    
            $file = request() -> file($inputName);
            $fileName = rand().$file -> getClientOriginalName();
            $file -> move(public_path('/uploads'), $fileName);
    
            $filePath = "/uploads/".$fileName;
    
            
            return $filePath;
    
        }
    }catch(\Exception $e){
        throw $e;
    }

}

/****Delete File */

function deleteFileifExist($filePath){
    try{
        if(\File::exists(public_path($filePath))){
            \File::delete(public_path($filePath));
        }
        
    }catch(\Exception $e){
        throw $e;
    }
}

/***Get dynamic Colors */
function getDynamicColors($index){
    $colors =['#558bff','#fecc90','#ff885e','#282828','#190844','#9dd3ff'];

    return $colors[$index % count($colors)];
}


/***Set sidebar active**/

function setSidebarActive($route){
    if (is_array($route)){
        foreach ($route as $key) {
            if(request()->routeIs($key)){
                return 'active';
            }
        }
    }
}