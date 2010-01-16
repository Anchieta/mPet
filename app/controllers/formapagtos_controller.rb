class FormapagtosController < ApplicationController
  # GET /formapagtos
  # GET /formapagtos.xml
  def index
    @formapagtos = Formapagto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @formapagtos }
    end
  end

  # GET /formapagtos/1
  # GET /formapagtos/1.xml
  def show
    @formapagto = Formapagto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @formapagto }
    end
  end

  # GET /formapagtos/new
  # GET /formapagtos/new.xml
  def new
    @formapagto = Formapagto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @formapagto }
    end
  end

  # GET /formapagtos/1/edit
  def edit
    @formapagto = Formapagto.find(params[:id])
  end

  # POST /formapagtos
  # POST /formapagtos.xml
  def create
    @formapagto = Formapagto.new(params[:formapagto])

    respond_to do |format|
      if @formapagto.save
        flash[:notice] = 'Formapagto was successfully created.'
        format.html { redirect_to(@formapagto) }
        format.xml  { render :xml => @formapagto, :status => :created, :location => @formapagto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @formapagto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /formapagtos/1
  # PUT /formapagtos/1.xml
  def update
    @formapagto = Formapagto.find(params[:id])

    respond_to do |format|
      if @formapagto.update_attributes(params[:formapagto])
        flash[:notice] = 'Formapagto was successfully updated.'
        format.html { redirect_to(@formapagto) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @formapagto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /formapagtos/1
  # DELETE /formapagtos/1.xml
  def destroy
    @formapagto = Formapagto.find(params[:id])
    @formapagto.destroy

    respond_to do |format|
      format.html { redirect_to(formapagtos_url) }
      format.xml  { head :ok }
    end
  end
end
