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
    respond_to do |format|
      format.html {render :partial=>"/micros/new_micro", :locals=>{:macro=>@micro.macro}}
      format.js do
        render :update do |page|
          page.replace_html :micro, :partial => "edit_micro"
        end
      end
    end
  end

  # POST /micros
  # POST /micros.xml
  def create
    @micro = Micro.new(params[:micro])
    if @micro.save
      respond_to do |format|
        flash[:notice] = 'Micro was successfully created.'
        format.js
      end
    else
      respond_to do |format|
        format.js do
          render :update do |page|
            page.replace_html :micro, :partial => '/micros/new_micro', :locals => {:macro => Macro.find(params[:micro][:macro_id])}
            page.replace_html 'error_nome', @micro.errors.on(:nome)
            page.replace_html 'error_nomeseo', @micro.errors.on(:nomeseo)
            page.replace_html 'error_ordem', @micro.errors.on(:ordem)
          end
        end
      end
    end
  end

  # PUT /micros/1
  # PUT /micros/1.xml
  def update
    @micro = Micro.find(params[:id])

    respond_to do |format|
      if @micro.update_attributes(params[:micro])
        format.html { redirect_to(:controller=>"macros", :action=>"show", :id=>"1") }
        format.xml  { head :ok }
        format.js do
          render :update do |page|
            page.replace_html :"ordem_micro#{@micro.id}", @micro.ordem
            page.replace_html :micro, :partial => '/micros/new_micro', :locals => {:macro => @micro.macro}

            page[:micro_nome].clear
            page[:micro_nomeseo].clear
            page[:micro_visivel].checked = false
            page[:micro_ordem].clear
          end
        end
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @micro.errors, :status => :unprocessable_entity }
        format.js do
          render :update do |page|
            page.replace_html 'error_nome', @micro.errors.on(:nome)
            page.replace_html 'error_nomeseo', @micro.errors.on(:nomeseo)
            page.replace_html 'error_ordem', @micro.errors.on(:ordem)
          end
        end
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
