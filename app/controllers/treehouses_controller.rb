class TreehousesController < ApplicationController
<<<<<<< HEAD

  def show
    @treehouse = Treehouse.find( params[:id])
  end
||||||| merged common ancestors
=======

  def index
    @treehouses = Treehouse.all
  end
  
>>>>>>> 0af2b748002092da7387c6b08aff530c04aaba01
end
