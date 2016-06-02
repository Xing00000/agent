class SalesmenController < ApplicationController
  before_action:set_salesman_find,:only =>[:show, :edit, :delete]

  def index
	@salesmen = Salesman.page(params[:page]).per(10)
  end
  
  def show
  end


  def edit
  end

  def delete
  end

  private

  def set_salesman_find
	  	@salesman = Salesman.find(params[:id])
  end
  

end
