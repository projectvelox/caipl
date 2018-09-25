/*
    title: Bootstrap Dialogs By Neimark
    description: A js plugin to display dialogs like javascript's alert, confirm, and prompt (bootstrap dependent)
    date: 09-24-2017
    version: 1.2.1
*/
function BootstrapDialog(options) {
    if(!options) options = {};
    var myOptions = {
        preloaderClass: options.preloaderClass || '',
        buttonClass: options.buttonClass || 'btn-default',
        dialogTitleTag: options.dialogTitleTag || 'h4',
        dialogSize: options.dialogSize || '',
        animation: (options.animation === undefined)? true : options.animation
    };
    var ModalObject = function (options) {
        if(!options) options = {};
        var modalOptions = {
            backdrop: (options.backdrop === undefined)? 'static' : options.backdrop,
            keyboard: (options.keyboard === undefined)? false : options.keyboard,
            show: (options.show === undefined)? true : options.show
        };
        var ThisModal = this;
        this.title = document.createElement(myOptions.dialogTitleTag);
        this.header = document.createElement('div');
        this.body = document.createElement('div');
        this.footer = document.createElement('div');
        this.content = document.createElement('div');
        this.dialog = document.createElement('div');
        this.modal = document.createElement('div');
        this.onShow = function () {};
        this.onShown = function () {};
        this.onHide = function () {};
        this.onHidden = function () {};
        var animation = (myOptions.animation)? 'fade' : '';
        $(this.title)
            .attr('class','modal-title');
        $(this.header)
            .attr('class','modal-header')
            .append(this.title);
        $(this.body)
            .attr('class','modal-body');
        $(this.footer)
            .attr('class','modal-footer');
        $(this.content)
            .attr('class','modal-content')
            .append(this.header)
            .append(this.body)
            .append(this.footer);
        $(this.dialog)
            .attr('class','modal-dialog ' + myOptions.dialogSize)
            .attr('role','document')
            .append(this.content);
        $(this.modal)
            .attr('class','modal ' + animation)
            .attr('tabindex','-1')
            .attr('role','dialog')
            .append(this.dialog)
            .on('show.bs.modal', function () {
                ThisModal.onShow();
            })
            .on('shown.bs.modal', function () {
                ThisModal.onShown();
            })
            .on('hide.bs.modal', function () {
                ThisModal.onHide();
            })
            .on('hidden.bs.modal', function () {
                $(ThisModal.modal).remove();
                ThisModal.onHidden();
            })
            .modal({
                backdrop: modalOptions.backdrop,
                keyboard: modalOptions.keyboard,
                show: modalOptions.show
            });
        $('body').append(this.modal);
    };
    this.alert = function (title, message, callback) {
        var _title = title || '';
        var _message = message || '';
        var _callback = callback || function () {};
        var myModal = new ModalObject({
            backdrop: true,
            keyboard: true
        });
        var component = {
            paragraph: document.createElement('p'),
            ok_button: document.createElement('button')
        };
        $(component.paragraph)
            .html(_message);
        $(component.ok_button)
            .attr('type', 'button')
            .attr('class', 'btn ' + myOptions.buttonClass)
            .html('OK')
            .on('click', function () {
                $(myModal.modal).modal('hide');
            });
        $(myModal.title)
            .html(_title);
        $(myModal.body)
            .append(component.paragraph);
        $(myModal.footer)
            .append(component.ok_button);
        myModal.onHide = function () {
            _callback();
        };
        myModal.onShown = function () {
            $(component.ok_button).focus();
        };
    };
    this.confirm = function (title, message, callback) {
        var _title = title || '';
        var _message = message || '';
        var _callback = callback || function () {};
        var myModal = new ModalObject();
        var confirmResult = false;
        var component = {
            paragraph: document.createElement('p'),
            no_button: document.createElement('button'),
            yes_button: document.createElement('button')
        };
        $(component.paragraph)
            .html(_message);
        $(component.no_button)
            .attr('type', 'button')
            .attr('class', 'btn btn-default')
            .html('No')
            .on('click', function () {
                confirmResult = false;
                $(myModal.modal).modal('hide');
            });
        $(component.yes_button)
            .attr('type', 'button')
            .attr('class', 'btn ' + myOptions.buttonClass)
            .html('Yes')
            .on('click', function () {
                confirmResult = true;
                $(myModal.modal).modal('hide');
            });
        $(myModal.title)
            .html(_title);
        $(myModal.body)
            .append(component.paragraph);
        $(myModal.footer)
            .append(component.no_button)
            .append(component.yes_button);
        myModal.onHide = function () {
            _callback(confirmResult);
        };
        myModal.onShown = function () {
            $(component.yes_button).focus();
        };
    };
    this.prompt = function (title, message, callback, options) {
        if(!options) options = {};
        var promptOptions = {
            label: options.label || '',
            type: options.type || 'text',
            placeholder: options.placeholder || '',
            value: options.value || '',
            required: (options.required === undefined)? true : options.required,
            list: options.list
        };
        var _title = title || '';
        var _message = message || '';
        var _callback = callback || function () {};
        var promptResult = undefined;
        var myModal = new ModalObject({
            backdrop: (!promptOptions.required)? true : 'static',
            keyboard: !promptOptions.required
        });
        var component = {
            paragraph: document.createElement('p'),
            cancel_button: document.createElement('button'),
            ok_button: document.createElement('button'),
            label: document.createElement('span'),
            input: document.createElement('input'),
            input_group: document.createElement('div'),
            form: document.createElement('form')
        };
        $(component.paragraph)
            .html(_message);
        $(component.label)
            .html(promptOptions.label)
            .attr('class','input-group-addon');
        $(component.input)
            .attr('type', promptOptions.type)
            .attr('placeholder', promptOptions.placeholder)
            .attr('value', promptOptions.value)
            .attr('class', 'form-control');
        if(promptOptions.required)
            $(component.input)
                .attr('required', 'required');
        if(options.list)
            $(component.input)
                .attr('list', options.list);
        $(component.input_group)
            .attr('class', 'input-group')
            .append(component.label)
            .append(component.input);
        $(component.cancel_button)
            .attr('type', 'button')
            .attr('class', 'btn btn-default')
            .html('CANCEL')
            .on('click', function () {
                promptResult = undefined;
                $(myModal.modal).modal('hide');
            });
        $(component.ok_button)
            .attr('type', 'submit')
            .attr('class', 'btn ' + myOptions.buttonClass)
            .html('OK');
        $(component.form)
            .attr('action', '/')
            .append(myModal.content)
            .on('submit', function (e) {
                e.preventDefault();
                promptResult = $(component.input).val();
                $(myModal.modal).modal('hide');
            });
        $(myModal.title)
            .html(_title);
        $(myModal.body)
            .append(component.paragraph)
            .append(component.input_group);
        if(!promptOptions.required)
            $(myModal.footer)
                .append(component.cancel_button);
        $(myModal.footer)
            .append(component.ok_button);
        $(myModal.dialog)
            .append(component.form);
        myModal.onHide = function () {
            _callback(promptResult);
        };
        myModal.onShown = function () {
            $(component.ok_button).focus();
        };
    };
    this.preloader = function (label) {
        label = label || 'Loading...';
        var myModal = new ModalObject();
        var shown = false;
        var destroyOnShown = false;
        var component = {
            paragraph: document.createElement('p'),
            progress: document.createElement('div'),
            progress_bar: document.createElement('div')
        };
        myModal.header.remove();
        myModal.footer.remove();
        myModal.onShown = function () {
            shown = true;
            if(destroyOnShown) $(myModal.modal).modal('hide');
        };

        $(component.progress_bar)
            .attr('class','progress-bar progress-bar-striped progress-bar-animated ' + myOptions.preloaderClass)
            .attr('role', 'progressbar')
            .attr('aria-valuenow', '100')
            .attr('aria-valuemin', '0')
            .attr('aria-valuemax', '100')
            .css('width', '100%');

        $(component.progress)
            .attr('class','progress')
            .append(component.progress_bar);

        $(component.paragraph)
            .css('margin', '0')
            .css('padding', '0')
            .html(label);

        $(myModal.body)
            .append(component.paragraph)
            .append('<hr />')
            .append(component.progress);

        this.changeLabel = function (label) {
            $(component.paragraph).html(label);
        };
        this.destroy = function () {
            if(shown) $(myModal.modal).modal('hide');
            else destroyOnShown = true;
        };
    }
}