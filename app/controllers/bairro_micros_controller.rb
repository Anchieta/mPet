class BairroMicrosController < ApplicationController
  # GET /bairro_micros
  # GET /bairro_micros.xml
  def index
    @bairro_micros = BairroMicro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bairro_micros }
    end
  end

  # GET /bairro_micros/1
  # GET /bairro_micros/1.xml
  def show
    @bairro_micro = BairroMicro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bairro_micro }
    end
  end

  # GET /bairro_micros/new
  # GET /bairro_micros/new.xml
  def new
    @bairro_micro = BairroMicro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bairro_micro }
    end
  end

  # GET /bairro_micros/1/edit
  def edit
    @bairro_micro = BairroMicro.find(params[:id])
  end

  # POST /bairro_micros
  # POST /bairro_micros.xml
  def create
    @bairro_micro = BairroMicro.new(params[:bairro_micro])

    respond_to do |format|
      if @bairro_micro.save
        flash[:notice] = 'BairroMicro was successfully created.'
        format.html { redirect_to(@bairro_micro) }
        format.xml  { render :xml => @bairro_micro, :status => :created, :location => @bairro_micro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bairro_micro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bairro_micros/1
  # PUT /bairro_micros/1.xml
  def update
    @bairro_micro = BairroMicro.find(params[:id])

    respond_to do |format|
      if @bairro_micro.update_attributes(params[:bairro_micro])
        flash[:notice] = 'BairroMicro was successfully updated.'
        format.html { redirect_to(@bairro_micro) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bairro_micro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bairro_micros/1
  # DELETE /bairro_micros/1.xml
  def destroy
    @bairro_micro = BairroMicro.find(params[:id])
    @bairro_micro.destroy

    respond_to do |format|
      format.html { redirect_to(bairro_micros_url) }
      format.xml  { head :ok }
    end
  end
end
