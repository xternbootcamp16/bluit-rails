json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :link_url
  json.url post_url(post, format: :json)
end
