$('.table-dragable tbody .grabable').mousedown(function (e) {
  var tr = $(e.target).closest('tr'), sy = e.pageY, drag;
  if ($(e.target).is('tr')) tr = $(e.target);
  var index = tr.index();
  $(tr).addClass('grabbed');
  function move (e) {
    if (!drag && Math.abs(e.pageY - sy) < 10) return;
    drag = true;
    tr.siblings().each(function() {
      var s = $(this), i = s.index(), y = s.offset().top;
      if (e.pageY >= y && e.pageY < y + s.outerHeight()) {
        if (i < tr.index()) s.insertAfter(tr);
        else s.insertBefore(tr);
        return false;
      }
    });
  }
  function up (e) {
    if (drag && index != tr.index()) {
      drag = false;
    }
    $(document).unbind('mousemove', move).unbind('mouseup', up);
    $(tr).removeClass('grabbed');
  }
  $(document).mousemove(move).mouseup(up);
});
