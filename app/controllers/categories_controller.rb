class CategoriesController < GroupingController
  # index - inherited
  # show - inherited
  
  def show
    @category = Category.find(params[:id])
  end
  
  def index
    @categories = Category.all
  end
  
  def new
    # default: render 'new' template
  end
end
