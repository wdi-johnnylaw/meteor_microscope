var postsData = function() {
   return Posts.find().fetch();
}

Template.postsList.helpers({
  posts: postsData
});