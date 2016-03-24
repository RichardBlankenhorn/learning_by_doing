# Creating the TaskList class
class TaskList
  # initialize an empty task list
  def initialize
    @task_list = []
  end

  # get the tasks in the task_list
  # if there are no tasks, indicate list is empty
  def task_list
    if @task_list.empty?
      task_count
    else
      puts 'You have the following tasks:'
      puts @task_list
    end
  end

  # get the number of tasks in task_list
  def task_count
    puts "You currently have #{@task_list.length} task(s)."
  end

  # add one task to the task_list
  def add_task(task)
    @task_list.push(task)
  end

  # remove a task from the task list based on the order in task_list
  # this method accepts the number for the position in the task_list
  def remove_task(task_num)
    @task_list.delete_at(task_num - 1)
  end

  # modify a given task based on position
  # method accepts number for position and new task
  def modify_task(task_num, new_task)
    @task_list[task_num - 1] = new_task
  end
end

task_list = TaskList.new
task_list.task_list
task_list.add_task('Go to the grocery store')
task_list.add_task('File taxes')
task_list.task_list
task_list.modify_task(1, 'Go to the grocery store and get milk')
task_list.task_list
task_list.remove_task(2)
task_list.task_list
task_list.task_count
