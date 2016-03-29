#!/usr/bin/env ruby
# Creating the TaskList class
class TaskList
  attr_reader :task_list

  # initialize an empty task list
  def initialize
    @task_list = []
  end

  # add a task to the task list
  def add_task(task)
    @task_list.push(task)
  end

  # remove a task based upon the task number in the task list
  # this method accepts the task number as its argument
  def remove_task(task_num)
    @task_list.delete_at(task_num - 1)
  end

  # modifies a task based upon the task number in the task list
  # accepts the task num to be replaced and the new task as arguments
  def modify_task(task_num, new_task)
    @task_list[task_num - 1] = new_task
  end

  # provides the number of tasks in the task list
  def task_count
    @task_list.length
    puts "You currently have #{@task_list.length} task(s)."
  end
end
