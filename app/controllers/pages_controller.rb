class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def customer
    @title = "Customer"
  end

  def tech
    @title = "Tech"
  end

  def service
    @title = "Service"
  end

  def billing
    @title = "Billing"
  end

  def admin
    @title = "Admin"
  end

  def help
    @title = "Help"
  end
  
  def about
    @title = "About"
  end

end
