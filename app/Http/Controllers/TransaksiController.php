<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Auth,DB;

class TransaksiController extends Controller
{
    public function index()
    {
        $data = DB::table('transaksi')->get();
        $response = [
            'message' => 'Semua Transaksi',
            'data' => $data
        ];
        return response($response, 200);
    }
    public function store(Request $request)
    {
        $validate = $request->validate([
            'tgl_transaksi' => 'required|string',
            'pemasukan' => 'required|string',
            'pengeluaran' => 'required|integer',
            'keterangan' => 'required|string',
            'user_id' => 'required|string',
        ]);
        $transaksi = DB::table('transaksi')->insert([
            'tgl_transaksi' => $validate['tgl_transaksi'],
            'pemasukan' => $validate['pemasukan'],
            'pengeluaran' => $validate['pengeluaran'],
            'keterangan' => $validate['keterangan'],
            'user_id' => $validate['user_id'],
        ]);


        // $product = Product::create([
        //     'name' => $validate['name'],
        //     'slug' => Str::slug($validate['name'], '-'),
        //     // 'image' => $validate['image'],
        //     'image' => $image->hashName(),
        //     'price' => $validate['price'],
        //     'stock' => $validate['stock'],
        //     'specification' => $validate['specification'],
        //     'function' => $validate['function'],
        //     'utility' => $validate['utility'],
        //     'commodity' => $validate['commodity']
            
        // ]);

        $response = [
            'message' => 'Create Transaksi Successful',
            'data' => $transaksi,
        ];

        return response($response, 201);
    }
    public function delete($id){
        
        DB::table('transaksi')->where('id',$id)->delete();
        $response = [
            'message' => 'Berhasil Menghapus Transaksi',
        ];
        return response($response, 209);
    }
}
