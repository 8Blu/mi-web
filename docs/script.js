
// Funcion que valida los datos ingresados en un formulario
function validarFormulario() {
  const nota = parseInt(document.getElementById('nota').value);

  // Obtiene el valor del campo con id 'comentario' y elimina espacios al inicio y al final
  const comentario = document.getElementById('comentario').value.trim();

  // Verifica si la nota no es un número o está fuera del rango 1-10
  if (isNaN(nota) || nota < 1 || nota > 10) {
    alert('Por favor, introduce una nota válida entre 1 y 10.');
    return false;
  }

  // Verifica si el comentario excede los 500 caracteres
  if (comentario.length > 500) {
    alert('El comentario no puede superar los 500 caracteres.');
    return false; 
  }

  // Si pasa todas las validaciones, muestra un mensaje de agradecimiento
  alert('¡Gracias por tu evaluacion!');
  return true; 
}
