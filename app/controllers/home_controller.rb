class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: "pk_0d778dd3116c4a7c855b0910b4bf5d50")

    if params[:ticker] == ""
      @nothing = "Hey! You forgot to enter a symbol"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      if !@stock
        @error = "Hey! That stock symbol doesn't exist"
      end
    end
  end

  def about
  end

end
