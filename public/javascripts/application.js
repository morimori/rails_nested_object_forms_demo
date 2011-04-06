function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}

function add_fields(link, association, content, target) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(target).append(content.replace(regexp, new_id));
}
