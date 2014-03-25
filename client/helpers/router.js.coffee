Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  waitOn: ->
    delay = 2000
    start = new Date().getTime()
    while new Date().getTime() < start + delay
      x = 5
    Meteor.subscribe 'posts'

Router.map ->
  @route 'postsList',
    path: '/'
