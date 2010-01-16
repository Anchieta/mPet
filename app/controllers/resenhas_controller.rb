class ResenhasController < ApplicationController
  # GET /resenhas
  # GET /resenhas.xml
  def index
    @resenhas = Resenha.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resenhas }
    end
  end

  # GET /resenhas/1
  # GET /resenhas/1.xml
  def show
    @resenha = Resenha.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @resenha }
    end
  end

  # GET /resenhas/new
  # GET /resenhas/new.xml
  def new
    @resenha = Resenha.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @resenha }
    end
  end

  # GET /resenhas/1/edit
  def edit
    @resenha = Resenha.find(params[:id])
  end

  # POST /resenhas
  # POST /resenhas.xml
  def create
    @resenha = Resenha.new(params[:resenha])

    respond_to do |format|
      if @resenha.save
        flash[:notice] = 'Resenha was successfully created.'
        format.html { redirect_to(@resenha) }
        format.xml  { render :xml => @resenha, :status => :created, :location => @resenha }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @resenha.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resenhas/1
  # PUT /resenhas/1.xml
  def update
    @resenha = Resenha.find(params[:id])

    respond_to do |format|
      if @resenha.update_attributes(params[:resenha])
        flash[:notice] = 'Resenha was successfully updated.'
        format.html { redirect_to(@resenha) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @resenha.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resenhas/1
  # DELETE /resenhas/1.xml
  def destroy
    @resenha = Resenha.find(params[:id])
    @resenha.destroy

    respond_to do |format|
      format.html { redirect_to(resenhas_url) }
      format.xml  { head :ok }
    end
  end
end
