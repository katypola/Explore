class ExperimentsController < ApplicationController
  before_action :set_experiment, only: [:show, :edit, :update, :destroy]

  # GET /experiments
  # GET /experiments.json
  def index
    @experiments = Experiment.all
  end

  # GET /experiments/1
  # GET /experiments/1.json
  def show
    @steps = Step.all
    @step = Step.find_by(params[:id])
    # @kits = Kit.all
    # @kits = @experiment.kits

    @item = Item.find_by(params[:id])
    @posts = Post.all
    @post = params[:post_id] ? Post.find(params[:post_id]) : Post.new
  end

  # Add experiments to userexperiments
  def add
    # define current user
   @user = current_user
    # look for the experiment by experiment.id
   @experiment = Experiment.find(params[:id])
    # define if the userexperiment table exists
   @userexperiment = UserExperiment.find_by(experiment_id: params[:id], user_id: current_user.id)
   if @userexperiment
    #  if it doesnt exist, then push the experiment into the userexperiment join table
   else
     @user.experiments << @experiment
   end
   redirect_to profile_path(@user.username,:experiment)
  end

  def remove
    @user = current_user
    @experiment = Experiment.find(params[:id])
    @userexperiment = UserExperiment.find_by(experiment_id: params[:id], user_id: current_user.id)
    unless @userexperiment.nil?
      @userexperiment.destroy
    else
    end
    redirect_back(fallback_location: profile_path(@user.username,:experiment))
  end

  # def steps
  # end

  # GET /experiments/new
  def new
    @experiment = Experiment.new
  end

  # GET /experiments/1/edit
  def edit
  end

  # POST /experiments
  # POST /experiments.json
  def create
    @experiment = Experiment.new(experiment_params)

    respond_to do |format|
      if @experiment.save
        format.html { redirect_to @experiment, notice: 'Experiment was successfully created.' }
        format.json { render :show, status: :created, location: @experiment }
      else
        format.html { render :new }
        format.json { render json: @experiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experiments/1
  # PATCH/PUT /experiments/1.json
  def update
    respond_to do |format|
      if @experiment.update(experiment_params)
        format.html { redirect_to @experiment, notice: 'Experiment was successfully updated.' }
        format.json { render :show, status: :ok, location: @experiment }
      else
        format.html { render :edit }
        format.json { render json: @experiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiments/1
  # DELETE /experiments/1.json
  def destroy
    @experiment.destroy
    respond_to do |format|
      format.html { redirect_to experiments_url, notice: 'Experiment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experiment
      @experiment = Experiment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experiment_params
      params.require(:experiment).permit(:title, :overview, :image, :field_id)
    end
end
