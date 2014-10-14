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
                App.removeNavTriggers();
                App.addNavTriggers();
                prettyPrint();
            },
            domainAction: function () {
                var controller = getController();
                App.setDocTitle('Domain');
                App.router.navigate('tutorial/part-1-domain');
                controller.domainAction();
                App.removeNavTriggers();
                App.addNavTriggers();
                prettyPrint();
            },
            dataAction: function () {
                var controller = getController();
                App.setDocTitle('Data');
                App.router.navigate('tutorial/part-2-data');
                controller.dataAction();
                App.removeNavTriggers();
                App.addNavTriggers();
                prettyPrint();
            },
            baseAction: function () {
                var controller = getController();
                App.setDocTitle('Base');
                App.router.navigate('tutorial/part-3-base');
                controller.baseAction();
                App.removeNavTriggers();
                App.addNavTriggers();
                prettyPrint();
            },
            indexAction: function () {
                var controller = getController();
                App.setDocTitle('Index');
                App.router.navigate('tutorial/part-4-index');
                controller.indexAction();
                App.removeNavTriggers();
                App.addNavTriggers();
                prettyPrint();
            },
            showAction: function () {
                var controller = getController();
                App.setDocTitle('Show');
                App.router.navigate('tutorial/part-5-show');
                controller.showAction();
                App.removeNavTriggers();
                App.addNavTriggers();
                prettyPrint();
            },
            formsAction: function () {
                var controller = getController();
                App.setDocTitle('Forms');
                App.router.navigate('tutorial/part-6-forms');
                controller.formsAction();
                App.removeNavTriggers();
                App.addNavTriggers();
                prettyPrint();
            },
            deleteAction: function () {
                var controller = getController();
                App.setDocTitle('Delete');
                App.router.navigate('tutorial/part-7-delete');
                controller.deleteAction();
                App.removeNavTriggers();
                App.addNavTriggers();
                prettyPrint();
            }
        };

        App.on('route:tutorial:start', function () {
            API.startAction();
        });

        App.on('route:tutorial:domain', function () {
            API.domainAction();
        });

        App.on('route:tutorial:data', function () {
            API.dataAction();
        });

        App.on('route:tutorial:base', function () {
            API.baseAction();
        });

        App.on('route:tutorial:index', function () {
            API.indexAction();
        });

        App.on('route:tutorial:show', function () {
            API.showAction();
        });

        App.on('route:tutorial:forms', function () {
            API.formsAction();
        });

        App.on('route:tutorial:delete', function () {
            API.deleteAction();
        });

        App.addInitializer(function () {
            new TutorialRouter({ controller: API });
        });

    });

    return App.Tutorial.TutorialRouter;

});
