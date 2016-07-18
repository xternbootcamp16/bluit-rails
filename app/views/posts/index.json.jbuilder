json.array!(@posts) do |post|
  json.extract! post, :id, :title, :link_url, :body
  json.url post_url(post, format: :json)
end
