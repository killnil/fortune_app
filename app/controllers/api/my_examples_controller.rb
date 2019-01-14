class Api::MyExamplesController < ApplicationController
  def fortune_action
    possible_fortunes = [
                          "you shall be rich and famous", 
                          "you will die a horrible death.", 
                          "... I will tell you after you pay the $25 fee."
                        ]

    @fortune = "I look into the mystic sands of time... and see that #{possible_fortunes.sample}"
    render 'fortune_view.json.jbuilder'
  end

  def lotto_action
    possible_numbers = (1..60).to_a.shuffle
    @lotto_numbers = possible_numbers.pop(6)
    @formatted_numbers = @lotto_numbers.join(", ")

    render 'lotto_view.json.jbuilder'
  end
end









