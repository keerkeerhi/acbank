<?php namespace App\Http\Controllers;

use Illuminate\Http\Response;
use Auth;

class StaffController extends Controller {

	/*
	|--------------------------------------------------------------------------
	| Welcome Controller
	|--------------------------------------------------------------------------
	|
	| This controller renders the "marketing page" for the application and
	| is configured to only allow guests. Like most of the other sample
	| controllers, you are free to modify or remove it as you desire.
	|
	*/

	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct()
	{
		$this->middleware('guest');
	}

	/**
	 * Show the application welcome screen to the user.
	 *
	 * @return Response
	 */
	public function index()
	{
		return 'aaaaa';
	}

    /**
     * @return mixed 验证登录
     */
	public function checkAuth(){
        return \Response::json(array('ispassed'=>Auth::check()));
    }

    /**
     * @return mixed 登录
     */
    public function login($loginname,$pwd){
        $user = BD::select("select *from ac_user where loginname=? and password=?",array($loginname,$pwd));
        if (count($user)>0)
        {
            Auth::login($user);
            return \Response::json(array('flag'=>true,'info'=>$user));
        }
        else
            return \Response::json(array('flag'=>false,'info'=>"用户名密码有误！"));
    }

}
