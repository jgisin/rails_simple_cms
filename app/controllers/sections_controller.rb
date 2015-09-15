class SectionsController < ApplicationController
  def delete
    @section = Section.find(params[:id])
  end

  def destroy
    @section = Section.find(params[:id]).destroy
    flash[:notice] = "Your section '#{@section.name}' has been successfully deleted"
    redirect_to(:action => 'index')
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_params)
      flash[:notice] = "Your section '#{@section.name}' has been successfully udpated"
      redirect_to(:action => 'show', :id => @section.id)
    else
      render('edit')
    end
  end

  def index
    @sections = Section.sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new()
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice] = "Your section '#{@section.name}' has been successfully created"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  private
  def section_params
    params.require(:section).permit(:name, :position, :content_type,
     :content, :visible)
  end

end
