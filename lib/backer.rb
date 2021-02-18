class Backer

  attr_accessor :name

def initialize(name)
  @name = name
end

def back_project(project)
  ProjectBacker.new(project, self)
end

def backed_projects
  projects = ProjectBacker.all.select do |ps|
    ps.backer == self
  end
  projects.map do |ps|
    ps.project
  end
end

end
