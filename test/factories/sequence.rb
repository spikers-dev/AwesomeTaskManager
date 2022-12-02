FactoryBot.define do
  sequence :string, aliases: [:avatar, :description, :first_name, :last_name, :name, :password] do |n|
    "string#{n}"
  end

  sequence :email do |n|
    "example#{n}@gmail.com"
  end

  sequence :expired_at do |n|
    n.days.after
  end
end
