class MicrosController < ApplicationController
  layout "adm"
  # GET /micros
  # GET /micros.xml
  def index
    @micros = Micro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @micros }
    end
  end

  # GET /micros/1
  # GET /micros/1.xml
  def show
    @micro = Micro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @micro }
    end
  end

  # GET /micros/new
  # GET /micros/new.xml
  def new
    @micro = Micro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @micro }
    end
  end

  # GET /micros/1/edit
  def edit
    @micro = Micro.find(params[:id])
    #session[:micro] = @micro
    #format.html { render :action => "/macros/#{@micro.macro_id}" }
    render :partial=>"/micros/new_micro", :locals=>{:micro=>@micro}
  end

  # POST /micros
  # POST /micros.xml
  def create
    #@micro = Micro.new(params[:micro])
    @micro = Micro.create!(params[:micro])

    respond_to do |format|
      format.js
#      if @micro.save
#        flash[:notice] = %W'Micro was successfully created.'
#        #format.html { redirect_to(@micro) }
#        #format.xml  { render :xml => @micro, :status => :created, :location => @micro }
#        format.js do
#          render :update do |page|
#            page.insert_html :bottom, 'tbl_micros', :partial=>'/micros/lista_micros', :locals=>{ :micros=>Micro.find(:all) }
#            #page.visual_effect :highlight, "micro_#{@micro.id}"
#          end
#        end
#      else
#        #w.urubatan.com.br/um-exemplo-de-chat-com-ruby-on-rails-e-juggernaut-utilizando-ajax-push/
#        #ttp://blog.maxaller.name/2008/03/simple-easy-ajax-form-validation-in-rails/
#        format.html { render :action => "new" }
#        format.xml  { render :xml => @micros.errors, :status => :unprocessable_entity }
#
#
#      end
    end
  end

  # PUT /micros/1
  # PUT /micros/1.xml
  def update
    @micro = Micro.find(params[:id])

    respond_to do |format|
      if @micro.update_attributes(params[:micro])
        flash[:notice] = 'Micro was successfully updated.'
        #format.html { redirect_to(@micro) } ///Esse é o formato original
        format.html { redirect_to(:controller=>"macros", :action=>"show", :id=>"1") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @micro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /micros/1
  # DELETE /micros/1.xml
  def destroy
    @micro = Micro.find(params[:id])
    @micro.destroy

    respond_to do |format|
      format.html { redirect_to(micros_url) }
      format.xml  { head :ok }
       format.js do
          render :update do |page|
             page.visual_effect :fade, "micro_#{params[:id]}"
          end
       end
    end
  end
end
