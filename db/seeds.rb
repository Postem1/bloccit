require 'random_data'

# Create Users
5.times do
  User.create!(
  name:     RandomData.random_name,
  email:    RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all

# Create Topics
 15.times do
   Topic.create!(
      name:         RandomData.random_sentence,
      description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all

 # Create Posts
  50.times do
    Post.create!(
      user: users.sample,
      topic:  topics.sample,
      title:  RandomData.random_sentence,
      body:   RandomData.random_paragraph
   )
  end
 posts = Post.all

 # Create Comments
  100.times do
    Comment.create!(
      user: users.sample,
      body: RandomData.random_paragraph,
      commentable_id: [1,2,3,4,5,6,7,8,9].sample,
      commentable_type:["Post", "Topic"].sample
   )
  end

  # Create an admin user
 admin = User.create!(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
 )

 # Create a member
 member = User.create!(
   name:     'Member User',
   email:    'member@example.com',
   password: 'helloworld'
   )

    puts "Seed finished"
    puts "#{User.count} users created"
    puts "#{Topic.count} topics created"
    puts "#{Post.count} posts created"
    puts "#{Comment.count} comments created"
