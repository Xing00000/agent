class SalesmenController < ApplicationController
  before_action:set_salesman_find,:only =>[:show, :edit,:update, :destroy]

  def index
	@salesmen = Salesman.page(params[:page]).per(5)
    @salesman = Salesman.new
  end
  
  def show

  end

  def new
    @salesmen = Salesman.page(params[:page]).per(5)
    @salesman = Salesman.new
    redirect_to salesmen_url	 
  end

  def create
    @salesman = Salesman.new(salesman_params)
    @salesman.save

    redirect_to salesmen_url
  end

  def edit
    @salesmen = Salesman.page(params[:page]).per(5)
    render :action => :index
  end

  def update
   	@salesman.update(salesman_params)
    @salesmen = Salesman.page(params[:page]).per(5)
  	redirect_to salesmen_url 

  end


  def destroy
  	@salesman.destroy
  	redirect_to salesmen_url :page => params[:page] 
  end

  private

  def salesman_params
  	params.require(:salesman).permit(:name, :email, :agent_id)
  end

  def set_salesman_find
	  	@salesman = Salesman.find(params[:id])
  end
  

end
