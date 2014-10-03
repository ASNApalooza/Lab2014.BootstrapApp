// Twitter Bootstrap Validation
//
// Requires jQuery
// Requires Twitter Bootstrap v3 to display styles
(function (root, $) {

    "use strict";

    // Save a local reference to original ValidatorUpdateDisplay
    var SystemValidatorUpdateDisplay = root.ValidatorUpdateDisplay;

    // Checks if a form group has errors
    //
    // If the form group contains visible error messages, will return true
    //
    // param jQuery object $group A jQuery wrapped form-group element to search
    //
    // return boolean
    function hasErrors($group) {
        var hasErrors = false;
        $group.find('.help-block').each(function () {
            var $item = $(this);
            if ($item.is(':visible')) {
                hasErrors = true;
            }
        });

        return hasErrors;
    }

    // Custom validate function
    //
    // If the field is not valid, span contains an error message
    //
    // param DOMElement val span element with two attached properties
    //       val.isvalid (bool) Whether or not the field is valid
    //       val.controltovalidate (string) The field ID
    //
    // return void
    function validate(val) {
        // Call the default ASP.NET display of validation errors
        SystemValidatorUpdateDisplay(val);

        // Add the help-text CSS class
        $(val).addClass('help-block');

        // Retrieve the closest ancestor form-group element
        var $group = $('#' + val.controltovalidate).closest('.form-group');

        // Add or remove error classes as needed
        if (!val.isvalid) {
            $group.addClass('has-error');
        } else {
            if (!hasErrors($group)) {
                $group.removeClass('has-error');
            }
        }
    }

    // Replace ASP.NET ValidatorUpdateDisplay with validate function
    $(document).ready(function () {
        root.ValidatorUpdateDisplay = validate;
    });

})(this, jQuery);
