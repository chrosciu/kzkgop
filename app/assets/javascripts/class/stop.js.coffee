class Stop

  constructor: ->
    @observeReverseButton()

  observeReverseButton: ->
    $('button.reverse_button').on 'click', @reverseButtonClicked

  reverseButtonClicked: (e) =>
    e.preventDefault()
    e.stopPropagation()
    @reverseDirections()

  reverseDirections: ->
    @reverseDirection(direction) for direction in $('input.direction_checkbox')

  reverseDirection: (direction) ->
    $(direction).prop('checked', !@isChecked(direction))

  isChecked: (direction) ->
    $(direction).prop('checked')

$ -> new Stop
