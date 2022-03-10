<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;
    protected $table = "companies";

    public $fillable = [
        'name', 'logo'
    ];

    // Quan hệ category -> product
    public function products()
    {
        return $this->hasMany(Product::class,'comp_id');
    }
}
