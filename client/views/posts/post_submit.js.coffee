Template.postSubmit.events
  'submit form': (e)->
    e.preventDefault()
    $form = $(e.target)
    post =
      url: $form.find('[name=url]').val()
      title: $form.find('[name=title]').val()
      message: $form.find('[name=message]').val()

    post._id = Posts.insert post
    Router.go 'postPage', post