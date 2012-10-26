# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inbox_item do
    title "MyString"
    due_date "2012-10-25 14:28:38"
    project_id 1
    user_id 1
    task_id 1
    description "MyText"
  end
end
