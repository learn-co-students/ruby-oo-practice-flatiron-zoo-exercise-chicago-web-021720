class Animal
    attr_accessor :weight, :zoo
    attr_reader :species, :nickname

    @@all = []

    def self.all
        @@all
    end

    def self.find_by_species(spec)
        @@all.find_all { |an| an.species == spec }
    end

    def initialize(nickname, weight, species, zoo = nil)
        @species = species
        @nickname = nickname
        @weight = weight
        @zoo = zoo
        @@all << self
    end

end