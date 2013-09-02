jQuery(document).ready(function () {
    var title = jQuery(this).attr('title').replace(' ','').replace('Pavertech-','').replace('á','a').toLowerCase();
    alert(title);
    $('body').attr('id',title);
});