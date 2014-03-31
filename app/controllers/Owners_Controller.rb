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
    @owner = Owner.find(params[:id])
    if flash[notice] = "Succesfully Registered"
      flash[notice] = "Succesfully Registered"
      redirect_to owners_path
    end
  end

  def index
    @owners = Owner.all
    if flash[:notice] = "Succesfully Registered"
      flash[:notice] = "Succesfully Registered"
    end
  end

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email, :dog_name)
  end
end
