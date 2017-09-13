SchoolManagement.TeachersShow =
  init: ->
    @_showTeacherMap()

  _showTeacherMap: ->

    mapElement = $('#show-teacher-map').get(0)

    latValue = $('#lat-value').val()
    longValue = $('#long-value').val()

    lat_lng = new (google.maps.LatLng)(latValue, longValue)

    map = new (google.maps.Map)(mapElement,
      zoom: 13
      center: lat_lng)

    marker = new (google.maps.Marker)(
      position: lat_lng
      map: map)