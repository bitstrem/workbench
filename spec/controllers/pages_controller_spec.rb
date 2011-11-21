require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @base_title = "WorkBench"
  end
  
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                            :content => @base_title + " | Home")
    end
  end

  describe "GET 'customer'" do
    it "returns http success" do
      get 'customer'
      response.should be_success
    end
    it "should have the right title" do
      get 'customer'
      response.should have_selector("title",
                            :content => @base_title + " | Customer")
    end
  end

  describe "GET 'tech'" do
    it "returns http success" do
      get 'tech'
      response.should be_success
    end
    it "should have the right title" do
      get 'tech'
      response.should have_selector("title",
                            :content => @base_title + " | Tech")
    end
  end

  describe "GET 'service'" do
    it "returns http success" do
      get 'service'
      response.should be_success
    end
    it "should have the right title" do
      get 'service'
      response.should have_selector("title",
                            :content => @base_title + " | Service")
    end
  end

  describe "GET 'billing'" do
    it "returns http success" do
      get 'billing'
      response.should be_success
    end
    it "should have the right title" do
      get 'billing'
      response.should have_selector("title",
                            :content => @base_title + " | Billing")
    end
  end

  describe "GET 'admin'" do
    it "returns http success" do
      get 'admin'
      response.should be_success
    end
    it "should have the right title" do
      get 'admin'
      response.should have_selector("title",
                            :content => @base_title + " | Admin")
    end
  end

  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end
    it "should have the right title" do
      get 'help'
      response.should have_selector("title",
                            :content => @base_title + " | Help")
    end
  end

  describe "GET 'about'" do
    it "shoould be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                            :content => @base_title + " | About")
    end
  end
end
