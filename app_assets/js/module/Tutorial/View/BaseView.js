define([
    'app',
    'text!module/Tutorial/View/templates/base.html'
],

function (App, baseTemplate) {

    "use strict";

    App.module('Tutorial', function (Tutorial, App, Backbone, Marionette, $, _) {

        var BaseView = Tutorial.BaseView = Marionette.ItemView.extend({

            className: 'container',

            template: _.template(baseTemplate)

        });

    });

    return App.Tutorial.BaseView;

});
