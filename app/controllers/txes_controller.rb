class TxesController < ApplicationController
  # GET /txes
  # GET /txes.xml
  def index
    @search  = Tx.search(params[:search])
    @search.meta_sort ||= 'Datum.desc' 
    @txes    = @search.all.paginate(:page => params[:page], :per_page => 12)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @txes }
    end
  end

  # GET /txes/1
  # GET /txes/1.xml
  def show
    @tx = Tx.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tx }
    end
  end

  # GET /txes/new
  # GET /txes/new.xml
  def new
    @tx = Tx.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tx }
    end
  end

  # GET /txes/1/edit
  def edit
    @tx = Tx.find(params[:id])
  end

  # POST /txes
  # POST /txes.xml
  def create
    @tx = Tx.new(params[:tx])

    respond_to do |format|
      if @tx.save
        format.html { redirect_to(@tx, :notice => 'Tx was successfully created.') }
        format.xml  { render :xml => @tx, :status => :created, :location => @tx }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tx.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /txes/1
  # PUT /txes/1.xml
  def update
    @tx = Tx.find(params[:id])

    respond_to do |format|
      if @tx.update_attributes(params[:tx])
        format.html { redirect_to(@tx, :notice => 'Tx was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tx.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /txes/1
  # DELETE /txes/1.xml
  def destroy
    @tx = Tx.find(params[:id])
    @tx.destroy

    respond_to do |format|
      format.html { redirect_to(txes_url) }
      format.xml  { head :ok }
    end
  end
end
