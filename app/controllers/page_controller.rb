class PageController < ApplicationController
  def default
    render(:template => "game_tamplates/home_page")
  end
  def flexible
    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("how_many_sides").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)
      @rolls.push(die)
    end

    render(:template => "game_tamplates/flexible")
  end
end
