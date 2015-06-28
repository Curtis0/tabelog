class ReviewsController < ApplicationController

  def new
    @shop = Shop.find(params[:shop_id])
    @review = Review.new
  end

  def create
    @review = Review.new(
      shop_id: params[:shop_id],
      user_id: current_user.id, #devise method
      score:   review_params["score"],
      body:    review_params["body"] #strong parameter
      )
    # what is this?
    if @review.save
      redirect_to shop_url(@review.shop) # can also put params[:book_id] in the parantheses. The method inside right now "@review.book" is for associations.
    else
      render 'new'
    end

    def avg_score
      @score = score.all / 5
    end

  end

private

  def review_params
    params.require(:review).permit(:body, :score)
  end

end
