class TodoList
  def initialize
    @tasks = []
    @tasks_done = []
  end

  def add(task) 
    @tasks << task
  end

  def incomplete
    return @tasks
  end

  def complete
    @tasks.each do |task|
      if task.include?("Done: ")? @tasks_done << task : nil
      end
    end
    return @tasks_done
  end

  def give_up!
    @tasks.each do |task|
    @tasks_done << "Done: " + task
    end
    return @tasks_done
  end
end

