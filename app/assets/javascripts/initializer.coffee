SchoolManagement.Initializer =
  exec: (pageName) ->
    if pageName && SchoolManagement[pageName]
      SchoolManagement[pageName]['init']()

  currentPage: ->
    return '' unless $('body').attr('id')

    bodyIds     = $('body').attr('id').split('_')
    pageName    = ''
    for bodyId in bodyIds
      pageName += SchoolManagement.Util.capitalize(bodyId)
    pageName

  init: ->
    SchoolManagement.Initializer.exec('Common')
    if @currentPage()
      SchoolManagement.Initializer.exec(@currentPage())

$(document).on 'ready page:load', ->
  SchoolManagement.Initializer.init()
