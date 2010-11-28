class ArtdbsController < ApplicationController
  # GET /artdbs
  # GET /artdbs.xml
  def index
    @search     = Artdb.search(params[:search])
    @search.meta_sort ||= 'jaargang.desc' 
    @artdbs   = @search.all.paginate(:page => params[:page], :per_page => 21)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @artdbs }
    end
  end

  # GET /artdbs/1
  # GET /artdbs/1.xml
  def show
    @artdb = Artdb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @artdb }
    end
  end

  # GET /artdbs/new
  # GET /artdbs/new.xml
  def new
    @artdb = Artdb.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @artdb }
    end
  end

  # GET /artdbs/1/edit
  def edit
    @artdb = Artdb.find(params[:id])
  end

  # POST /artdbs
  # POST /artdbs.xml
  def create
    @artdb = Artdb.new(params[:artdb])

    respond_to do |format|
      if @artdb.save
        format.html { redirect_to(@artdb, :notice => 'Artdb was successfully created.') }
        format.xml  { render :xml => @artdb, :status => :created, :location => @artdb }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @artdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /artdbs/1
  # PUT /artdbs/1.xml
  def update
    @artdb = Artdb.find(params[:id])

    respond_to do |format|
      if @artdb.update_attributes(params[:artdb])
        format.html { redirect_to(@artdb, :notice => 'Artdb was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @artdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /artdbs/1
  # DELETE /artdbs/1.xml
  def destroy
    @artdb = Artdb.find(params[:id])
    @artdb.destroy

    respond_to do |format|
      format.html { redirect_to(artdbs_url) }
      format.xml  { head :ok }
    end
  end
end
