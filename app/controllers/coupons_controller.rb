class CouponsController < ApplicationController
  before_action :set_coupon, only: [:show, :edit, :update, :destroy]
  def index
    @coupons = Coupon.all
  end

  def show
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new(coupon_params)
    if @coupon.save
      redirect_to @coupon
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @coupon.update(coupon_params)
      redirect_to @coupon
    else
      render :edit
    end
  end

  def destroy
    @coupon.destroy
    redirect_to coupons_url
  end

  private

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end

  def coupon_params
    params.require(:coupon).permit(:name, :price)
  end
end
