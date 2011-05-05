$(function() {
  $(".tabs").tabs(".panes > .pane");

  function updatePreview () {
    $.post('/', $("#main_form").serialize(), function(data) {
      $('#preview').html(data);
    }, 'script');
  }

  $("#main_form :checkbox").change(function() {
    updatePreview();
  });

  $("#target_locale").change(function() {
    updatePreview();
  });

  $("#current_locale").change(function() {
    $("#main_form").submit();
  })

  $("#save").hide();
});