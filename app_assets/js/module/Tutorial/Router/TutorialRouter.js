define([
    'app',
    'module/Tutorial/Controller/TutorialController'
],

function (App, TutorialController) {

    "use strict";

    App.module('Tutorial', function (Tutorial, App, Backbone, Marionette, $, _) {

        var tutorialController;

        var getController = function () {
            if (!tutorialController) {
                tutorialController = new TutorialController();
            }

            return tutorialController;
        };

        var TutorialRouter = Tutorial.TutorialRouter = Marionette.AppRouter.extend({
            appRoutes: {
                'tutorial/part-0-start': 'startAction',
                'tutorial/part-1-domain': 'domainAction',
                'tutorial/part-2-data': 'dataAction',
                'tutorial/part-3-base': 'baseAction',
                'tutorial/part-4-index': 'indexAction',
                'tutorial/part-5-show': 'showAction',
                'tutorial/part-6-forms': 'formsAction',
                'tutorial/part-7-delete': 'deleteAction'
            }
        });

        var API = {
            startAction: function () {
                var controller = getController();
                App.setDocTitle('Start');
                App.router.navigate('tutorial/part-0-start');
                controller.startAction();
                App.trigger('asna:page_load');
            },
            domainAction: function () {
                var controller = getController();
                App.setDocTitle('Domain');
                App.router.navigate('tutorial/part-1-domain');
                controller.domainAction();
                App.trigger('asna:page_load');
            },
            dataAction: function () {
                var controller = getController();
                App.setDocTitle('Data');
                App.router.navigate('tutorial/part-2-data');
                controller.dataAction();
                App.trigger('asna:page_load');
            },
            baseAction: function () {
                var controller = getController();
                App.setDocTitle('Base');
                App.router.navigate('tutorial/part-3-base');
                controller.baseAction();
                App.trigger('asna:page_load');
            },
            indexAction: function () {
                var controller = getController();
                App.setDocTitle('Index');
                App.router.navigate('tutorial/part-4-index');
                controller.indexAction();
                App.trigger('asna:page_load');
            },
            showAction: function () {
                var controller = getController();
                App.setDocTitle('Show');
                App.router.navigate('tutorial/part-5-show');
                controller.showAction();
                App.trigger('asna:page_load');
            },
            formsAction: function () {
                var controller = getController();
                App.setDocTitle('Forms');
                App.router.navigate('tutorial/part-6-forms');
                controller.formsAction();
                App.trigger('asna:page_load');
            },
            deleteAction: function () {
                var controller = getController();
                App.setDocTitle('Delete');
                App.router.navigate('tutorial/part-7-delete');
                controller.deleteAction();
                App.trigger('asna:page_load');
            }
        };

        App.on('route:tutorial:start', function () {
            App.trigger('asna:page_unload');
            API.startAction();
        });

        App.on('route:tutorial:domain', function () {
            App.trigger('asna:page_unload');
            API.domainAction();
        });

        App.on('route:tutorial:data', function () {
            App.trigger('asna:page_unload');
            API.dataAction();
        });

        App.on('route:tutorial:base', function () {
            App.trigger('asna:page_unload');
            API.baseAction();
        });

        App.on('route:tutorial:index', function () {
            App.trigger('asna:page_unload');
            API.indexAction();
        });

        App.on('route:tutorial:show', function () {
            App.trigger('asna:page_unload');
            API.showAction();
        });

        App.on('route:tutorial:forms', function () {
            App.trigger('asna:page_unload');
            API.formsAction();
        });

        App.on('route:tutorial:delete', function () {
            App.trigger('asna:page_unload');
            API.deleteAction();
        });

        App.addInitializer(function () {
            new TutorialRouter({ controller: API });
        });

    });

    return App.Tutorial.TutorialRouter;

});
