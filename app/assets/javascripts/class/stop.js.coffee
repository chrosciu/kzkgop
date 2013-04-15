class Stop

  constructor: ->
    @observeReverseButtons()

  observeReverseButtons: ->
    $('button.reverse_button').on 'click', @reverseButtonClicked

  reverseButtonClicked: (e) =>
    e.preventDefault()
    e.stopPropagation()
    @reverseCheckboxesInButtonFieldset(e.currentTarget)

  reverseCheckboxesInButtonFieldset: (button) ->
    $fieldset = @buttonFieldset(button)
    $checkboxes = @fieldsetCheckboxes($fieldset)
    @reverseCheckbox(checkbox) for checkbox in $checkboxes

  buttonFieldset: (button) ->
    $(button).parents('fieldset')

  fieldsetCheckboxes: ($fieldset) ->
    $fieldset.find("input[type='checkbox']")

  reverseCheckbox: (checkbox) ->
    $(checkbox).prop('checked', !@isChecked(checkbox))

  isChecked: (checkbox) ->
    $(checkbox).prop('checked')

$ -> new Stop
