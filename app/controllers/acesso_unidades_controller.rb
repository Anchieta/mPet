class AcessoUnidadesController < ApplicationController
  # GET /acesso_unidades
  # GET /acesso_unidades.xml
  def index
    @acesso_unidades = AcessoUnidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @acesso_unidades }
    end
  end

  # GET /acesso_unidades/1
  # GET /acesso_unidades/1.xml
  def show
    @acesso_unidade = AcessoUnidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @acesso_unidade }
    end
  end

  # GET /acesso_unidades/new
  # GET /acesso_unidades/new.xml
  def new
    @acesso_unidade = AcessoUnidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @acesso_unidade }
    end
  end

  # GET /acesso_unidades/1/edit
  def edit
    @acesso_unidade = AcessoUnidade.find(params[:id])
  end

  # POST /acesso_unidades
  # POST /acesso_unidades.xml
  def create
    @acesso_unidade = AcessoUnidade.new(params[:acesso_unidade])

    respond_to do |format|
      if @acesso_unidade.save
        flash[:notice] = 'AcessoUnidade was successfully created.'
        format.html { redirect_to(@acesso_unidade) }
        format.xml  { render :xml => @acesso_unidade, :status => :created, :location => @acesso_unidade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @acesso_unidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /acesso_unidades/1
  # PUT /acesso_unidades/1.xml
  def update
    @acesso_unidade = AcessoUnidade.find(params[:id])

    respond_to do |format|
      if @acesso_unidade.update_attributes(params[:acesso_unidade])
        flash[:notice] = 'AcessoUnidade was successfully updated.'
        format.html { redirect_to(@acesso_unidade) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @acesso_unidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /acesso_unidades/1
  # DELETE /acesso_unidades/1.xml
  def destroy
    @acesso_unidade = AcessoUnidade.find(params[:id])
    @acesso_unidade.destroy

    respond_to do |format|
      format.html { redirect_to(acesso_unidades_url) }
      format.xml  { head :ok }
    end
  end
end
