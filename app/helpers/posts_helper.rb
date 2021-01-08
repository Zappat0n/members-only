module PostsHelper
  def post_params
    params.require(:post).permit(:post)
  end
end
