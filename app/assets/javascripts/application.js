// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require datepicker
//= require_tree .
$(document).on('turbolinks:load', function() {

  $('form').on('click', '.remove_record', function(event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('tr').hide();
    return event.preventDefault();

  });

  $('form').on('click', '.add_fields', function(event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $('.fields').append($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });

  $('.datepicker').datepicker({
        format: 'yyyy-mm-dd'
  });

   $('.input-daterange').datepicker({
      		format: 'yyyy-mm-dd'
      	});


  $('#invoice_date').datepicker().on('changeDate', function(){
    var date = $('#invoice_date').val();
    $('.invoice_header_date').empty();
    $('.invoice_header_date').append(date);
  });



  $('form').on('click', function(event) {

//  update_ddetails();

		var total1 = 0;
        var total2 =0;
        var rows = $('.item-row');

for (i = 0; i < rows.length; i++){
console.log(rows.length+ " rows length");
        var row = rows[i];

var random = ".todo_list_tasks_attributes_"+i+"_dstatus.selectedIndex";

var gdrones = $(row).find('.stat').val();

//    var gdrones = $(row).find('.todo_list_tasks_attributes_'+i+'_dstatus.selectedIndex').val();
//		var gdrones = $(row).find('.stat').find('.selected')[0].val();
        console.log(i+" ^ "+gdrones+" %%")
        if(gdrones == "Good"){
         console.log(total1 +"*"+total2)
             total1 = total1+1;
             total2 = total2+1;
        }
        else{
            total1 = total1+1;
        }
       console.log(total1 +" - "+total2)
}

  });


//function update_ddetails() {
//
//		var total1 = 0;
//        var total2 =0;
//
//        var rows = $(this).parents('.item-row');
//		var gdrones = $(rows).find(($('#1').val()));
//        console.log(gdrones+" %%")
//        if(gdrones == "good"){
//         console.log(total1 +"*"+total2)
//             total1 = total1+1;
//             total2 = total2+1;
//        }
//        else{
//            total1 = total1+1;
//        }
//
//
//       console.log(total1 +" - "+total2)
//
//
//
//}

 });


