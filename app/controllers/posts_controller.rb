class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  # GET /posts or /posts.json
  def index
    posts = Post.all
    render json: posts
  end

  # GET /posts/1 or /posts/1.json
  def show
    post = Post.find_by(id: params[:id])
    render json: post
    
  end

  # POST /posts or /posts.json
  def create
    new_posts = Post.create(desc: params[:desc])
    render json: new_posts
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    post = Post.find_by(id: params[:id])
    post.update(params.permit(:desc))
    render json: post
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    post = Post.find_by(id: params[:id])
    post.destroy
    render json: {}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_post
    #   @post = Post.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:body, :id)
    end
end
