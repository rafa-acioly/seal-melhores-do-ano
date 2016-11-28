/**
 * Created by dev on 28/11/16.
 */
$(document).ready(function () {
    $('form').submit(function (event) {
        var $categoria1 = $("[name='teamWork']").val();
        var $categoria2 = $("[name='proActivity']").val();
        var $categoria3 = $("[name='deliveryOfResult']").val();

        Object.prototype.in = function() {
            for(var i=0; i < arguments.length; i++)
                if(arguments[i] == this) return true;
            return false;
        }

        if ($categoria1.in($categoria2, $categoria3) ||
            $categoria2.in($categoria1, $categoria3) ||
            $categoria3.in($categoria1, $categoria2)) {
            $('.alert').show();
            return false;
        }

        if (!confirm('Deseja finalizar a votação?')) {
            return false;
        }
    });
});
