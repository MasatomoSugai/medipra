


$(function(){
  var i = 1;
  while(i < 200){
    const index = i;

    $('#calc_input_' + index).on('change',function(){

      // バリデーション（半角数値のみ可能）
      $(this).each(function(){
        if(isNaN($(this).val())){
          alert('半角数値のみ可能です');
        };
      });
      // ここから計算処理
        
        var unitPrice = $('.results__table-row__price_' + index).text();
        var quantity = $('#calc_input_' + index).val();
        var totalTaxin = unitPrice * quantity *1.1-0.5;
        var total = Math.ceil(totalTaxin).toLocaleString();
        $('.calc_result_' + index).html(total);
    });
    i++;
  };
});



// メモ
// change///要素が変わったら発火
// .on('keypress keyup change', function(){ ~ })とやると、流石に鬱陶しい
// 薬価計算は５捨５超入（ー０.５をした値を切り上げることで表現）
// Math.ceilは切り上げ処理
// .toLocaleString()で３桁区切り

