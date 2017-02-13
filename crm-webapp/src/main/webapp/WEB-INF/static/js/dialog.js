var _dialog = function () {

};

_dialog.prototype.normal = '<div id="dialog-modal">'+
		'<div id="dialog-hide">×</div>'+
		// '<div id="dialog-header"></div>'+
		'<div id="dialog-body"></div>'+
		// '<div id="dialog-footer"></div>'+
	'</div>';

_dialog.prototype.confirm = '<div id="dialog-modal">'+
		// '<div id="dialog-hide">×</div>'+
		// '<div id="dialog-header"></div>'+
		'<div id="dialog-body"></div>'+
		'<div id="dialog-footer">'+
			'<span id="dialog-confirm">确定</span>'+
			'<span id="dialog-cancel">取消</span>'+
		'</div>'+
	'</div>';

_dialog.prototype._show = function (type, title, content, okMethod) {
    if ('normal' === type){
        $(document.body).append('<div id="dialog-bg"></div>');
        $(document.body).append(this.normal);
    }

    if ('confirm' === type){
        $(document.body).append('<div id="dialog-bg"></div>');
        $(document.body).append(this.confirm);

        $('#dialog-confirm').on('click', function () {
            if (typeof okMethod === "function") {
                okMethod();
            }
            $('#dialog-modal').remove();
             $('#dialog-bg').remove();
        });

        $('#dialog-cancel').on('click', function () {
            $('#dialog-modal').remove();
             $('#dialog-bg').remove();
        });
    }

    $('#dialog-header').text(title);
    $('#dialog-body').html(content);
    $('#dialog-modal').show();
    $('#dialog-bg').show();

    $('#dialog-hide').bind('click', function () {
        $('#dialog-modal').remove();
        $('#dialog-bg').remove();
    });
};

_dialog.prototype.hide = function (title, content) {
    $('#dialog-modal').remove();
};

var dialog = new _dialog();

dialog.show = {
    normal: function (title, content) {
        dialog._show('normal', title, content);
    },
    confirm: function (title, content, okMethod) {
        dialog._show('confirm', title, content, okMethod);
    }
};