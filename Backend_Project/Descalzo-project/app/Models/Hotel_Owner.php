<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotel_Owner extends Model
{
    use HasFactory;
    protected $fillable=['name','username','password','account','phone','email','address','status'];
}
