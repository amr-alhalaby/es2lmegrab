# == Schema Information
#
# Table name: user_question_rate
#
#  user_id     :integer          not null
#  question_id :integer          not null
#  rate        :boolean          not null
#

class UserQuestionRatesController < ApplicationController
  before_action :set_user_question_rate, only: [:show, :edit, :update, :destroy]

  # GET /user_question_rates
  # GET /user_question_rates.json
  def index
    @user_question_rates = UserQuestionRate.all
  end

  # GET /user_question_rates/1
  # GET /user_question_rates/1.json
  def show
  end

  # GET /user_question_rates/new
  def new
    @user_question_rate = UserQuestionRate.new
  end

  # GET /user_question_rates/1/edit
  def edit
  end

  # POST /user_question_rates
  # POST /user_question_rates.json
  def create
    @user_question_rate = UserQuestionRate.new(user_question_rate_params)

    respond_to do |format|
      if @user_question_rate.save
        format.html { redirect_to @user_question_rate, notice: 'User question rate was successfully created.' }
        format.json { render :show, status: :created, location: @user_question_rate }
      else
        format.html { render :new }
        format.json { render json: @user_question_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_question_rates/1
  # PATCH/PUT /user_question_rates/1.json
  def update
    respond_to do |format|
      if @user_question_rate.update(user_question_rate_params)
        format.html { redirect_to @user_question_rate, notice: 'User question rate was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_question_rate }
      else
        format.html { render :edit }
        format.json { render json: @user_question_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_question_rates/1
  # DELETE /user_question_rates/1.json
  def destroy
    @user_question_rate.destroy
    respond_to do |format|
      format.html { redirect_to user_question_rates_url, notice: 'User question rate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_question_rate
      @user_question_rate = UserQuestionRate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_question_rate_params
      params[:user_question_rate]
    end
end
