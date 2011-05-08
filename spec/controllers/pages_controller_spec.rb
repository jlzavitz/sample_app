require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
    @success_test = "should be successfull"
    @title_test = "should have the right title"
  end

  describe "GET 'home'" do
  
    it @success_test do
      get 'home'
      response.should be_success
    end
    it @title_test do
      get 'home'
      response.should have_selector("title",
      :content => @base_title + " | Home")
    end
  end

  describe "GET 'contact'" do
    it @success_test do
      get 'contact'
      response.should be_success
    end
    it @title_test do
      get 'contact'
      response.should have_selector("title",
      :content => @base_title + " | Contact")
    end
  end

  describe "GET 'about'" do
    it @success_test do
      get 'about'
      response.should be_success
    end    
    it @title_test do
      get 'about'
      response.should have_selector("title",
      :content => @base_title + " | About")
    end
  end

  describe "GET 'help'" do
    it @success_test do
      get 'help'
      response.should be_success
      end
    it @title_test do
      get 'help'
      response.should have_selector("title",
      :content => @base_title + " | Help")
    end
  end
end