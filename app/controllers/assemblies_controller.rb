class AssembliesController < ApplicationController
  before_action :set_assembly, only: %i[ show edit update destroy ]

  # GET /assemblies or /assemblies.json
  def index
    @assemblies = build_query
  end

  # GET /assemblies/1 or /assemblies/1.json
  def show
  end

  # GET /assemblies/new
  def new
    @assembly = Assembly.new
    @part = Part.new
  end

  # GET /assemblies/1/edit
  def edit
  end

  # POST /assemblies or /assemblies.json
  def create
    @assembly = Assembly.new(assembly_params)

    respond_to do |format|
      if @assembly.save
        format.html { redirect_to assembly_url(@assembly), notice: t('controllers.assemblies.success') }
        format.json { render :show, status: :created, location: @assembly }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assembly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assemblies/1 or /assemblies/1.json
  def update
    respond_to do |format|
      if @assembly.update(assembly_params)
        format.html { redirect_to assembly_url(@assembly), notice: t('controllers.assemblies.update') }
        format.json { render :show, status: :ok, location: @assembly }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assembly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assemblies/1 or /assemblies/1.json
  def destroy
    @assembly.destroy

    respond_to do |format|
      format.html { redirect_to assemblies_url, notice: t('controllers.assemblies.destroy') }
      format.json { head :no_content }
    end
  end

  private

  def build_query
    @assemblies = if params[:query].present?
                    Assembly.search_by_name(params[:query])
                  else
                    Assembly.all
                  end
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_assembly
      @assembly = Assembly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assembly_params
      params.require(:assembly).permit(:name, :book_id, part_ids: [])
    end
end
