class ReservationsController < ApplicationController
before_action :set_reservation, only: [:show, :edit, :update, :destroy]
before_action :set_treehouse

def index
  @reservations = Reservation.all
end

def show
end

def new
end

def edit
end

def create
  @reservation = Reservation.new(reservation_params)
  @reservation.user = current_user
  @reservation.tree_house = @tree_house

  respond_to do |f|
    if @reservation.save
      f.html { redirect_to @tree_house, notice: 'Reservation was successfully created. :)' }
    else
      f.html { redirect_to @tree_house, error: 'Reservation could not be created. :(' }
    end
  end
end

private
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_treehouse
    @tree_house = TreeHouse.find(params[:tree_house_id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
