
$(function(){
  $('#calc_input_1').change(function(){
    var unitPrice = $('.results__table-row__price_1').text();
    var quantity = $('#calc_input_1').val();
    // var total = unitPrice * quantity *1.1;
    var totalTaxin = unitPrice * quantity *1.1-0.5;
    var total = Math.ceil(totalTaxin);
    $('.calc_result_1').html(total);
  });
  
});

// メモ
// change///要素が変わったら発火
// 薬価計算は５捨５超入