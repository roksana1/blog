class AuthorSessionsController < ApplicationController
    
  def new
  end

  def create
    if login(params[:email], params[:password])
      redirect_to(articles_path, notice: 'Zalogowano.')
    else
      flash.now.alert = "Login failed."
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to(:authors, notice: 'Wylogowano!')
  end
  
end