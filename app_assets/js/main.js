require([
    'app',
    'module/Default/Router/DefaultRouter',
    'module/Download/Router/DownloadRouter',
    'module/Slide/Router/SlideRouter',
    'module/Tutorial/Router/TutorialRouter',
    'bootstrap'
],

function (App) {

    "use strict";

    window.App = App;

    // Routing events
    App.addInitializer(function () {
        App.addNavTriggers();
    });

    App.start({ baseUrl: $('#base_url').val() });

});
