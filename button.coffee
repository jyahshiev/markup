jQuery ->
  $('#books tbody tr').each ->
    currentRow = $(this)
    url = currentRow.find('a:contains("view")').attr("href")+"/delete"
    $('<button type="button" class="btn btn-danger">Delete</button>').click ->
      $.ajax(url)
      .done ->
        currentRow.remove()
    .appendTo(currentRow.find("td:last-child"))
