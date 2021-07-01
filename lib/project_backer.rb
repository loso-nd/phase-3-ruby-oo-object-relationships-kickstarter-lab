class ProjectBacker
    @@all = []

    def self.all
        @@all
    end

    attr_reader :project, :backer

    #order in the init matters
    def initialize project, backer 
        @project = project
        @backer = backer
        @@all << self
    end
end