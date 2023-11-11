class AssemblyPartsController < ApplicationController
  before_action :set_assembly

  def create
    @part = Part.find(params[:part_id])
    @assembly.parts << @part unless @assembly.parts.include?(@part)
    redirect_to @assembly, notice: 'Part added to assembly.'
  end

  def destroy
    @part = @assembly.parts.find(params[:id])
    @assembly.parts.destroy(@part)
    redirect_to @assembly, notice: 'Part removed from assembly.'
  end

  private

  def set_assembly
    @assembly = Assembly.find(params[:assembly_id])
  end
end
