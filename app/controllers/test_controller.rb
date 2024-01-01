class TestController < ApplicationController
  def index
    @test = session[:test].presence&.to_i || 1
    numbers = [@test]
    numbers += 5.times.map { |i| @test + i + 1 }
    numbers += 5.times.map { |i| @test - i - 1 }

    @available_options = numbers.sort.map { |i| ["Option #{i}", i] }
  end

  def create
    session[:test] = params[:test]
    redirect_to action: :index
  end
end
