# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#new_contact").bind("ajax:success", (e, data, status, xhr) ->
    # console.log(e)
    e.preventDefault()
    console.log(status)
    console.log(xhr.responseText)
    $(".alert").append("Success")
  ).bind "ajax:error", (e, xhr, status, error) ->
    $(".alert").append("Error")
