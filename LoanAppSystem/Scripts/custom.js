
$(function () {
    $('[data-toggle="tooltip"]').tooltip()

})

$(function () {
    toastr.options.timeOut = 1900; // 1.5s
    $('#linkButton').click(function () {
        toastr.success('Click Button');
    });
});
