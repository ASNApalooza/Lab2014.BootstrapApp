define([
    'backbone',
    'marionette',
    'jquery',
    'underscore'
],

function (Backbone, Marionette, $, _) {

    "use strict";

    var App = new Marionette.Application();

    // Add regions
    App.addRegions({
        navRegion: '#navigation',
        mainRegion: '#main',
        footerRegion: '#footer'
    });

    // Set the document title
    App.setDocTitle = function (str) {
        document.title = str + ' | Get out of the CSS Tarpit with Bootstrap';
    };

    // Routing events
    App.addNavTriggers = function () {
        var $triggers = $('a[data-asna-nav^="route"]');
        if ($triggers.length > 0) {
            $triggers.on('click.asna-nav', function (e) {
                e.preventDefault();
                var $target = $(e.target);
                var eventName = $target.attr('data-asna-nav');
                var args = $target.attr('data-asna-nav-args');
                args = args ? args.split('|') : [];
                args.unshift(eventName);
                App.trigger.apply(App, args);
            });
        }
    };
    App.removeNavTriggers = function () {
        var $triggers = $('a[data-asna-nav^="route"]');
        if ($triggers.length > 0) {
            $triggers.off('click.asna-nav');
        }
    };

    // Enable routing
    App.on('start', function (config) {
        if (Backbone.history) {
            App.router = Backbone.history;
            App.router.start({ root: config.baseUrl });
        }
    });

    return App;

});
