class Api::V1::ListStocksController < ApplicationController
  def index 
    listStocks = ListStock.all
  end
  
end
