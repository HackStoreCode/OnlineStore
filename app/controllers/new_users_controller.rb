class NewUsersController < ApplicationController
  before_action :set_new_user, only: [:show, :edit, :update, :destroy]

  # GET /new_users
  # GET /new_users.json
  def index
    @new_users = NewUser.all
  end

  # GET /new_users/1
  # GET /new_users/1.json
  def show
  end

  # GET /new_users/new
  def new
    @new_user = NewUser.new
  end

  # GET /new_users/1/edit
  def edit
  end

  # POST /new_users
  # POST /new_users.json
  def create
    @new_user = NewUser.new(params [:new_user])

    respond_to do |format|
      if @new_user.save
        UserMailer.welcome_email(@new_user).deliver_later
        format.html { redirect_to @new_user, notice: 'New user was successfully created.' }
        format.json { render json :new_user, status: :created, location: @new_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @new_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_users/1
  # PATCH/PUT /new_users/1.json
  def update
    respond_to do |format|
      if @new_user.update(new_user_params)
        format.html { redirect_to @new_user, notice: 'New user was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_user }
      else
        format.html { render :edit }
        format.json { render json: @new_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_users/1
  # DELETE /new_users/1.json
  def destroy
    @new_user.destroy
    respond_to do |format|
      format.html { redirect_to new_users_url, notice: 'New user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_user
      @new_user = NewUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_user_params
      params.require(:new_user).permit(:name, :email, :login)
    end
end
