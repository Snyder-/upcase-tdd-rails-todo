module Features
  def create_todo(name)
    click_on "New Todo"
    fill_in "Name", with: name
    click_on "Create Todo"
  end

  def display_todo(todo_name)
    have_css ".todos li", text: todo_name
  end

  def display_completed_todo(todo_name)
    have_css '.todos li.completed', text: todo_name
  end
end
