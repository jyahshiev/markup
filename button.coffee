jQuery ->
  $('#books tbody tr').each ->
    current = $(this)
    url = current.find("a").attr("href")+"/delete"
    console.log(url)
    $('<button type="button" class="btn btn-danger">Delete</button>').click ->
      $.ajax(url)
      .done ->
        current.remove()
    .appendTo(current.find("td:last-child"))