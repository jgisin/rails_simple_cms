class PagesController < ApplicationController
  layout "admin"

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id]).destroy
    flash[:notice] = "Page '#{@page.name}' has been destroyed successfully"
    redirect_to(:action => 'index') 
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      flash[:notice] = "Page '#{@page.name}' has been updated successfully"
      redirect_to(:action => 'show', :id => @page.id)
    else 
      render('edit')
    end
  end

  def index
    @pages = Page.sorted
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to(:action => 'index')
      flash[:notice] = "Page '#{@page.name}' has been created successfully"
    else
      render('new')
    end
  end
    

  def show
    @page = Page.find(params[:id])
  end

  private

  def page_params
    params.require(:page).permit(:name, :position, :visible, :subject_id, :permalink)
  end
end
