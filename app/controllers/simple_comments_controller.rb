class SimpleCommentsController < Spree::BaseController
  respond_to :html

  def new
    @simple_comment = SimpleComment.new
  end

  def create
    @simple_comment = SimpleComment.new(params[:simple_comment])
    if @simple_comment.save
      flash.notice = "Отзыв успешно добавлен"
      redirect_to new_simple_comment_path
    else
      flash.notice = 'Не удалось сохранить отзыв:<br>' + @simple_comment.errors.to_a.join('<br>')
      render :new
    end
  end

  def destroy
    @simple_comment = SimpleComment.find(params[:id])
    @simple_comment.destroy
    redirect_to admin_simple_comments_path
  end

end
