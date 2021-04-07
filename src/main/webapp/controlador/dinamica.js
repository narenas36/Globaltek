/**
 * 
 */

window.onload = function() {

	var footer = $("footer");
	var contenido = $("#plantillaInicio").html();
	$(footer).empty();
	$(footer).append(contenido);

	$("#inicio").click(function() {
		var footer = $("footer");
		var contenido = $("#plantillaInicio").html();
		$(footer).empty();
		$(footer).append(contenido);
	});

	$("#cita").click(function() {
		var footer = $("footer");
		var contenido = $("#plantillaForm").html();
		$(footer).empty();
		$(footer).append(contenido);
		$("#form_datos").validate({
			rules: {
				form_nombre: {
					required: true,
				},
				form_correo: {
					required: true,
					email: true
				},
				form_telefono: {
					required: true,
					number: true
				},
				form_direccion: {
					required: true,
				}
			},
			messages: {
				form_nombre: {
					required: "Debes llenar este espacio.",
				},
				form_correo: {
					required: "Debes llenar este espacio.",
					email: "Debes escribir un correo valido."
				},
				form_telefono: {
					required: "Debes llenar este espacio.",
				},
				form_direccion: {
					required: "Debes llenar este espacio.",
				}
			}
		});
	});

	$("#acerca").click(function() {
		var footer = $("footer");
		var contenido = $("#plantillaAcerca").html();
		$(footer).empty();
		$(footer).append(contenido);
	});
}

function cambio(event) {
	var valor = event.value;
	if (valor == "otro") {
		$(event).after('<div class="form-group">' +
			'<input	type="text" class="form-control" id="form_otro" name="form_otro"' +
			' placeholder="Escribe aqui la mascota que tienes..."> </div>');
	} else {
		if ($("#form_otro").length) {
			$("#form_otro").remove();
		}
	}
}