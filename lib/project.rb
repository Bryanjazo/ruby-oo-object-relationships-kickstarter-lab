class Project

attr_accessor :title


def initialize(title)
  @title = title
end

def add_backer(backer)
  ProjectBacker.new(self,backer)
end

def backers
  projects = ProjectBacker.all.select do |ps|
    ps.project == self
  end
  projects.map do |ps|
    ps.backer
  end
end
end
