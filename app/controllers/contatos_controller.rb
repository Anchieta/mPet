class ContatosController < ApplicationController
  # GET /contatos
  # GET /contatos.xml
  def index
    @contatos = Contato.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contatos }
    end
  end

  # GET /contatos/1
  # GET /contatos/1.xml
  def show
    @contato = Contato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contato }
    end
  end

  # GET /contatos/new
  # GET /contatos/new.xml
  def new
    @contato = Contato.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contato }
    end
  end

  # GET /contatos/1/edit
  def edit
    @contato = Contato.find(params[:id])
  end

  # POST /contatos
  # POST /contatos.xml
  def create
    @contato = Contato.new(params[:contato])

    respond_to do |format|
      if @contato.save
        flash[:notice] = 'Contato was successfully created.'
        format.html { redirect_to(@contato) }
        format.xml  { render :xml => @contato, :status => :created, :location => @contato }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contato.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contatos/1
  # PUT /contatos/1.xml
  def update
    @contato = Contato.find(params[:id])

    respond_to do |format|
      if @contato.update_attributes(params[:contato])
        flash[:notice] = 'Contato was successfully updated.'
        format.html { redirect_to(@contato) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contato.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contatos/1
  # DELETE /contatos/1.xml
  def destroy
    @contato = Contato.find(params[:id])
    @contato.destroy

    respond_to do |format|
      format.html { redirect_to(contatos_url) }
      format.xml  { head :ok }
    end
  end
end
