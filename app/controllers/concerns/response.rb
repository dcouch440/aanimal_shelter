module Response
  def json_response(object, status = :ok)
    render object, status: status
  end
end