class TreeHousesController < ApplicationController
  before_action :set_treehouse, only: [:show, :contact]

  def index
    @treehouses = TreeHouse.all
  end

  def show
    @treehouse = TreeHouse.find(params[:id])
    @reservation = Reservation.new
    render layout: 'layout-other'
  end

  def contact
    render layout: 'layout-contact'
  end

  private

    def set_treehouse
      @treehouse = TreeHouse.find(params[:id])
    end
end
