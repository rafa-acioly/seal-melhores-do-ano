$('document').ready(function () {
    $('form').submit(function (event) {
        $('.button').addClass('is-loading');
        var $commitment = $("[name='commitment']").val();
        var $proActivity = $("[name='proActivity']").val();
        var $superation = $("[name='superation']").val();
        var $teamWork = $("[name='teamWork']").val();
        var $planningAndOrganization = $("[name='planningAndOrganization']").val();

        Object.prototype.in = function () {
            for (var i = 0; i < arguments.length; i++)
                if (arguments[i] == this) return true;
            return false;
        };

        if ($commitment.in($proActivity, $superation, $teamWork, $planningAndOrganization) ||
            $proActivity.in($commitment, $superation, $teamWork, $planningAndOrganization) ||
            $superation.in($commitment, $proActivity, $teamWork, $planningAndOrganization) ||
            $teamWork.in($commitment, $proActivity, $superation, $planningAndOrganization) ||
            $planningAndOrganization.in($commitment, $proActivity, $superation, $teamWork)) {
            swal(
              'Ops!',
              'Não é permitido votar em uma pessoa para mais de 1 categoria.',
              'info'
            )
            $('.button').toggleClass('is-loading');
            return false;
        }

        if (!confirm('Deseja finalizar a votação?')) {
            $('.button').removeClass('is-loading');
            return false;
        }

    });

    $('.delete').on('click', function () {
        $('.notification').toggleClass('is-hidden');
    });
});
