define([
    'app',
    'text!module/Tutorial/View/templates/forms.html'
],

function (App, formsTemplate) {

    "use strict";

    App.module('Tutorial', function (Tutorial, App, Backbone, Marionette, $, _) {

        var FormsView = Tutorial.FormsView = Marionette.ItemView.extend({

            className: 'container',

            template: _.template(formsTemplate)

        });

    });

    return App.Tutorial.FormsView;

});
