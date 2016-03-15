user_amount    = 1
list_amount    = 3
task_amount    = 4
tag_amount     = 10
tags_per_task  = 4



# USERS
User.create(username: 'joe', email: 'joe@joe.com', password: 'pw', description: Faker::Hipster.paragraph)

user_amount.times do
  User.create(  username:        Faker::Internet.user_name,
                email:           Faker::Internet.free_email,
                password: 'pw',
                description:      Faker::StarWars.quote
                )
end

user_ids = User.all.map { |user| user.id }
users = User.all


# TAGS
tag_amount.times do
  Tag.create(title: Faker::Commerce.color)
end


# TASKS
users.each do |user|
  list_amount.times do

    list = List.create(title: Faker::Lorem.word, user_id: user.id)

    task_amount.times do
       task = Task.create(list_id:     list.id,
                          user_id:     user.id,
                          title:       Faker::Hipster.sentence(3),
                          status:      0,
                          priority:    rand(1..3),
                          due_date:    Faker::Date.forward(100),
                          notes:       Faker::Lorem.paragraph(3))

       tag_ids = Tag.all.map { |tag| tag.id }

       tags_per_task.times do
          TagTask.create(tag_id: tag_ids.delete_at(rand(tag_ids.length)),
                         task_id: task.id)
      end
      end
  end
end


