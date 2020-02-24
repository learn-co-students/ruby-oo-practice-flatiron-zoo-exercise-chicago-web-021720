class Zoo
    attr_accessor
    attr_reader :location, :name

    @@all = []

    def self.all
        @@all
    end

    def self.find_by_location(loc)
        @@all.find_all { |z| z.location == loc }
    end

    def initialize(location, name)
        @location = location
        @name = name
        @@all << self
    end

    def animals
        Animal.all.find_all { |an| an.zoo == self }
    end

    def animal_species
        self.animals.map { |an| an.species }.uniq
    end

    def find_by_species(spec)
        self.animals.find_all { |an| an.species == spec }
    end

    def animal_nicknames
        self.animals { |an| an.nickname }
    end

end