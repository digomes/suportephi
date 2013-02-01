/*global $, document, CbunnyObj */
$(document).ready(function () {

  $('#user-select2').select2({
    placeholder: "Buscar o Código do Posto",
    minimumInputLength: 1,
    ajax: {
      url: CbunnyObj.APP_PATH + 'workshops/search',
      dataType: 'json',
      data: function (term, page) {
        return {
          q: term
        };
      },
      results: function (data, page) {
        return { results: data };
      }
    }
  });

});