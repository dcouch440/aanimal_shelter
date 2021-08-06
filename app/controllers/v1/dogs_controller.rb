class V1::DogsController < ApplicationController

  before_action :find_dog, only: %i[show update destroy]

  def index
    serialize(Dog.all)
  end

  def show
    serialize(@dog)
  end

  def create
    dog = Dog.create!(dog_params)
    json_response(dog, :created)
  end

  def update
    @dog.update!(dog_params)
    json_response(@dog, :created)
  end

  def destroy
    @dog.destroy!()
  end

  private def serialize(dogs, status = :ok)
    dogs_data = DogSerializer.new(dogs)
    send_data = dogs_data.serialized_dogs_with_statistics()
    json_response(send_data, status)
  end

  private def find_dog
    @dog = Dog.find(params[:id])
  end

  private def dog_params
    params.permit %i[name breed age gender coat_length size]
  end

end