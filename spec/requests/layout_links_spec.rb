require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
  
  it "should have an Admin page at '/admin'" do
    get '/admin'
    response.should have_selector('title', :content => "Admin")
  end
   
  it "should have a Billing page at '/billing'" do
    get '/billing'
    response.should have_selector('title', :content => "Billing")
  end
  
  it "should have a Customer page at '/customer'" do
    get '/customer'
    response.should have_selector('title', :content => "Customer")
  end
  
  it "should have a Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end
  
  it "should have a Service page at '/service'" do
    get '/service'
    response.should have_selector('title', :content => "Service")
  end
  
  it "should have a Tech page at '/tech'" do
    get '/tech'
    response.should have_selector('title', :content => "Tech")
  end

end
 