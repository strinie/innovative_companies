module InnovativeCompanies
    class Companies
        attr_reader: rank, name, why, link, bio

    @@all = []

    def initialize(rank, name, why, link)
        @rank = rank
        @name = name
        @why = why
        @link = link
        @@all << self
    end

    def self.all
        @@all
    end
end
end