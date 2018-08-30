class Backer 
  attr_accessor :backed_projects, :name
  
  def initialize(name)
    @name = name 
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    new_project = Project.new(project)
    Project.add_backer(new_project)
  end 
  
end 