module Features
  def create_todo(name)
    click_on "New Todo"
    fill_in "Name", with: name
    click_on "Create Todo"
  end
end
