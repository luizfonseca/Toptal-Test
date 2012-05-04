class DevelopersController < ApplicationController
  
  layout 'page'
  before_filter :search

  
  def index
    respond_to do |format|
      format.json { render :json => @developers }
      format.html
     end
  end
  
  
  def search
    @search = Developer.search(params[:search])
    @developers = @search.all 

  end


  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(params[:developer])
    if @developer.save
      flash[:alert] = 'success'
    else
      flash[:notice] = 'Ops, couldn\'t create the developer'
    end
    redirect_to developers_path
    
  end

  def edit
    @developer = Developer.find(params[:id])
  end
  
  def update
    @developer = Developer.find(params[:id])
    if @developer.update_attributes(params[:developer])
      flash[:notice] = "Developer updated"
    end
    redirect_to :back and return
  end

  def show
  end

  def destroy
    @developer = Developer.destroy(params[:id])
    redirect_to :back and return
  end

end
