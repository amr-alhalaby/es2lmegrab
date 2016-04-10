class UserReplayRatesController < ApplicationController
  before_action :set_user_replay_rate, only: [:show, :edit, :update, :destroy]

  # GET /user_replay_rates
  # GET /user_replay_rates.json
  def index
    @user_replay_rates = UserReplayRate.all
  end

  # GET /user_replay_rates/1
  # GET /user_replay_rates/1.json
  def show
  end

  # GET /user_replay_rates/new
  def new
    @user_replay_rate = UserReplayRate.new
  end

  # GET /user_replay_rates/1/edit
  def edit
  end

  # POST /user_replay_rates
  # POST /user_replay_rates.json
  def create
    @user_replay_rate = UserReplayRate.new(user_replay_rate_params)

    respond_to do |format|
      if @user_replay_rate.save
        format.html { redirect_to @user_replay_rate, notice: 'User replay rate was successfully created.' }
        format.json { render :show, status: :created, location: @user_replay_rate }
      else
        format.html { render :new }
        format.json { render json: @user_replay_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_replay_rates/1
  # PATCH/PUT /user_replay_rates/1.json
  def update
    respond_to do |format|
      if @user_replay_rate.update(user_replay_rate_params)
        format.html { redirect_to @user_replay_rate, notice: 'User replay rate was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_replay_rate }
      else
        format.html { render :edit }
        format.json { render json: @user_replay_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_replay_rates/1
  # DELETE /user_replay_rates/1.json
  def destroy
    @user_replay_rate.destroy
    respond_to do |format|
      format.html { redirect_to user_replay_rates_url, notice: 'User replay rate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_replay_rate
      @user_replay_rate = UserReplayRate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_replay_rate_params
      params[:user_replay_rate]
    end
end
