class Project
    @@all = []

    def self.all
        @@all
    end

    attr_reader :title

    def initialize title
        @title = title
        @@all << self
    end
    #because the test requires project to be passed first the way we associate this new class must have project first
    def add_backer backer
        ProjectBacker.new(self, backer )
    end 

    def backers
        project_backers = ProjectBacker.all.select do |pb| 
          pb.project == self
        end
        project_backers.map do |pb|
          pb.backer
        end
      end
end