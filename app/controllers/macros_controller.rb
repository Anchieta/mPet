class MacrosController < ApplicationController
  layout "adm"
  # GET /macros
  # GET /macros.xml
  def index
    @macros = Macro.find(:all, :order=> "ordem")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @macros }
    end
  end

  # GET /macros/1
  # GET /macros/1.xml
  def show
    @macro = Macro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @macro }
    end
  end

  # GET /macros/new
  # GET /macros/new.xml
  def new
    @macro = Macro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @macro }
    end
  end

  # GET /macros/1/edit
  def edit
    @macro = Macro.find(params[:id])
  end

  # POST /macros
  # POST /macros.xml
  def create
    @macro = Macro.new(params[:macro])

    respond_to do |format|
      if @macro.save
        flash[:notice] = 'Macro was successfully created.'
        #@macros = Macro.find(:all, :order=> "ordem")
        #format.html { render :action => "index" }
        format.html { redirect_to(@macro) }
        format.xml  { render :xml => @macro, :status => :created, :location => @macro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @macro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /macros/1
  # PUT /macros/1.xml
  def update
    @macro = Macro.find(params[:id])

    respond_to do |format|
      if @macro.update_attributes(params[:macro])
        #flash[:notice] = 'Macro was successfully updated.'
        @macros = Macro.find(:all, :order=> "ordem")
        format.html { render :action => "index" }
        format.html { redirect_to(@macro) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @macro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /macros/1
  # DELETE /macros/1.xml
  def destroy
    @macro = Macro.find(params[:id])
    @macro.destroy

    respond_to do |format|
      format.html { redirect_to(macros_url) }
      format.xml  { head :ok }
    end
  end
end
