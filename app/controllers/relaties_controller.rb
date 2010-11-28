class RelatiesController < ApplicationController
  # GET /relaties
  # GET /relaties.xml
  def index
    @relaties = Relatie.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @relaties }
    end
  end

  # GET /relaties/1
  # GET /relaties/1.xml
  def show
    @relaty = Relatie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @relaty }
    end
  end

  # GET /relaties/new
  # GET /relaties/new.xml
  def new
    @relaty = Relatie.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @relaty }
    end
  end

  # GET /relaties/1/edit
  def edit
    @relaty = Relatie.find(params[:id])
  end

  # POST /relaties
  # POST /relaties.xml
  def create
    @relaty = Relatie.new(params[:relaty])

    respond_to do |format|
      if @relaty.save
        format.html { redirect_to(@relaty, :notice => 'Relatie was successfully created.') }
        format.xml  { render :xml => @relaty, :status => :created, :location => @relaty }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @relaty.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /relaties/1
  # PUT /relaties/1.xml
  def update
    @relaty = Relatie.find(params[:id])

    respond_to do |format|
      if @relaty.update_attributes(params[:relaty])
        format.html { redirect_to(@relaty, :notice => 'Relatie was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @relaty.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /relaties/1
  # DELETE /relaties/1.xml
  def destroy
    @relaty = Relatie.find(params[:id])
    @relaty.destroy

    respond_to do |format|
      format.html { redirect_to(relaties_url) }
      format.xml  { head :ok }
    end
  end
end
