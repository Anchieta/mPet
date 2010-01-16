class EmpresaFormapagtosController < ApplicationController
  # GET /empresa_formapagtos
  # GET /empresa_formapagtos.xml
  def index
    @empresa_formapagtos = EmpresaFormapagto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @empresa_formapagtos }
    end
  end

  # GET /empresa_formapagtos/1
  # GET /empresa_formapagtos/1.xml
  def show
    @empresa_formapagto = EmpresaFormapagto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @empresa_formapagto }
    end
  end

  # GET /empresa_formapagtos/new
  # GET /empresa_formapagtos/new.xml
  def new
    @empresa_formapagto = EmpresaFormapagto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @empresa_formapagto }
    end
  end

  # GET /empresa_formapagtos/1/edit
  def edit
    @empresa_formapagto = EmpresaFormapagto.find(params[:id])
  end

  # POST /empresa_formapagtos
  # POST /empresa_formapagtos.xml
  def create
    @empresa_formapagto = EmpresaFormapagto.new(params[:empresa_formapagto])

    respond_to do |format|
      if @empresa_formapagto.save
        flash[:notice] = 'EmpresaFormapagto was successfully created.'
        format.html { redirect_to(@empresa_formapagto) }
        format.xml  { render :xml => @empresa_formapagto, :status => :created, :location => @empresa_formapagto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @empresa_formapagto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /empresa_formapagtos/1
  # PUT /empresa_formapagtos/1.xml
  def update
    @empresa_formapagto = EmpresaFormapagto.find(params[:id])

    respond_to do |format|
      if @empresa_formapagto.update_attributes(params[:empresa_formapagto])
        flash[:notice] = 'EmpresaFormapagto was successfully updated.'
        format.html { redirect_to(@empresa_formapagto) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @empresa_formapagto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /empresa_formapagtos/1
  # DELETE /empresa_formapagtos/1.xml
  def destroy
    @empresa_formapagto = EmpresaFormapagto.find(params[:id])
    @empresa_formapagto.destroy

    respond_to do |format|
      format.html { redirect_to(empresa_formapagtos_url) }
      format.xml  { head :ok }
    end
  end
end
