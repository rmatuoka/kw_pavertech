jQuery(document).ready(function () {
    var title = jQuery(this).attr('title').replace(' ','').replace('Pavertech-','').replace('á','a').toLowerCase();
    $('body').attr('id',title);
});