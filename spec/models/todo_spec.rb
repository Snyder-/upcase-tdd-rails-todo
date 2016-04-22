require 'rails_helper'

describe Todo do
  it 'returns completed if timestamp is set' do
    todo = Todo.new(completed_at: Time.current)
    expect(todo).to be_completed
  end

  it 'returns false when not set' do
    todo = Todo.new()
    expect(todo).to_not be_completed
  end
end
