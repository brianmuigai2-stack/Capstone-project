# Helper for JSON responses
module ResponseHelper
  def json_response(data, status = 200)
    content_type :json
    status status
    data.to_json
  end
end
