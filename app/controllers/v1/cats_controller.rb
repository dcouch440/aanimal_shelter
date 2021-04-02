class V1::CatsController < ApplicationController

  def index
    gen_response(Cat.all)
  end

  def create
    cat = Cat.create!(cat_params)
    gen_response(cat, :created)
  end

  def show
    cat = Cat.find(params[:id])
    gen_response(cat)
  end

  def update
    cat = Cat.find(params[:id])
    cat.update!(cat_params)
    gen_response(cat, :created)
  end

  def destroy
    Cat.find(params[:id]).destroy!
  end

  def gen_response(cats, status = :ok)
    cats_data = CatSerializer.new(cats)
    send_data = cats_data.serialized_cats_with_statistics()
    render json: send_data, status: status
  end

  private def cat_params
    params.permit(:name, :breed, :age, :gender, :coat_length, :size)
  end

end