class Api::V1::ListStocksController < ApplicationController
  def index
    listStocks = ListStock.all
  end

  def create
    stock = Stock.find_or_create_by(symbol:params['symbol'], name:params['name'])
    list_id= params['list_id']
    initial_cost= params['initial_cost']
    
    @list_stock = ListStock.new(list_id:list_id, stock_id:stock.id, initial_cost:initial_cost )
    if @list_stock.valid?
      @list_stock.save
      render json: @list_stock
    else
      render json: { error: 'failed to add new post' }, status: :not_acceptable
    end
  end

  def destroy 
    list_stock = ListStock.find(params[:id])
    list_stock.destroy
    render json: {message: 'The stock has been removed!'}
  end 
  

  def create
  end
end
