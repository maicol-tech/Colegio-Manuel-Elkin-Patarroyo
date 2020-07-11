$(document).ready(main);

    var contador = 1;

    function main (){

        $('.bt_menu').click(function(){

            $('nav').toggle();

           
        });
    }

    $('.galeria_img').click(function(e){
        var img = e.target.src;
        var modal = `<div class="modal"><img src="${img}" alt="" class="modal_img"><div class="modal_boton">X</div></div>`
            $('body').append(modal);

    })