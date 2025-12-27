<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Wallet extends Model
{
    protected $fillable = [
        'wallet_name',
        'currency_id',
        'created_by',
        'updated_by'
    ];

    public function currency()
    {
        return $this->belongsTo(Currency::class);
    }
}
