class CommentsController < ApplicationController
    def index
        comment = Comment.all
        render json: comment
      end
    
      
      def get_post
        comment = Comment.find_by(id: params[:id])
        render json: comment
      end

      
#post request

    def create
        new_comment = Comment.create(description: params[:description], likes: params[:likes], comment_id: params[:comment_id], user_id: params[:user_id])
        render json: new_comment
    end


#patch request

    def update
    comment = Comment.find_by(id: params[:id])
  #for this update below, only include what you want to supdate
    comment.update(params.permit(:description, :likes))
    render json: comment
    end 

    def destroy

    comment = Comment.find_by(id: params[:id])
    comment.destroy
    render json: {}
    end

end