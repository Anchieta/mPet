class AcessosController < ApplicationController
  # GET /acessos
  # GET /acessos.xml
  def index
    @acessos = Acesso.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @acessos }
    end
  end

  # GET /acessos/1
  # GET /acessos/1.xml
  def show
    @acesso = Acesso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @acesso }
    end
  end

  # GET /acessos/new
  # GET /acessos/new.xml
  def new
    @acesso = Acesso.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @acesso }
    end
  end

  # GET /acessos/1/edit
  def edit
    @acesso = Acesso.find(params[:id])
  end

  # POST /acessos
  # POST /acessos.xml
  def create
    @acesso = Acesso.new(params[:acesso])

    respond_to do |format|
      if @acesso.save
        flash[:notice] = 'Acesso was successfully created.'
        format.html { redirect_to(@acesso) }
        format.xml  { render :xml => @acesso, :status => :created, :location => @acesso }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @acesso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /acessos/1
  # PUT /acessos/1.xml
  def update
    @acesso = Acesso.find(params[:id])

    respond_to do |format|
      if @acesso.update_attributes(params[:acesso])
        flash[:notice] = 'Acesso was successfully updated.'
        format.html { redirect_to(@acesso) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @acesso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /acessos/1
  # DELETE /acessos/1.xml
  def destroy
    @acesso = Acesso.find(params[:id])
    @acesso.destroy

    respond_to do |format|
      format.html { redirect_to(acessos_url) }
      format.xml  { head :ok }
    end
  end
end
