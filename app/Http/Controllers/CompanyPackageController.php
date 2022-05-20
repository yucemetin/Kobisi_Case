<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\CompanyPackages;
use App\Models\Package;
use http\Env\Response;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class CompanyPackageController extends Controller
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
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        $current = Carbon::now();
        $end = Carbon::now();
        $validatedData = Validator::make($request->all(), [
            'company_id' => 'exists:App\Company,company_id',
            'packages_id' => 'exists:App\Package,packages_id',
        ]);

        if ($validatedData->fails()) {
            return response()->json([
                'errors' => $validatedData->errors()
            ], 400);
        }

        $company = Company::find($request->company_id);
        $query = CompanyPackages::where('company_id', $company->company_id)
            ->whereDate('end_date', '>=', $current)
            ->exists();

        if ($query) {
            return response()->json([
                'errors' => 'You Already Have a Package'
            ], 400);
        }

        $package = Package::where('packages_id', $request->packages_id)->first();
        $isYearly = $package->yearly_payment;

        if ($isYearly) {
            $end->addYear();
        } else {
            $end->addMonth();
        }
        $companyPackage = CompanyPackages::create([
            'company_id' => $request->company_id,
            'packages_id' => $request->packages_id,
            'start_date' => $current,
            'end_date' => $end

        ]);


        return response()->json([
            'package' => $package,
            'start_date' => $current->toDateString(),
            'end_date' => $end->toDateString()
        ], 201);


    }


    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function checkPackage(Request $request)
    {


        $validatedData = Validator::make($request->all(), [
            'access_token' => 'required|string',
        ]);

        if ($validatedData->fails()) {
            return response()->json([
                'errors' => $validatedData->errors()
            ], 400);
        }

        $access_token = $request->access_token;

        $company = Company::where('access_token', $access_token)
            ->first();

        $package = $company->package();


        return response()->json([
            'company' => $company,
            'package' => $package->package()
        ],200);


    }

}
