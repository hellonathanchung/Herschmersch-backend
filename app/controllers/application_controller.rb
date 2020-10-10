class ApplicationController < ActionController::API
  def encode_token(payload)
      JWT.encode(payload, "stocks")
  end

  
end
