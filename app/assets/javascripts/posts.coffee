# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()


 $('#post_category').change ->
    category_id = $('#post_category').val()
    subcategories_path = $('#task_subcategory_id').data('ajax-path')
    subcategories_path_with_params = "#{subcategories_path}?category_id=#{category_id}"

    if category_id
      $.ajax subcategories_path_with_params,
        type: 'GET'
        dataType: 'script'