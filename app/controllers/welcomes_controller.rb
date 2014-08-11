class WelcomesController < ApplicationController


def index

end

def create
 
 @sport = params["sports"]
render :show
 # redirect_to welcome_path(:id => params["sports"])

end

def show

puts params

end

end