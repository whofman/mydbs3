class SoftdbsController < ApplicationController
  # GET /softdbs
  # GET /softdbs.xml
  def index
#    @softdbs = Softdb.all
    @search     = Softdb.search(params[:search])
    @search.meta_sort ||= 'fdate.desc' 
    @softdbs   = @search.all.paginate(:page => params[:page], :per_page => 21)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @softdbs }
    end
  end

  # GET /softdbs/1
  # GET /softdbs/1.xml
  def show
    @softdb = Softdb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @softdb }
    end
  end

  # GET /softdbs/new
  # GET /softdbs/new.xml
  def new
    @softdb = Softdb.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @softdb }
    end
  end

  # GET /softdbs/1/edit
  def edit
    @softdb = Softdb.find(params[:id])
  end

  # POST /softdbs
  # POST /softdbs.xml
  def create
    @softdb = Softdb.new(params[:softdb])

    respond_to do |format|
      if @softdb.save
        format.html { redirect_to(@softdb, :notice => 'Softdb was successfully created.') }
        format.xml  { render :xml => @softdb, :status => :created, :location => @softdb }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @softdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /softdbs/1
  # PUT /softdbs/1.xml
  def update
    @softdb = Softdb.find(params[:id])

    respond_to do |format|
      if @softdb.update_attributes(params[:softdb])
        format.html { redirect_to(@softdb, :notice => 'Softdb was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @softdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /softdbs/1
  # DELETE /softdbs/1.xml
  def destroy
    @softdb = Softdb.find(params[:id])
    @softdb.destroy

    respond_to do |format|
      format.html { redirect_to(softdbs_url) }
      format.xml  { head :ok }
    end
  end
end
