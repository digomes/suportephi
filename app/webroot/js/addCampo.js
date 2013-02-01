$(function () {
	function removeCampo() {
		$(".removerCampo").unbind("click");
		$(".removerCampo").bind("click", function () {
			i=0;
			$(".addcomp p.campoaddcomp").each(function () {
				i++;
			});
			if (i>1) {
				$(this).parent().remove();
			}
		});
	}
	removeCampo();
	$(".adicionarCampo").live('click',function () {
		novoCampo = $(".addcomp p.campoaddcomp:first").clone();
		novoCampo.find("#s2id_category-select2").val("");
		novoCampo.insertAfter(".addcomp p.campoaddcomp:last");
		removeCampo();
	});
});