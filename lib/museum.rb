require 'pry'

class Museum

  attr_reader :name,
              :exhibits,
              :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommended_exhibits = []

    @exhibits.each do |exhibit|
      if patron.interests.include?(exhibit.name)
        recommended_exhibits << exhibit
      else
        recommended_exhibits
      end
    end
    recommended_exhibits
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
  @exhibit_interest_hash = {}
    
end
