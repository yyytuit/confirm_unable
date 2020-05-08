class PurchasesController < ApplicationController
  def new
    @purchase = Purchase.new
  end

  def confirm
    p "#######params#######"
    p params
    @purchase = Purchase.new(purchase_params)
    # render :new if @purchase.invalid?
  end

  def create
    @purchase = Purchase.new(purchase_params)
    # unless params[:finish] == 'true'
    #   # build_contact
    #   render :new
    #   return
    # end
    if @purchase.save
      redirect_to action: :finish
      # redirect_to action: :finish, kind: params[:kind], contact_id: @contact.id
    else
      render :new
    end
  end

  def finish
    p "#######params#######"
    p params
    # @purchase = Purchase.find(params[:id])
  end

  private

  def purchase_params
    params.require(:purchase).permit(:coupon_id, :amount, :total_price)
  end
end
