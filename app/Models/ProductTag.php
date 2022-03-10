<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductTag extends Model
{
    use HasFactory;
    protected $table = 'product_tag';
    public $fillable = [
        'product_id', 'tag_id', 'additional_price'
    ];

    public function tag(){
        return $this->belongsTo(Tag::class, 'tag_id');
    }
    // protected $primaryKey = ['product_id', 'tag_id'];
    // public $incrementing = false;
}
