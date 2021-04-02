class V1::CatsController < ApplicationController

  def index
    send_response(Cat.all)
  end

  def create
    cat = Cat.create!(cat_params)
    send_response(cat, :created)
  end

  def show
    cat = Cat.find(params[:id])
    send_response(cat)
  end

  def update
    cat = Cat.find(params[:id])
    cat.update!(cat_params)
    send_response(cat, :created)
  end

  def destroy
    Cat.find(params[:id]).destroy!
  end

  def send_response(cats, status = :ok)
    cats_data = CatSerializer.new(cats)
    send_data = cats_data.serialized_cats_with_statistics()
    render json: send_data, status: status
  end

  private def cat_params
    params.permit(:name, :breed, :age, :gender, :coat_length, :size)
  end

end