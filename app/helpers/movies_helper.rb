module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
  
  def index_store_session params
    @all_ratings = {'G' => 1, 'PG' => 1, 'PG-13' => 1, 'R' => 1}
    session[:ratings] ||= @all_ratings
    session[:ratings] = params[:ratings] if params[:ratings]
    session[:by] = params[:by] if params[:by]
    session[:order] = params[:order] if params[:order]
  end
  
end
