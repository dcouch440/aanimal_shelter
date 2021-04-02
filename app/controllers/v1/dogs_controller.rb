class V1::DogsController < ApplicationController

  def index
    gen_response(Dog.all)
  end

  def create
    dog = Dog.create!(dog_params)
    gen_response(dog, :created)
  end

  def show
    dog = Dog.find(params[:id])
    gen_response(dog)
  end

  def update
    dog = Dog.find(params[:id])
    dog.update!(dog_params)
    gen_response(dog, :created)
  end

  def destroy
    Dog.find(params[:id]).destroy!
  end

  private def gen_response(dogs, status = :ok)
    dogs_data = DogSerializer.new(dogs)
    send_data = dogs_data.serialized_dogs_with_statistics()
    render json: send_data, status: status
  end

  private def dog_params
    params.permit(:name, :breed, :age, :gender, :coat_length, :size)
  end

end