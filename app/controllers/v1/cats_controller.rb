class V1::CatsController < ApplicationController

  before_action :find_cat, only: %i[show update destroy]

  def index
    serialize(Cat.all)
  end

  def show
    serialize(@cat)
  end

  def create
    cat = Cat.create!(cat_params)
    json_response(cat, :created)
  end

  def update
    @cat.update!(cat_params)
    json_response(@cat, :created)
  end

  def destroy
    @cat.destroy!()
  end

  private def serialize(cats, status = :ok)
    cats_data = CatSerializer.new(cats)
    send_data = cats_data.serialized_cats_with_statistics()
    json_response(send_data, status)
  end

  private def find_cat
    @cat = Cat.find(params[:id])
  end

  private def cat_params
    params.permit %i[name breed age gender coat_length size]
  end

end