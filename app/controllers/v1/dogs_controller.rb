class V1::DogsController < ApplicationController

  def index
    serialize(Dog.all)
  end

  def show
    dog = Dog.find(params[:id])
    serialize(dog)
  end

  def create
    dog = Dog.create!(dog_params)
    json_response(dog, :created)
  end

  def update
    dog = Dog.find(params[:id])
    dog.update!(dog_params)
    json_response(dog, :created)
  end

  def destroy
    Dog.find(params[:id]).destroy!()
  end

  private def serialize(dogs, status = :ok)
    dogs_data = DogSerializer.new(dogs)
    send_data = dogs_data.serialized_dogs_with_statistics()
    json_response(send_data, status)
  end

  private def dog_params
    params.permit(:name, :breed, :age, :gender, :coat_length, :size)
  end

end