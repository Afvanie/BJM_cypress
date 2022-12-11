<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class rulediagnosa extends Model
{
    use HasFactory;
    protected $table='bobot'; 
    protected $primaryKey = 'id'; 

    protected $fillable = [
        'id',
        'kd_gejala',
        'kd_penyakit',
        'bobot',
    ];
    public function penyakit()
    {
        return $this->hasOne(penyakit::class, 'kd_penyakit', 'kd_penyakit');
    }

    public function gejala()
    {
        return $this->hasOne(gejala::class, 'kd_gejala', 'kd_gejala');
    }
    public function getRouteKeyName()
    {
        return 'slug';
    }
}
