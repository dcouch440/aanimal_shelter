class V1::CatsController < ApplicationController

  def index
    serialize(Cat.all)
  end

  def show
    cat = Cat.find(params[:id])
    serialize(cat)
  end

  def create
    cat = Cat.create!(cat_params)
    json_response(cat, :created)
  end

  def update
    cat = Cat.find(params[:id])
    cat.update!(cat_params)
    json_response(cat, :created)
  end

  def destroy
    Cat.find(params[:id]).destroy!()
  end

  private def serialize(cats, status = :ok)
    cats_data = CatSerializer.new(cats)
    send_data = cats_data.serialized_cats_with_statistics()
    json_response(send_data, status)
  end

  private def cat_params
    params.permit(:name, :breed, :age, :gender, :coat_length, :size)
  end

end