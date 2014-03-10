jQuery ->
  $('#books tbody tr').each ->
    current = $(this)
    url = current.find("a").attr("href")+"/delete"
    $('<button type="button" class="btn btn-danger">Delete</button>').click ->
      $.ajax(url)
      .done ->
        current.remove()
    .appendTo(current.find("td:last-child"))