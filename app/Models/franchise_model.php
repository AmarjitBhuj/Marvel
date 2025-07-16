<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class franchise_model extends Model
{
    use HasFactory;
    public $timestamps = false;
    public $table="franchise";
    protected $fillable = [
        'Quantity',
    ];
    protected $primaryKey = 'Product_id';
}
