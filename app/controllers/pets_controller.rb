class PetsController < ApplicationController
  before_action :set_pet, except: %i[index new create]
  before_action :get_kinds, except: %i[index show]

  def index
    @pets = Pet.all
  end

  def show; end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new pet_params

    if @pet.save
      redirect_to pets_path, notice: 'Pet created successfully.'
    else
      flash.now[:alert] = @pet.errors.full_messages
      render :new
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :birth_date, :breed, :kind)
  end

  def set_pet
    @pet = Pet.find params[:id]
  end

  def get_kinds
    @kinds = Pet::KINDS
  end
end
