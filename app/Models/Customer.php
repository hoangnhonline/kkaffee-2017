<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Customer extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'customers';

	 /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = true;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
      'id',
      'full_name',
      'email',
      'username',
      'password',
      'type',
      'last_login',
      'status',     
      'facebook_id',
      'image_url',
      'key_reset'
    ];

    public function tinh()
    {
        return $this->hasOne('App\Models\City', 'id', 'city_id');
    }

    public function huyen()
    {
        return $this->hasOne('App\Models\District', 'id', 'district_id');
    }
    public function xa()
    {
        return $this->hasOne('App\Models\Ward', 'id', 'ward_id');
    }
    public function address()
    {
        return $this->hasOne('App\Models\CustomerAddress', 'id', 'customer_id');
    }
}
