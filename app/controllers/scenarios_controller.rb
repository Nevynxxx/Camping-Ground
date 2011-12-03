class ScenariosController < ApplicationController
  #before_filter :authenticate_user!

  def index
    @scenarios = Scenario.all
  end
end

