class ExamCategoriesController < ApplicationController
  before_action :set_exam_category, only: [:show, :edit, :update, :destroy]

  # GET /exam_categories
  # GET /exam_categories.json
  def index
    @exam_categories = ExamCategory.all
  end

  # GET /exam_categories/1
  # GET /exam_categories/1.json
  def show
  end

  # GET /exam_categories/new
  def new
    @exam_category = ExamCategory.new
  end

  # GET /exam_categories/1/edit
  def edit
  end

  # POST /exam_categories
  # POST /exam_categories.json
  def create
    @exam_category = ExamCategory.new(exam_category_params)

    respond_to do |format|
      if @exam_category.save
        format.html { redirect_to @exam_category, notice: 'Exam category was successfully created.' }
        format.json { render :show, status: :created, location: @exam_category }
      else
        format.html { render :new }
        format.json { render json: @exam_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exam_categories/1
  # PATCH/PUT /exam_categories/1.json
  def update
    respond_to do |format|
      if @exam_category.update(exam_category_params)
        format.html { redirect_to @exam_category, notice: 'Exam category was successfully updated.' }
        format.json { render :show, status: :ok, location: @exam_category }
      else
        format.html { render :edit }
        format.json { render json: @exam_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_categories/1
  # DELETE /exam_categories/1.json
  def destroy
    @exam_category.destroy
    respond_to do |format|
      format.html { redirect_to exam_categories_url, notice: 'Exam category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam_category
      @exam_category = ExamCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_category_params
      params.require(:exam_category).permit(:name, :description)
    end
end
