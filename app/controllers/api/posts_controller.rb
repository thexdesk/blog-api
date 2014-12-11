module Api
  class PostsController < ApiController
    before_filter :set_post, only: [:show, :update, :destroy]

    def index
      @posts = Post.all
      render json: @posts
    end

    def show
      render json: @post
    end

    def create
      if @post = Post.create(post_params)
        render json: @post, status: :created
      else
        render json: errors, status: :unprocessable_entity
      end
    end

    def update
      if @post.update_attributes(post_params)
        render nothing: true, status: :no_content
      else
        render json: errors, status: :not_found
      end
    end

    def destroy
      if @post.destroy
        render nothing: true, status: :no_content
      else
        render nothing: true, status: :internal_server_error
      end
    end

    private
    def set_post
      @post = Post.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render nothing: true, status: :not_found
    end

    def post_params
      params.require(:post).permit(:title, :body)
    end

    def errors
      {errors: @post.errors}
    end
  end
end
