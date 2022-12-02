FactoryBot.define do
  factory :task do
    author factory: :manager
    assignee factory: :developer
    description
    expired_at
    name
    state { 'new_task' }
  end
end
