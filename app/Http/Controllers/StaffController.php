<?php namespace App\Http\Controllers;

use Illuminate\Support\Facades\Crypt;

class StaffController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        //
        $list = DB::select('select *from ac_staff');
        return \Response::json(array($list));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {

    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int $id
     * @return Response
     */
    public function update($id)
    {
        if (property_exists($id, 'id')) {
            DB::update('update ac_user set loginname=? and name=? and headimg=? and email=? where id=?',
                [$id => loginname, $id => name, $id => headimg, $id => email, $id => id]);
        } else
            DB::insert('insert into ac_user (loginname,name,headimg,email,password) values (?, ?,?,?,?)',
                [$id => loginname, $id => name, $id => headimg, $id => email, Crypt::encrypt('123456')]);
    }

    /**
     * Remove the specified resource from storage.
     *   删除员工
     * @param  int $id
     * @return Response
     */
    public function destroy($id)
    {
        DB::delete('delete from ac_user where id=?', [$id]);
    }

}
