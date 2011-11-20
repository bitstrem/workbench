require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                            :content => "WorkBench | Home")
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
                            :content => "WorkBench | Customer")
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
                            :content => "WorkBench | Tech")
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
                            :content => "WorkBench | Service")
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
                            :content => "WorkBench | Billing")
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
                            :content => "WorkBench | Admin")
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
                            :content => "WorkBench | Help")
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
                            :content => "WorkBench | About")
    end
  end
end
