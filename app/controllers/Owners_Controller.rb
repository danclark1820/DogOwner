class OwnersController < ApplicationController

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to owner_path(@owner)
      flash[:notice] = "Succesfully Registered"
    else
      redirect_to new_owner_path(@owner)
      flash[:notice] = "Please fill out required fields."
    end
  end

  def show
  end

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email, :dog_name)
  end
end
