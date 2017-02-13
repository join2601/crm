var Dialog = {
    show: function(){//显示 Dialog.show();
        $("body").append('<div class="black-overlay"></div>');
    },
    hide: function(){//隐藏 Dialog.hide();
        $(".black-overlay").remove();
    }
};