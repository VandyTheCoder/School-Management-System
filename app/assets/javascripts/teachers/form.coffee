SchoolManagement.TeachersForm = SchoolManagement.TeachersNew = SchoolManagement.TeachersCreate = SchoolManagement.TeachersEdit = SchoolManagement.TeachersUpdate =
  init: ->
    @_initImageUploader()
    @_initTeacherMap()

  _initImageUploader: ->
    $.each $('.image-uploader'), (index, uploader)->
      uploader = $(uploader)
      input = uploader.find('input[type="file"]')
      imageHolder = uploader.find('img')

      input.on 'change', (e)->
        reader = new FileReader
        reader.onload = (e)->
          imageHolder.attr('src', e.target.result)

        file = @files[0]
        reader.readAsDataURL file

      imageHolder.click ->
        input.click()

  _initTeacherMap: ->
    DEFAULT_LATITUDE = 11.57
    DEFAULT_LONGITUDE = 104.90

    mapElement = $('#map-teacher').get(0)

    latField = $('#teacher-lat')
    longField = $('#teacher-long')

    if latField.val() == '' || longField.val() == ''
      latField.val DEFAULT_LATITUDE
      longField.val DEFAULT_LONGITUDE

    lat_lng = new (google.maps.LatLng)(latField.val(), longField.val())

    map = new (google.maps.Map)(mapElement,
    zoom: 13
    center: lat_lng)

    marker = new (google.maps.Marker)(
      map: map
      draggable: true
      animation: google.maps.Animation.DROP
      position: lat_lng)

    google.maps.event.addListener marker, 'dragend', (event) ->
    
      lat = @getPosition().lat()
      lng = @getPosition().lng()

      latField.val lat
      longField.val lng