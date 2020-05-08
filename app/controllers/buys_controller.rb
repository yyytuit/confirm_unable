class BuysController < ApplicationController
  def new
    @buy = Buy.new
  end

  def create
    @buy = Buy.new(buy_params)

    respond_to do |format|
      if @buy.save
        format.html { redirect_to root_path, notice: '質問を送信しました。' }
      else
        # 一度目の「確認」ボタンクリック時は、confirmingがセットされていないのsaveでエラーが発生しこっちに来る
        # ただし、ここに到達した時点で model の after_validation 後なので、confirmingはセットされている状態で new アクションへ
        format.html { render action: 'new' }
      end
    end
  end

  private

  def buy_params
    params.require(:buy).permit(:coupon_id, :amount, :total_price, :confirming)
  end
end
