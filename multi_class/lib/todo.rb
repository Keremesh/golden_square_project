class Todo
  def initialize(task) # task is a string
    @task = task
  end

  def task
    @task
  end

  def mark_done
    @task = "Done: #{@task}"
  end

  def done?
    return @task.include?("Done: ")
  end
end