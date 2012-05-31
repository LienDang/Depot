class UssrsController < ApplicationController
  # GET /ussrs
  # GET /ussrs.json
  def index
    @ussrs = Ussr.order(:name)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ussrs }
    end
  end

  # GET /ussrs/1
  # GET /ussrs/1.json
  def show
    @ussr = Ussr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ussr }
    end
  end

  # GET /ussrs/new
  # GET /ussrs/new.json
  def new
    @ussr = Ussr.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ussr }
    end
  end

  # GET /ussrs/1/edit
  def edit
    @ussr = Ussr.find(params[:id])
  end

  # POST /ussrs
  # POST /ussrs.json
  def create
    @ussr = Ussr.new(params[:ussr])

    respond_to do |format|
      if @ussr.save
        format.html { redirect_to ussrs_url, notice: 'User #{@ussr.name} was successfully created.' }
        format.json { render json: @ussr, status: :created, location: @ussr }
      else
        format.html { render action: "new" }
        format.json { render json: @ussr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ussrs/1
  # PUT /ussrs/1.json
  def update
    @ussr = Ussr.find(params[:id])

    respond_to do |format|
      if @ussr.update_attributes(params[:ussr])
        format.html { redirect_to ussrs_url, notice: 'User #{@ussr.name} was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ussr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ussrs/1
  # DELETE /ussrs/1.json
  def destroy
    @ussr = Ussr.find(params[:id])
    @ussr.destroy

    respond_to do |format|
      format.html { redirect_to ussrs_url }
      format.json { head :no_content }
    end
  end
end
