class DatabasesController < ApplicationController
  # GET /databases
  # GET /databases.xml
  def index
#    @databases = Database.all
    @databases = Database.all.paginate(:page => params[:page], :per_page => 20 )

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @databases }
    end
  end

  # GET /databases/1
  # GET /databases/1.xml
  def show
    @database = Database.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @database }
    end
  end

  # GET /databases/new
  # GET /databases/new.xml
  def new
    @database = Database.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @database }
    end
  end

  # GET /databases/1/edit
  def edit
    @database = Database.find(params[:id])
  end

  # POST /databases
  # POST /databases.xml
  def create
    @database = Database.new(params[:database])

    respond_to do |format|
      if @database.save
        format.html { redirect_to(@database, :notice => 'Database was successfully created.') }
        format.xml  { render :xml => @database, :status => :created, :location => @database }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @database.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /databases/1
  # PUT /databases/1.xml
  def update
    @database = Database.find(params[:id])

    respond_to do |format|
      if @database.update_attributes(params[:database])
        format.html { redirect_to(@database, :notice => 'Database was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @database.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /databases/1
  # DELETE /databases/1.xml
  def destroy
    @database = Database.find(params[:id])
    @database.destroy

    respond_to do |format|
      format.html { redirect_to(databases_url) }
      format.xml  { head :ok }
    end
  end
end
