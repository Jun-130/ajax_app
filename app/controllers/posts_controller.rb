class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # def new
  # end

  def create
    post = Post.create(content: params[:content])
    # 変数postの値を、postというキーとセットでJavaScriptに送信
    render json:{ post: post }
  end
end
