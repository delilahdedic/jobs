json.array!(@jobies) do |joby|
  json.extract! joby, :id, :occupation, :name, :lastname, :phone
  json.url joby_url(joby, format: :json)
end
