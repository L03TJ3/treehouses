class TreehousesController < ApplicationController

  def index
    @treehouses = TreeHouse.all
  end

  def show
    @treehouse = TreeHouse.find{ ( params[:id])}
  end
end
