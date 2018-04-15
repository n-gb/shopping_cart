class StoreController < ApplicationController
  def index
  	@date = DateTime.now    
  	@products = Product.order(:title)
  	initialize_session
  	@session_counter_message = "You've been here #{session[:counter]} times" if session[:counter] > 5
  end

  private
    def initialize_session    	
      session[:counter].nil? ? session[:counter] = 0 : session[:counter] += 1      
    end
end