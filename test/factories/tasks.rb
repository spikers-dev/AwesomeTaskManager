FactoryBot.define do
  factory :task do
    author_id { 1 }
    assignee_id { 1 }
    description
    expired_at
    name
    state { 'new_task' }
  end
end
