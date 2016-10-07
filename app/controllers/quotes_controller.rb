require 'pry'
class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def show
    total = Quote.count
    random = rand(total) + 1
    quote_array = Quote.find(random).body.split(' ')

    quote_array.each_with_index do |word, index|
      if word == 'paintings'
        quote_array[index] = 'programs'
      elsif word == 'paintings.'
        quote_array[index] = 'programs.'
      elsif word == 'Clouds'
        quote_array[index] = 'Cloud services'
      elsif word == 'paint'
        quote_array[index] = 'program'
      elsif word == 'paint.'
        quote_array[index] = 'program.'
      elsif word == 'paint,'
        quote_array[index] = 'program,'
      elsif word == 'paints'
        quote_array[index] = 'programs'
      elsif word == 'paints.'
        quote_array[index] = 'programs.'
      elsif word == 'painting'
        quote_array[index] = 'programming'
      elsif word == 'painting.'
        quote_array[index] = 'programming.'
      elsif word == 'painting...and'
        quote_array[index] = 'programming....and'
      elsif word == 'painted'
        quote_array[index] = 'programmed'
      elsif word == 'painted.'
        quote_array[index] = 'programmed.'
      elsif word == 'world'
        quote_array[index] = 'application'
      elsif word == 'world.'
        quote_array[index] = 'application.'
      elsif word == 'tree'
        quote_array[index] = 'conditional'
      elsif word == 'tree,'
        quote_array[index] = 'function'
      elsif word == 'tree.'
        quote_array[index] = 'conditional.'
      elsif word == 'trees'
        quote_array[index] = 'conditionals'
      elsif word == 'tress,'
        quote_array[index] = 'conditionals,'
      elsif word == 'birch'
        quote_array[index] = 'nested'
      elsif word == 'brush'
        quote_array[index] = 'keyboard'
      elsif word == 'brush.'
        quote_array[index] = 'keyboard.'
      elsif word == 'hit'
        quote_array[index] = 'bang'
      elsif word == 'mistake'
        quote_array[index] = 'error'
      elsif word == 'mistake,'
        quote_array[index] = 'error,'
      elsif word == 'mistakes,'
        quote_array[index] = 'errors,'
      elsif word == 'mistakes'
        quote_array[index] = 'errors'
      elsif word == 'water.'
        quote_array[index] = 'font.'
      elsif word == 'Water\'s'
        quote_array[index] = 'Code\'s'
      elsif word == 'blend'
        quote_array[index] = 'patch'
      elsif word == 'Alaska,'
        quote_array[index] = 'Stack Overflow,'
      elsif word == 'sky.'
        quote_array[index] = 'background.'
      elsif word == 'cabinectomy'
        quote_array[index] = 'pry'
      elsif word == 'Artists'
        quote_array[index] = 'Programmers'
      elsif word == 'artists'
        quote_array[index] = 'programmers'
      elsif word == 'hills'
        quote_array[index] = 'tests'
      elsif word == 'mountain,'
        quote_array[index] = 'database,'
      elsif word == 'mountains.'
        quote_array[index] = 'databases.'
      elsif word == 'rivers.'
        quote_array[index] = 'logic.'
      elsif word == 'sticks'
        quote_array[index] = 'margins'
      elsif word == 'twigs'
        quote_array[index] = 'padding'
      elsif word == 'squirrels'
        quote_array[index] = 'clients'
      elsif word == 'rabbits'
        quote_array[index] = 'servers'
      elsif word == 'rabbits,'
        quote_array[index] = 'servers,'
      elsif word == 'alligator'
        quote_array[index] = 'database'
      elsif word == 'crows'
        quote_array[index] = 'variables'
      elsif word == 'son'
        quote_array[index] = 'pair programmer'
      elsif word == 'director'
        quote_array[index] = 'manager'
      elsif word == 'stab'
        quote_array[index] = 'completely rewrite'
      elsif word == 'paint-thinner.'
        quote_array[index] = 'style-guides.'
      elsif word == 'odorless'
        quote_array[index] = 'accepted'
      elsif word == 'odorless,'
        quote_array[index] = 'accepted,'
      elsif word == 'sign'
        quote_array[index] = 'commit'
      elsif word == 'sign.'
        quote_array[index] = 'commit.'
      elsif word == 'fish.'
        quote_array[index] = 'test.'
      elsif word == 'fishing,'
        quote_array[index] = 'testing,'
      elsif word == 'fisherman.'
        quote_array[index] = 'tester'
      elsif word == 'fish'
        quote_array[index] = 'test'
      elsif word == 'mouth'
        quote_array[index] = 'failure'
      elsif word == 'Trees'
        quote_array[index] = 'Tests'
      elsif word == 'raccoons'
        quote_array[index] = 'ifs'
      elsif word == 'possums'
        quote_array[index] = 'whiles'
      end
    end

    @quote = quote_array.join(" ")
  end
end
