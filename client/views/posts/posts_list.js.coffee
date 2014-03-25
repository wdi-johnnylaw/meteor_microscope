postsData = ->
  return Posts.find()

Template.postsList.helpers
  posts: postsData