defmodule Teenager do

  def hey(input) do
    cond do
        no_words(input) ->
          "Fine. Be that way!"
        all_numbers(input) ->
          "Whatever."
        question(input) ->
          "Sure."
        yelling(input) or russian(input) ->
          "Whoa, chill out!"
        true ->
          "Whatever."
    end
  end

  def no_words(phrase) do
    String.length(String.strip(phrase)) == 0
  end

  def all_numbers(phrase) do
    Enum.all?(String.split(phrase, ","), fn(x) -> String.contains?("1234567890", String.strip(x)) end)
  end

  def question(phrase) do
    String.ends_with?(phrase, "?")
  end

  def yelling(phrase) do
    String.upcase(phrase) == phrase
  end
  
  def russian(phrase) do
    Enum.any?(String.split(phrase, ","), fn(x) -> String.contains?("УХОДИТЬ", String.strip(x)) end)
  end

end
