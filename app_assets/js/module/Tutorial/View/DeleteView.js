define([
    'app',
    'text!module/Tutorial/View/templates/delete.html'
],

function (App, deleteTemplate) {

    "use strict";

    App.module('Tutorial', function (Tutorial, App, Backbone, Marionette, $, _) {

        var DeleteView = Tutorial.DeleteView = Marionette.ItemView.extend({

            className: 'container',

            template: _.template(deleteTemplate)

        });

    });

    return App.Tutorial.DeleteView;

});
