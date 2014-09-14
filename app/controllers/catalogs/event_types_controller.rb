class Catalogs::EventTypesController < ApplicationController
  before_action :set_catalogs_event_type, only: [:show, :edit, :update, :destroy]

  # GET /catalogs/event_types
  # GET /catalogs/event_types.json
  def index
    @catalogs_event_types = Catalogs::EventType.all
  end

  # GET /catalogs/event_types/1
  # GET /catalogs/event_types/1.json
  def show
  end

  # GET /catalogs/event_types/new
  def new
    @catalogs_event_type = Catalogs::EventType.new
  end

  # GET /catalogs/event_types/1/edit
  def edit
  end

  # POST /catalogs/event_types
  # POST /catalogs/event_types.json
  def create
    @catalogs_event_type = Catalogs::EventType.new(catalogs_event_type_params)

    respond_to do |format|
      if @catalogs_event_type.save
        format.html { redirect_to @catalogs_event_type, notice: 'Event type was successfully created.' }
        format.json { render :show, status: :created, location: @catalogs_event_type }
      else
        format.html { render :new }
        format.json { render json: @catalogs_event_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/event_types/1
  # PATCH/PUT /catalogs/event_types/1.json
  def update
    respond_to do |format|
      if @catalogs_event_type.update(catalogs_event_type_params)
        format.html { redirect_to @catalogs_event_type, notice: 'Event type was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogs_event_type }
      else
        format.html { render :edit }
        format.json { render json: @catalogs_event_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/event_types/1
  # DELETE /catalogs/event_types/1.json
  def destroy
    @catalogs_event_type.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_event_types_url, notice: 'Event type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_event_type
      @catalogs_event_type = Catalogs::EventType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_event_type_params
      params.require(:catalogs_event_type).permit(:name)
    end
end
