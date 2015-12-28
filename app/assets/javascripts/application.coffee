#= require jquery
#= require jquery_ujs
#= require bootstrap-sprockets
#= require best_in_place
#= require jquery.readyselector
#= require_tree .

jQuery ->
  # $("a[rel~=popover], .has-popover").popover()
  $("[data-toggle='tooltip']").tooltip({ container: 'body' })
  $(".dropdown-toggle").dropdown()
  $(".best_in_place").best_in_place()

  $(document).on 'shown.bs.modal', (e) ->
    $('[autofocus]', e.target).focus()