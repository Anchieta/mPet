class TplogradourosController < ApplicationController
  # GET /tplogradouros
  # GET /tplogradouros.xml
  def index
    @tplogradouros = Tplogradouro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tplogradouros }
    end
  end

  # GET /tplogradouros/1
  # GET /tplogradouros/1.xml
  def show
    @tplogradouro = Tplogradouro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tplogradouro }
    end
  end

  # GET /tplogradouros/new
  # GET /tplogradouros/new.xml
  def new
    @tplogradouro = Tplogradouro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tplogradouro }
    end
  end

  # GET /tplogradouros/1/edit
  def edit
    @tplogradouro = Tplogradouro.find(params[:id])
  end

  # POST /tplogradouros
  # POST /tplogradouros.xml
  def create
    @tplogradouro = Tplogradouro.new(params[:tplogradouro])

    respond_to do |format|
      if @tplogradouro.save
        flash[:notice] = 'Tplogradouro was successfully created.'
        format.html { redirect_to(@tplogradouro) }
        format.xml  { render :xml => @tplogradouro, :status => :created, :location => @tplogradouro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tplogradouro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tplogradouros/1
  # PUT /tplogradouros/1.xml
  def update
    @tplogradouro = Tplogradouro.find(params[:id])

    respond_to do |format|
      if @tplogradouro.update_attributes(params[:tplogradouro])
        flash[:notice] = 'Tplogradouro was successfully updated.'
        format.html { redirect_to(@tplogradouro) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tplogradouro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tplogradouros/1
  # DELETE /tplogradouros/1.xml
  def destroy
    @tplogradouro = Tplogradouro.find(params[:id])
    @tplogradouro.destroy

    respond_to do |format|
      format.html { redirect_to(tplogradouros_url) }
      format.xml  { head :ok }
    end
  end
end
