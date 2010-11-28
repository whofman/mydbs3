class DocdbsController < ApplicationController
  # GET /docdbs
  # GET /docdbs.xml
  def index
    @search     = Docdb.search(params[:search])
    @search.meta_sort ||= 'fdate.desc' 
    @docdbs   = @search.all.paginate(:page => params[:page], :per_page => 21)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @docdbs }
    end
  end

  # GET /docdbs/1
  # GET /docdbs/1.xml
  def show
    @docdb = Docdb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @docdb }
    end
  end

  # GET /docdbs/new
  # GET /docdbs/new.xml
  def new
    @docdb = Docdb.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @docdb }
    end
  end

  # GET /docdbs/1/edit
  def edit
    @docdb = Docdb.find(params[:id])
  end

  # POST /docdbs
  # POST /docdbs.xml
  def create
    @docdb = Docdb.new(params[:docdb])

    respond_to do |format|
      if @docdb.save
        format.html { redirect_to(@docdb, :notice => 'Docdb was successfully created.') }
        format.xml  { render :xml => @docdb, :status => :created, :location => @docdb }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @docdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /docdbs/1
  # PUT /docdbs/1.xml
  def update
    @docdb = Docdb.find(params[:id])

    respond_to do |format|
      if @docdb.update_attributes(params[:docdb])
        format.html { redirect_to(@docdb, :notice => 'Docdb was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @docdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /docdbs/1
  # DELETE /docdbs/1.xml
  def destroy
    @docdb = Docdb.find(params[:id])
    @docdb.destroy

    respond_to do |format|
      format.html { redirect_to(docdbs_url) }
      format.xml  { head :ok }
    end
  end
end
