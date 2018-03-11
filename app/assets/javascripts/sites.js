$(document).ready(function() {
    $('#genShortPathBtn').click(function() {
        $.ajax({
            url: '/sites/generate_short_path',
            dataType : 'json',
            success: function(data) {
                $('#site_short_path').val(data['short_path']);
            }
        });
    });
});