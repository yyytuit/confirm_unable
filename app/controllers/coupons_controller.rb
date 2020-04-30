class CouponsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new(coupon_params)
    if @coupon.save
      p "セーブ"
      redirect_to @coupon
    else
      p "セーブ失敗"
      p @coupon.errors.full_messages
      render :new
    end
    # respond_to do |format|
    #   if @coupon.save
    #     format.html { redirect_to @coupon, notice: 'Todo was successfully created.' }
    #     format.json { render :show, location: @coupon }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @coupon.errors }
    #   end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set
    @coupon = Coupon.find(params[id])
  end

  def coupon_params
    params.require(:coupon).permit(:name, :price)
  end
end
