class PaintingsController < ApplicationController
  def index
    @paintings = Painting.all
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(params[:painting])

    if @painting.save
      redirect_to :action => :index, :notice => "#{ @painting.title } was successfully created."
    else
      render :action => "new"
    end
  end
end
