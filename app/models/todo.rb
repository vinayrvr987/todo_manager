class Todo < ActiveRecord::Base
  def overdue?
    Date.today > due_date
  end

  def due_today?
    Date.today == due_date
  end

  def due_later?
    Date.today < due_date
  end

  def self.overdue
    all.where(" due_date< ?", Date.today)
  end

  def self.due_today
    all.where(due_date: Date.today)
  end

  def self.due_later
    all.where("due_date> ?", Date.today)
  end

  def self.completed
    all.where(completed: true)
  end

  def self.incompleted
    all.where(completed: false)
  end

  def self.show_list
    puts "My Todo-list\n\n"
    puts "Overdue\n"
    puts overdue.map { |todo| todo.to_displayable_string }

    puts "\n\n"
    puts "Due Today\n"
    puts due_today.map { |todo| todo.to_displayable_string }
    puts "\n\n"

    puts "Due Later\n"
    puts due_later.map { |todo| todo.to_displayable_string }
    puts "\n\n"
  end

  def self.mark_as_complete!(todo_id)
    todo = Todo.find(todo_id)
    todo.completed = true
    todo.save
    Todo.find(todo_id)
  end
end
