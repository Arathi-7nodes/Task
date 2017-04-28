class UsersController < ApplicationController
before_action :set_student, only: [:show, :edit, :update, :destroy]

  def form

    @user=User.new
    puts "form"
  end


  def listing

    @users=User.all
    puts "listing"
  end

  def details
    @user=User.find(params[:id])

  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to  @user, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location:   @user}
      else
        format.html { render :edit }
        format.json { render json:   @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    # binding.pry
    user = User.new(user_params)
    user.save

  end

   def user_params
    params.require(:user).permit(:name, :email, :course)
  end

end
