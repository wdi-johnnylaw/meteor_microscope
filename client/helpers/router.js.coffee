Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  waitOn: ->
    delay = 100
    start = new Date().getTime()
    while new Date().getTime() < start + delay
      x = 5
    Meteor.subscribe 'posts'

Router.map ->
  @route 'postsList',
    path: '/'

  @route 'postPage',
    path: '/posts/:_id'
    data: ->
      Posts.findOne @params._id

  @route 'postSubmit',
    path: '/submit'