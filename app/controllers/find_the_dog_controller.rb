class FindTheDogController < ApplicationController
  def landing
  end

  def questions
  end

  def result
    dogs = {}
    dogs[:Pekingese] =          [-2 ,	1 ,	-1 ,	0 ,	1 ,	-2]
    dogs[:YorkshireTerrier] =   [-2 ,	1 ,	1 ,	2 ,	0 ,	0]
    dogs[:ChowChow] =           [-1	,	0	,	-2	,	1	,	0	,	0]
    dogs[:ShibaInu] =           [-1	,	0	,	0	,	2	,	-1	,	-1]
    dogs[:Bichonfrise] =        [-1	,	0	,	1	,	0	,	1	,	0]
    dogs[:ShihTzu] =            [-1	,	1	,	2	,	1	,	-1	,	-1]
    dogs[:BullTerrier] =        [0	,	0	,	1	,	1	,	1	,	1]
    dogs[:Chihuahua] =          [0	,	0	,	1	,	2	,	0	,	0]
    dogs[:PitBull] =            [0	,	1	,	1	,	1	,	-2	,	-1]
    dogs[:Dobermann] =          [0	,	1	,	1	,	2	,	-1	,	1]
    dogs[:Shepherd] =           [0	,	1	,	1	,	2	,	0	,	2]
    dogs[:JindoDog] =           [0	,	1	,	1	,	2	,	0	,	0]
    dogs[:Dachshund] =          [0	,	1	,	2	,	1	,	0	,	-1]
    dogs[:Poodle] =             [0	,	2	,	1	,	2	,	0	,	1]
    dogs[:BorderCollie] =       [0	,	2	,	2	,	1	,	0	,	0]
    dogs[:SaintBernard] =       [1	,	0	,	-1	,	1	,	1	,	2]
    dogs[:Maltese] =            [1	,	0	,	1	,	1	,	2	,	1]
    dogs[:AlaskanMalamute] =    [1	,	0	,	1	,	2	,	0	,	2]
    dogs[:WelshCorgi] =         [1	,	0	,	2	,	0	,	0	,	-1]
    dogs[:CockerSpaniel] =      [1	,	0	,	2	,	1	,	0	,	1]
    dogs[:Pug] =                [1	,	1	,	-1	,	0	,	1	,	-2]
    dogs[:Greyhound] =          [1	,	1	,	-1	,	0	,	1	,	0]
    dogs[:SiberianHusky] =      [1	,	1	,	1	,	1	,	1	,	1]
    dogs[:GoldenRetriever] =    [1	,	2	,	0	,	2	,	1	,	0]
    dogs[:Beagle] =             [1	,	2	,	1	,	0	,	2	,	-1]
    dogs[:Bulldog] =            [2	,	0	,	0	,	0	,	0	,	-1]
    dogs[:Pomeranian] =         [2	,	1	,	1	,	0	,	0	,	0]
    dogs[:OldEnglishSheepdog] = [2	,	1	,	1	,	1	,	0	,	1]

    you = [
      params[:sociable] - params[:independent],
      params[:intelligent] - params[:straightforward],
      params[:energetic] - params[:quiet],
      params[:brave] - params[:cautious],
      params[:gentle] - params[:active],
      params[:patient] - params[:stubborn]
    ]

    @result = ""
    @last_sum = 12
    dogs.each do |key, value|
      @sum = 0
      value.each_with_index do |value, index|
        @sum += (value - you[index]).abs
      end
      if @sum < @last_sum
        @result = key
      end
      @last_sum = @sum
    end

  end
end
