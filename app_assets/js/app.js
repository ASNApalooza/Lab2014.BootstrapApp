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

    // Add navigation events
    var addNavTriggers = function () {
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

    // Remove navigation events
    var removeNavTriggers = function () {
        var $triggers = $('a[data-asna-nav^="route"]');
        if ($triggers.length > 0) {
            $triggers.off('click.asna-nav');
        }
    };

    // Add scrollTop to history state
    var updateHistoryState = function () {
        if (Modernizr.history) {
            history.replaceState(
                _.extend(history.state || {}, {
                    scrollTop: $('html').scrollTop()
                }),
                document.title,
                window.location
            );
        }
    };

    // Read scrollTop from history state
    var updateScrollTop = function () {
        var scrollTop = 0;
        if (Modernizr.history) {
            if (history.state && history.state.scrollTop) {
                scrollTop = history.state.scrollTop;
            }
        }
        $('html').scrollTop(scrollTop);
    };

    // Custom page_unload event handler
    App.on('asna:page_unload', function () {
        updateHistoryState();
        removeNavTriggers();
    });

    // Custom page_load event handler
    App.on('asna:page_load', function () {
        addNavTriggers();
        prettyPrint();
        updateScrollTop();
    });

    // Enable routing
    App.on('start', function (config) {
        if (Backbone.history) {
            App.router = Backbone.history;
            App.router.start({ root: config.baseUrl });
        }
    });

    return App;

});
