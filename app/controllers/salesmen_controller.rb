class SalesmenController < ApplicationController
  before_action:set_salesman_find,:only =>[:show, :edit,:update, :destroy]
  before_action:set_new_index,:only => [:index, :new]
  def index
  end
  
  def show

  end

  def new
  	
	render :action => :index
  end

  def create
    @salesman = Salesman.new(salesman_params)
    if @salesman.save
      flash[:notice] = "event was successfully created"
      redirect_to salesman_path(@salesman)
    else
      @salesmen = Salesman.page(params[:page]).per(5)
      render :action => :index
    end
  end

  def edit
  	@salesmen = Salesman.page(params[:page]).per(5)
    render :action => :index
  end

  def update
   	if@salesman.update(salesman_params)
      @salesmen = Salesman.page(params[:page]).per(5)
  	  flash[:notice] = "event was successfully updated"
  	  redirect_to salesman_path(@salesman)
    else
	  @salesmen = Salesman.page(params[:page]).per(5)
	  render :action => :index    
    end
  end


  def destroy
  	@salesman.destroy
  	flash[:alert] = "event was successfully deleted"
  	redirect_to salesmen_url :page => params[:page]
  end

  private

  def salesman_params
  	params.require(:salesman).permit(:name, :email, :agent_id, :date, :time)
  end

  def set_salesman_find
	@salesman = Salesman.find(params[:id])
  end
  def set_new_index
	@salesmen = Salesman.page(params[:page]).per(5)
    @salesman = Salesman.new
  end 

end
