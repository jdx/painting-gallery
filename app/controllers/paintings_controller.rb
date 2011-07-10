class PaintingsController < ApplicationController
  # GET /paintings
  # GET /paintings.xml
  def index
    @paintings = Painting.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @paintings }
    end
  end

  # GET /paintings/1
  # GET /paintings/1.xml
  def show
    @painting = Painting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @painting }
    end
  end

  # GET /paintings/new
  # GET /paintings/new.xml
  def new
    @painting = Painting.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @painting }
    end
  end

  # GET /paintings/1/edit
  def edit
    @painting = Painting.find(params[:id])
  end

  # POST /paintings
  # POST /paintings.xml
  def create
    @painting = Painting.new(params[:painting])

    respond_to do |format|
      if @painting.save
        format.html { redirect_to(@painting, :notice => 'Painting was successfully created.') }
        format.xml  { render :xml => @painting, :status => :created, :location => @painting }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @painting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /paintings/1
  # PUT /paintings/1.xml
  def update
    @painting = Painting.find(params[:id])

    respond_to do |format|
      if @painting.update_attributes(params[:painting])
        format.html { redirect_to(@painting, :notice => 'Painting was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @painting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /paintings/1
  # DELETE /paintings/1.xml
  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy

    respond_to do |format|
      format.html { redirect_to(paintings_url) }
      format.xml  { head :ok }
    end
  end
end
