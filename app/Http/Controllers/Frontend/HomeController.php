<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\About;
use App\Models\Blog;
use App\Models\BlogSectionSetting;
use App\Models\Category;
use App\Models\Experience;
use App\Models\Feedback;
use App\Models\FeedbackSectionSetting;
use App\Models\Hero;
use App\Models\PortfolioItem;
use App\Models\PortfolioSectionSetting;
use App\Models\Service;
use App\Models\SkillItem;
use App\Models\SkillSectionSetting;
use App\Models\TyperTitle;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    public function index(){

        $hero  = Hero::first();
        $typerTitles = TyperTitle::all();
        $services = Service::all();
        $about = About::first();
        $portfolioTitle = PortfolioSectionSetting::first();
        $portfolioCategories = Category::all();
        $portfolioItems = PortfolioItem::all();
        $skill = SkillSectionSetting::first();
        $skillItems = SkillItem::all();
        $experience = Experience::first();
        $feedbacks = Feedback::all();
        $feedbackTitle = FeedbackSectionSetting::first();
        $blogs = Blog::latest()->take(5)->get();
        $blogTitle = BlogSectionSetting::first();
        
        return view(
            'frontend.home', 
                compact(
                    'hero', 
                    'typerTitles',
                    'services',
                    'about',
                    'portfolioTitle',
                    'portfolioCategories',
                    'portfolioItems',
                    'skill' ,
                    'skillItems',
                    'experience',
                    'feedbacks',
                    'feedbackTitle',
                    'blogs',
                    'blogTitle',
                ));
    }
    public function showPortfolio($id){
        $portfolio = PortfolioItem::findOrFail($id);
        return view('frontend.portfolio-details', compact('portfolio'));
    }
    public function showBlog($id){
        $blog = Blog::findOrFail($id);
        $previousPost = Blog::where('id','<', $blog->id)-> orderBy('id', 'desc')->first();
        $nextPost = Blog::where('id','>', $blog->id)-> orderBy('id', 'asc')->first();
        return view('frontend.blog-details', compact('blog','previousPost','nextPost'));
    }

    public function blog(){
        $blogs = Blog::latest()->paginate(9);
        return view('frontend.blog',compact('blogs'));
    }

    public function contact(Request $request){

        dd($request->all());
    }

}

