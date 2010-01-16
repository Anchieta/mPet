class DestaquesController < ApplicationController
  # GET /destaques
  # GET /destaques.xml
  def index
    @destaques = Destaque.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @destaques }
    end
  end

  # GET /destaques/1
  # GET /destaques/1.xml
  def show
    @destaque = Destaque.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @destaque }
    end
  end

  # GET /destaques/new
  # GET /destaques/new.xml
  def new
    @destaque = Destaque.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @destaque }
    end
  end

  # GET /destaques/1/edit
  def edit
    @destaque = Destaque.find(params[:id])
  end

  # POST /destaques
  # POST /destaques.xml
  def create
    @destaque = Destaque.new(params[:destaque])

    respond_to do |format|
      if @destaque.save
        flash[:notice] = 'Destaque was successfully created.'
        format.html { redirect_to(@destaque) }
        format.xml  { render :xml => @destaque, :status => :created, :location => @destaque }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @destaque.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /destaques/1
  # PUT /destaques/1.xml
  def update
    @destaque = Destaque.find(params[:id])

    respond_to do |format|
      if @destaque.update_attributes(params[:destaque])
        flash[:notice] = 'Destaque was successfully updated.'
        format.html { redirect_to(@destaque) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @destaque.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /destaques/1
  # DELETE /destaques/1.xml
  def destroy
    @destaque = Destaque.find(params[:id])
    @destaque.destroy

    respond_to do |format|
      format.html { redirect_to(destaques_url) }
      format.xml  { head :ok }
    end
  end
end
