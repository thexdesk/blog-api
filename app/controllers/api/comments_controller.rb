module Api
  class CommentsController < ApiController
    before_filter :set_comment, only: [:show, :update, :destroy]

    def index
      @comments = Comment.all
      render json: @comments
    end

    def show
      render json: @comment
    end

    def create
      if @comment = Comment.create(comment_params)
        render json: @comment, status: :created
      else
        render json: errors, status: :unprocessable_entity
      end
    end

    def update
      if @comment.update_attributes(comment_params)
        render nothing: true, status: :no_content
      else
        render json: errors, status: :not_found
      end
    end

    def destroy
      if @comment.destroy
        render nothing: true, status: :no_content
      else
        render nothing: true, status: :internal_server_error
      end
    end

    private
    def set_comment
      @comment = Comment.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render nothing: true, status: :not_found
    end

    def comment_params
      params.require(:comment).permit(:post_id, :body)
    end

    def errors
      {errors: @comment.errors}
    end
  end
end
