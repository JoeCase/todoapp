User.create(username: 'joe', email: 'joe@joe.com', password: 'pw', description: Faker::Hipster.paragraph)

# user_amount         = 6
# post_amount         = 69
# comment_amount      = 500

# post_vote_amount    = 400
# comment_vote_amount = 400


# # USERS
# user_amount.times do
#   User.create(  username:        Faker::Internet.user_name,
#                 email:           Faker::Internet.free_email,
#                 password_digest: 'pw',
#                 description:     Faker::Lorem.sentence
#                 )
# end

# user_ids = User.all.map { |user| user.id }



# # POSTS
# post_amount.times do
#   Post.create( title:     Faker::Hipster.sentence(4),
#                url:       Faker::Internet.url,
#                user_id:   user_ids.sample
#                )
# end

# post_ids = Post.all.map { |post| post.id }



# # COMMENTS
# comment_amount.times do
#   Comment.create( body:      Faker::Lorem.paragraph,
#                   user_id:   user_ids.sample,
#                   post_id:   post_ids.sample
#                )
# end

# comment_ids = Comment.all.map { |comment| comment.id }



# # POST VOTES
# post_vote_amount.times do
#   PostVote.create(  user_id:   user_ids.sample,
#                     post_id:   post_ids.sample
#                )
# end



# # COMMENT VOTES
# comment_vote_amount.times do
#   CommentVote.create(  user_id:      user_ids.sample,
#                        comment_id:   comment_ids.sample
#                )
# end
