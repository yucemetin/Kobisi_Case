<?php

namespace App\Http\Controllers;

use App\Models\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

    }

    /**
     * Display the specified resource.
     *
     * @param \App\Company $company
     * @return \Illuminate\Http\Response
     */
    public function show(Company $company)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Company $company
     * @return \Illuminate\Http\Response
     */
    public function edit(Company $company)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Company $company
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Company $company)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Company $company
     * @return \Illuminate\Http\Response
     */
    public function destroy(Company $company)
    {
        //
    }

    public function register(Request $request)
    {
        $validatedData = Validator::make($request->all(), [
            'site_url' => 'required',
            'name' => 'required',
            'lastname' => 'required',
            'company_name' => 'required',
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if ($validatedData->fails()) {
            return response()->json([
                'errors' => $validatedData->errors()
            ], 400);
        }


        $company = Company::create([
            'site_url' => $request->site_url,
            'name' => $request->name,
            'lastname' => $request->lastname,
            'company_name' => $request->company_name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        $token = $company->createToken("authToken")->plainTextToken;

        $company->access_token = $token;
        $company->save();

        return response(["company_id" => $company->company_id, "token" => $token], 200);

    }
}
