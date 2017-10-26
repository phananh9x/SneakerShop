// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable();
  $("#xoa-sp").click(function (e) {
        var ma = $(this).attr("value");
        $.ajax({
            type: "post",
            url: "../ProductServlet", //this is my servlet
            data: "command=delete&id=" + ma,
            success: function () {
                window.location.href = window.origin + "/SneakerShop/admin/index.jsp";
            }
        })
    });
});
