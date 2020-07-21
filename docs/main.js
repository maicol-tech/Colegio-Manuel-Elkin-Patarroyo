$(document).ready(main);

    var contador = 1;

    function main (){

        $('.bt_menu').click(function(){

            $('nav').toggle();

           
        });
    }

// Modal de  la galeria

$('.galeriaIMG').click(function (e) {
    var Imagenes = e.target.src;
    var modal = '<div class="modal" id="modal"><img src="' + Imagenes + '" class="modal_img"><div class="modal_boton" id="modal__boton">X</div></div>'
    $('body').append(modal);
    $('#modal__boton').click(function() {
        $('#modal').remove();
    })
})   