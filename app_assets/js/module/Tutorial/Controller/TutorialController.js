define([
    'app',
    'module/Tutorial/View/StartView',
    'module/Tutorial/View/DomainView',
    'module/Tutorial/View/DataView',
    'module/Tutorial/View/BaseView',
    'module/Tutorial/View/IndexView',
    'module/Tutorial/View/ShowView',
    'module/Tutorial/View/FormsView',
    'module/Tutorial/View/DeleteView'
],

function (App, StartView, DomainView, DataView, BaseView, IndexView, ShowView, FormsView, DeleteView) {

    "use strict";

    App.module('Tutorial', function (Tutorial, App, Backbone, Marionette, $, _) {

        var TutorialController = Tutorial.TutorialController = Marionette.Controller.extend({

            startAction: function () {
                App.mainRegion.show(new StartView());
            },

            domainAction: function () {
                App.mainRegion.show(new DomainView());
            },

            dataAction: function () {
                App.mainRegion.show(new DataView());
            },

            baseAction: function () {
                App.mainRegion.show(new BaseView());
            },

            indexAction: function () {
                App.mainRegion.show(new IndexView());
            },

            showAction: function () {
                App.mainRegion.show(new ShowView());
            },

            formsAction: function () {
                App.mainRegion.show(new FormsView());
            },

            deleteAction: function () {
                App.mainRegion.show(new DeleteView());
            }

        });

    });

    return App.Tutorial.TutorialController;

});
