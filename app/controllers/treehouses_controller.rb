class TreehousesController < ApplicationController

  def index
    @treehouses = TreeHouse.all
  end

  def show
    @treehouse = TreeHouse.find(params[:id])
    render :layout => 'show'
  end
end
