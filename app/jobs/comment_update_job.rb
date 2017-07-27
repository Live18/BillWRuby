class CommentUpdateJob < ApplicationJob
  queue_as :default

  def perform(comment, current_user)
    ProductChannel.broadcast_to(comment.product_id, comment: render_comment(comment, current_user), average_rating: @product.average_rating)
    # Do something later
  end

  private

  def render_comment(comment, current_user)
    CommentsController.render(partial: "comments/comment", locals: {comment: comment, current_user: current_user})
  end

end
