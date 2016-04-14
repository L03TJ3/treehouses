class TreehousesController < ApplicationController

  def index
    @treehouses = TreeHouse.all
  end

  def show
    @treehouse = TreeHouse.find(params[:id])
    render layout: 'layout-other'
  end

  def contact
    render layout: 'layout-contact'
  end
end
