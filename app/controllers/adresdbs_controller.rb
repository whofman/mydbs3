class AdresdbsController < ApplicationController
  # GET /adresdbs
  # GET /adresdbs.xml
  def index
#    @adresdbs = Adresdb.all
    @search     = Adresdb.search(params[:search])
    @search.meta_sort ||= 'Naam.asc' 
    @adresdbs   = @search.all.paginate(:page => params[:page], :per_page => 21)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adresdbs }
    end
  end

  # GET /adresdbs/1
  # GET /adresdbs/1.xml
  def show
    @adresdb = Adresdb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adresdb }
    end
  end

  # GET /adresdbs/new
  # GET /adresdbs/new.xml
  def new
    @adresdb = Adresdb.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adresdb }
    end
  end

  # GET /adresdbs/1/edit
  def edit
    @adresdb = Adresdb.find(params[:id])
  end

  # POST /adresdbs
  # POST /adresdbs.xml
  def create
    @adresdb = Adresdb.new(params[:adresdb])

    respond_to do |format|
      if @adresdb.save
        format.html { redirect_to(@adresdb, :notice => 'Adresdb was successfully created.') }
        format.xml  { render :xml => @adresdb, :status => :created, :location => @adresdb }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adresdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adresdbs/1
  # PUT /adresdbs/1.xml
  def update
    @adresdb = Adresdb.find(params[:id])

    respond_to do |format|
      if @adresdb.update_attributes(params[:adresdb])
        format.html { redirect_to(@adresdb, :notice => 'Adresdb was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adresdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adresdbs/1
  # DELETE /adresdbs/1.xml
  def destroy
    @adresdb = Adresdb.find(params[:id])
    @adresdb.destroy

    respond_to do |format|
      format.html { redirect_to(adresdbs_url) }
      format.xml  { head :ok }
    end
  end
end
