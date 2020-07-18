class EstablosController < ApplicationController
  def index
    @establos = Establo.order(:name)
  end

  def show
    @establo = Establo.find(params[:id])
  end
end
