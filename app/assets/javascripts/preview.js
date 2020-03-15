$(function() {
  // previewボタンで発火
  $('#preview').on("click", function() {
    var text = $('#post-textarea').val();
    if (text == "") {
      return;
    }
    $.ajax({
      url: '/api/posts/preview',
      type: 'GET',
      dataType: 'json',
      data: { content: text }
    })
    .done(function(html) {
      $('#post-textarea').parent().css('display', 'none');
      $('#preview-area').append(html.content);
      $('#markdown').removeClass('disabled');
      $('#preview').addClass('disabled');
    })
    .fail(function() {
      alert('マークダウンを表示できません')
    })
  });

  // イベント発火
  $('#markdown').on('click', function() {
    $('#post-textarea').parent().css('display', '');
    $('#preview-area').empty();
    $('#preview').removeClass('disabled');
    $('#markdown').addClass('disabled');
  });
});