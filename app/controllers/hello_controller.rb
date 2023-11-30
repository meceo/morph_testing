class HelloController < ApplicationController
  before_action :generate_random_value

  def index

  end

  def create
    redirect_to hello_path
  end

  private
  def generate_random_value
    @random_value_from_server = SecureRandom.hex(10)
  end
end
