<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Orders extends Model  {

  /**
   * The database table used by the model.
   *
   * @var string
   */
  protected $table = 'orders';

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
      'customer_id',
      'tong_tien',      
      'tong_sp',
      'status',
      'method_id',
      'coupon_id',
      'giam_gia',
      'tien_thanh_toan',
      'phi_giao_hang',      
      'phi_cod',
      'full_name',      
      'da_thanh_toan'
    ];

    public function order_detail()
    {
        return $this->hasMany('App\Models\OrderDetail', 'order_id');
    }

    public function customer()
    {
        return $this->hasOne('App\Models\Customer', 'id', 'customer_id');
    }
}
