require 'random_data'

 # Create Posts
  50.times do
    Post.create!(
      title:  RandomData.random_sentence,
      body:   RandomData.random_paragraph
   )
  end
 posts = Post.all

 # Create Comments
  100.times do
    Comment.create!(
      post: posts.sample,
      body: RandomData.random_paragraph
   )
  end

  50.times do
    Question.create!(
      title:  RandomData.random_question,
      body:   RandomData.random_paragraph,
      resolved: RandomData.random_boolean
   )
  end
  questions = Question.all
