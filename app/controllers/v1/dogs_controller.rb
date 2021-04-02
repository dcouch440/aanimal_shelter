class V1::DogsController < ApplicationController

  def index
    send_response(Dog.all)
  end

  def create
    dog = Dog.create!(dog_params)
    send_response(dog, :created)
  end

  def show
    dog = Dog.find(params[:id])
    send_response(dog)
  end

  def update
    dog = Dog.find(params[:id])
    dog.update!(dog_params)
    send_response(dog, :created)
  end

  def destroy
    Dog.find(params[:id]).destroy!()
  end

  private def send_response(dogs, status = :ok)
    dogs_data = DogSerializer.new(dogs)
    send_data = dogs_data.serialized_dogs_with_statistics()
    render json: send_data, status: status
  end

  private def dog_params
    params.permit(:name, :breed, :age, :gender, :coat_length, :size)
  end

end