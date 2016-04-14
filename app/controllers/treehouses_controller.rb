class TreehousesController < ApplicationController

  def index
    @treehouses = TreeHouse.all
  end

  def show
    @treehouse = TreeHouse.find(params[:id])
    render 'layouts/layout-other'
  end

  def contact
    render 'layouts/layout-contact'
  end
end
