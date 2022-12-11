<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class indikatorbobot extends Model
{
    use HasFactory;
    protected $table='indikator'; 
    protected $primaryKey = 'id';
    
    protected $fillable = [
        'id',
        'nama_indikator',
        'nilai'
    ];
}
