class MagicsController < ApplicationController
  def index
    @magics = Magic.all
  end

  def show
    @magic = Magic.find params[:id]
  end

  def new
    @magic = Magic.new
  end

  def edit
    @magic = Magic.find params[:id]
  end

  def create
    @magic = Magic.new params[:magic]
    if @magic.save
      redirect_to @magic, :notice => 'Magic was successfully created.'
    else
      render :action => 'new', :error => @magic.errors.full_messages
    end
  end

  def update
    @magic = Magic.find params[:id]
    if @magic.update_attributes params[:magic]
      redirect_to @magic, :notice => 'Magic was successfully updated.'
    else
      render :action => 'edit', :error => @magic.errors.full_messages
    end
  end

  def destroy
    @magic = Magic.find params[:id]
    @magic.destroy
    redirect_to magics_url
  end
end
