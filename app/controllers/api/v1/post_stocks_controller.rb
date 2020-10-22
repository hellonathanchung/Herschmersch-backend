class Api::V1::PostStocksController < ApplicationController

  def index
    post_stock = PostStock.all
  end

  def create
    stock = Stock.find_or_create_by( symbol:params['symbol'], name:params['name'])
    post_id = params['post_id']

    # stock = Stock.new(stock_params)
  
    post_stock = PostStock.new(post_id:post_id, stock_id:stock.id)
    if post_stock.valid?
      post_stock.save
      render json: post_stock
    else
      render json: { error: 'Failed to add stock to your post' }, status: :not_acceptable
    end
  end
  private

  # def post_stock_params
  #   params.require(:post_stock).permit(:stock_id, :post_id)
  # end
end
