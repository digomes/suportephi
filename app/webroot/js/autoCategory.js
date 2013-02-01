/*global $, document, CbunnyObj */
$(document).ready(function () {

  $('#category-select2').select2({
    placeholder: "Buscar o Modelo",
    minimumInputLength: 1,
    ajax: {
      url: CbunnyObj.APP_PATH + 'categories/busca',
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