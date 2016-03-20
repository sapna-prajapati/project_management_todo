require 'gchart'

module HomeHelper
  def generate_pie_chart(project)
    new_projects = project.status(1)
    in_progress_projects = project.status(2)
    completed_projects = project.status(3)

    data = [new_projects, in_progress_projects, completed_projects]
    labels = ["New (#{new_projects})", "In Progress (#{in_progress_projects})", "Completed (#{completed_projects})"]

    Gchart.pie(:data => data, :labels => labels, :size => '495x280',
                  :theme => :thirty7signals)
  end
end