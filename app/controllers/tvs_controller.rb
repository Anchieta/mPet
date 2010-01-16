class TvsController < ApplicationController
  # GET /tvs
  # GET /tvs.xml
  def index
    @tvs = Tv.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tvs }
    end
  end

  # GET /tvs/1
  # GET /tvs/1.xml
  def show
    @tv = Tv.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tv }
    end
  end

  # GET /tvs/new
  # GET /tvs/new.xml
  def new
    @tv = Tv.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tv }
    end
  end

  # GET /tvs/1/edit
  def edit
    @tv = Tv.find(params[:id])
  end

  # POST /tvs
  # POST /tvs.xml
  def create
    @tv = Tv.new(params[:tv])

    respond_to do |format|
      if @tv.save
        flash[:notice] = 'Tv was successfully created.'
        format.html { redirect_to(@tv) }
        format.xml  { render :xml => @tv, :status => :created, :location => @tv }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tv.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tvs/1
  # PUT /tvs/1.xml
  def update
    @tv = Tv.find(params[:id])

    respond_to do |format|
      if @tv.update_attributes(params[:tv])
        flash[:notice] = 'Tv was successfully updated.'
        format.html { redirect_to(@tv) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tv.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tvs/1
  # DELETE /tvs/1.xml
  def destroy
    @tv = Tv.find(params[:id])
    @tv.destroy

    respond_to do |format|
      format.html { redirect_to(tvs_url) }
      format.xml  { head :ok }
    end
  end
end
