module PostsHelper
  def post_details(post)
    return post.link_url if post.link_url?
    post_path(post)
  end
end
