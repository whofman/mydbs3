class RegdbsController < ApplicationController
  # GET /regdbs
  # GET /regdbs.xml
  def index
    @search   = Regdb.search(params[:search])
    @search.meta_sort ||= 'Naam.asc' 
    @regdbs   = @search.all.paginate(:page => params[:page], :per_page => 18)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @regdbs }
    end
  end

  # GET /regdbs/1
  # GET /regdbs/1.xml
  def show
    @regdb = Regdb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @regdb }
    end
  end

  # GET /regdbs/new
  # GET /regdbs/new.xml
  def new
    @regdb = Regdb.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @regdb }
    end
  end

  # GET /regdbs/1/edit
  def edit
    @regdb = Regdb.find(params[:id])
  end

  # POST /regdbs
  # POST /regdbs.xml
  def create
    @regdb = Regdb.new(params[:regdb])

    respond_to do |format|
      if @regdb.save
        format.html { redirect_to(@regdb, :notice => 'Regdb was successfully created.') }
        format.xml  { render :xml => @regdb, :status => :created, :location => @regdb }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @regdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /regdbs/1
  # PUT /regdbs/1.xml
  def update
    @regdb = Regdb.find(params[:id])

    respond_to do |format|
      if @regdb.update_attributes(params[:regdb])
        format.html { redirect_to(@regdb, :notice => 'Regdb was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @regdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /regdbs/1
  # DELETE /regdbs/1.xml
  def destroy
    @regdb = Regdb.find(params[:id])
    @regdb.destroy

    respond_to do |format|
      format.html { redirect_to(regdbs_url) }
      format.xml  { head :ok }
    end
  end
end
