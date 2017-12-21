<?php namespace App\Http\Controllers;

class CustomsController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return Response
     */
    public function show($id)
    {
        $list = DB::select('select *from ac_customers where managerid=?', $id);
        return \Response::json(array($list));
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
            DB::update('update ac_customers set name=? and phone=? and address=? where id=?',
                [$id => name, $id => phone, $id => address, $id => id]);
        } else
            DB::insert('insert into ac_customers (name,phone,address,managerid) values (?, ?,?,?)',
                [$id => name, $id => phone, $id => address, $id => managerid]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return Response
     */
    public function destroy($id)
    {
        DB::delete('delete from ac_customers where id=?', [$id]);
    }

}
