class ScoresController < ApplicationController
  before_action :set_score, only: :show

  def index
    @scores = Score.all

    render json: @scores
  end

  def show
    render json: @score
  end

  def create
    @score = Score.new(score_params)

    if @score.save
      render json: @score, status: :created, location: @score
    else
      render json: @score.errors, status: :unprocessable_entity
    end
  end

  private
  
    def set_score
      @score = Score.find(params[:id])
    end

    def score_params
      params.require(:score).permit(:score, :time, :user_id)
    end
end
