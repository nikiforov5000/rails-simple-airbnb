class FlatsController < ApplicationController
  before_action :set_flat, only: [ :show ]

  def index
    @flats = Flat.all
  end

  def show
    @flat
  end

  private

  def flat_params
    params.require(:flat).permit()
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
