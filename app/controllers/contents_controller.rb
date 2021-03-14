class ContentsController < ApplicationController
  before_action :set_content, only: %i[ show edit update destroy ]
  def index
    if params[:search_param]
      @content = Content.where('content_type like ?', "%#{params[:search_param]}%")
    elsif params[:search_param2]
      @content = Content.where('content_type like ?', "%#{params[:search_param2]}%")
    else
      @content = Content.all
    end
  end

  def show
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)

   
    steps = content_params[:steps].split(' ')
    ingredients = content_params[:ingredients].split(' ')
    
    
    @content.update_attributes(:steps => steps, :ingredients => ingredients)  
   

    respond_to do |format|
      if @content.save(context: :content_validation)
        format.html { redirect_to @content, notice: "Content was successfully created." }
       
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    id = params[:id]
    title = content_params[:title]
    steps = content_params[:steps].split(' ')
    ingredients = content_params[:ingredients].split(' ')
    content_review_notes = content_params[:content_review_notes]
    rating = content_params[:rating]
    movie_link = content_params[:movie_link]
    release_date = content_params[:release_date]
    
    @content.update_attributes(:id => id, :title => title, :steps => steps, :ingredients => ingredients, :content_review_notes => content_review_notes,:rating => rating, :movie_link => movie_link, :release_date => release_date)  
   
    respond_to do |format|
      
      if @content.save(context: :content_validation)
        format.html { redirect_to @content, notice: "Content was successfully updated." }
        format.json { render :show, status: :ok, location: @content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to contents_url, notice: "Content was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def content_params
      params.require(:content).permit(:search_param, :title, :content_review_notes, :content_type, :rating, :movie_link, :release_date, :ingredients, :steps)
    end

end