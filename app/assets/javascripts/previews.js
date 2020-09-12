$(document).ready(function() {
    return $("#new_preview").on("ajax:success", function(event, xhr, status, error) {
        return $("#result").html(xhr);
    }).on("ajax:error", function(event) {
        return $("#result").html("<p>OpenGraph not found in this URL</p>");
    });
});