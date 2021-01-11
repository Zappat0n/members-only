module PostsHelper
  def post_params
    params.require(:post).permit(:title, :story)
  end
end
