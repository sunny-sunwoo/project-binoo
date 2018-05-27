class FindTheDogController < ApplicationController
  def landing
  end

  def about
  end

  def questions
  end

  def doing
    @dogs = Dog.all
    @you = [
      params[:sociable].to_i - params[:independent].to_i,
      params[:intelligent].to_i - params[:straightforward].to_i,
      params[:energetic].to_i - params[:quiet].to_i,
      params[:brave].to_i - params[:cautious].to_i,
      params[:gentle].to_i - params[:active].to_i,
      params[:patient].to_i - params[:stubborn].to_i
    ]

    @result = ""
    @smallest_sum = 24
    @dogs.each do |dog|
      @sum = 0
      @sum += (dog.char0 - @you[0]).abs
      @sum += (dog.char1 - @you[1]).abs
      @sum += (dog.char2 - @you[2]).abs
      @sum += (dog.char3 - @you[3]).abs
      @sum += (dog.char4 - @you[4]).abs
      @sum += (dog.char5 - @you[5]).abs

      if @sum < @smallest_sum
        @result = dog
        @smallest_sum = @sum
      end
    end
    redirect_to action: "result", id: @result.id
  end

  def result
    @result = Dog.find(params[:id])
  end

end
