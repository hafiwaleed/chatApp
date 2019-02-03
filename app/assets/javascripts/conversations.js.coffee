# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "click", ".chat-user", (e) ->
  e.preventDefault()
  link = $(this)[0].href
  $.ajax
    type: 'GET'
    url: link
    dataType: 'html'
    success: (data) ->
      $(".user-messages").html(data)
      return
    error: ->
      console.log "something went wrong"
      return
