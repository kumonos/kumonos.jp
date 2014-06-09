(function() {
  var cursor, load;

  cursor = '/api/1/articles.json';

  load = function() {
    return $.ajax(cursor).done(function(data) {
      var template;
      if (data.status === 'OK') {
        if (data.cursor !== null) {
          cursor = data.cursor;
        }
        template = Handlebars.compile($('#activity-template').html());
        return $('#activities').append(template(data));
      }
    }).fail(function(jqxhr) {
      if (jqxhr.status === 404) {
        return $('#activities').append($('#no-more-articles-template').html());
      }
    });
  };

  this.show_member = function(member_id) {
    return $.ajax('/api/1/members/' + member_id + '.json').done(function(data) {
      var template;
      if (data.status === 'OK') {
        template = Handlebars.compile($('#member-template').html());
        $('#member').html(template(data));
        return $('#member-modal').modal('show');
      }
    });
  };

  $(function() {
    $('#load').click(function() {
      return load();
    });
    return load();
  });

}).call(this);
