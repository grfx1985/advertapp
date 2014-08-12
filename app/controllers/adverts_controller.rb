class AdvertsController < ApplicationController
  before_action :authenticate_admin! , only: [:new ,:edit, :update, :destroy]
  before_action :set_advert, only: [:show, :edit, :update, :destroy]
  
def active 
@adverts = Advert.active.paginate(:page => params[:page], :per_page => 5)
render  :index 
end
def inactive 
@adverts = Advert.inactive.paginate(:page => params[:page], :per_page => 5)
render  :index 
end
def job_hunt 
@adverts = Advert.job_hunt.paginate(:page => params[:page], :per_page => 5)
render  :index 
end
def buy 
@adverts = Advert.buy.paginate(:page => params[:page], :per_page => 5)
render  :index 
end
def sell 
@adverts = Advert.sell.paginate(:page => params[:page], :per_page => 5)
render  :index 
end
def hire 
@adverts = Advert.hire.paginate(:page => params[:page], :per_page => 5)
render  :index 
end
def exchange 
@adverts = Advert.exchange.paginate(:page => params[:page], :per_page => 5)
render  :index 
end


  # GET /adverts
  # GET /adverts.json
  def index
    @adverts = Advert.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /adverts/1
  # GET /adverts/1.json
  def show
  end

  # GET /adverts/new
  def new
    @advert = Advert.new
  end

  # GET /adverts/1/edit
  def edit
  end

  # POST /adverts
  # POST /adverts.json
  def create
    @advert = current_admin.adverts.create(advert_params)

    respond_to do |format|
      if @advert.save
        format.html { redirect_to @advert, notice: 'Advert was successfully created.' }
        format.json { render :show, status: :created, location: @advert }
      else
        format.html { render :new }
        format.json { render json: @advert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adverts/1
  # PATCH/PUT /adverts/1.json
  def update
    respond_to do |format|
      if @advert.update(advert_params)
        format.html { redirect_to @advert, notice: 'Advert was successfully updated.' }
        format.json { render :show, status: :ok, location: @advert }
      else
        format.html { render :edit }
        format.json { render json: @advert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adverts/1
  # DELETE /adverts/1.json
  def destroy
    @advert.destroy
    respond_to do |format|
      format.html { redirect_to adverts_url, notice: 'Advert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advert
      @advert = Advert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advert_params
      params.require(:advert).permit(:job_hunt,:hire,:buy,:sell,:exchange,:title, :description, :name, :surname, :email, :mobile, :date, :active, :address, :image, comments_attributes: [:name,:content,:advert_id,:_destroy])
    end
end
