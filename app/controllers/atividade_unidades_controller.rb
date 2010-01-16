class AtividadeUnidadesController < ApplicationController
  # GET /atividade_unidades
  # GET /atividade_unidades.xml
  def index
    @atividade_unidades = AtividadeUnidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @atividade_unidades }
    end
  end

  # GET /atividade_unidades/1
  # GET /atividade_unidades/1.xml
  def show
    @atividade_unidade = AtividadeUnidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @atividade_unidade }
    end
  end

  # GET /atividade_unidades/new
  # GET /atividade_unidades/new.xml
  def new
    @atividade_unidade = AtividadeUnidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @atividade_unidade }
    end
  end

  # GET /atividade_unidades/1/edit
  def edit
    @atividade_unidade = AtividadeUnidade.find(params[:id])
  end

  # POST /atividade_unidades
  # POST /atividade_unidades.xml
  def create
    @atividade_unidade = AtividadeUnidade.new(params[:atividade_unidade])

    respond_to do |format|
      if @atividade_unidade.save
        flash[:notice] = 'AtividadeUnidade was successfully created.'
        format.html { redirect_to(@atividade_unidade) }
        format.xml  { render :xml => @atividade_unidade, :status => :created, :location => @atividade_unidade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @atividade_unidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /atividade_unidades/1
  # PUT /atividade_unidades/1.xml
  def update
    @atividade_unidade = AtividadeUnidade.find(params[:id])

    respond_to do |format|
      if @atividade_unidade.update_attributes(params[:atividade_unidade])
        flash[:notice] = 'AtividadeUnidade was successfully updated.'
        format.html { redirect_to(@atividade_unidade) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @atividade_unidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /atividade_unidades/1
  # DELETE /atividade_unidades/1.xml
  def destroy
    @atividade_unidade = AtividadeUnidade.find(params[:id])
    @atividade_unidade.destroy

    respond_to do |format|
      format.html { redirect_to(atividade_unidades_url) }
      format.xml  { head :ok }
    end
  end
end
