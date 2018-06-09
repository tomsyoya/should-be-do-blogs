//tabクラス内のli要素にクリックイベント
$(function(){
    $('.tab li').click(function(){ 
      $('.tab li').removeClass('select');  //全tabクラス内のli要素からselectクラスを削除する
      $(this).addClass('select'); //クリックした要素にselectクラスを付与する

      $('.content li').addClass('hide'); //contentクラス内のli要素全てにhideクラスを付与
      const index = $('.tab li').index($(this)); //クリックした要素の要素番号を取得
      $('.content li').eq(index).removeClass('hide'); //取得した要素番号と同じ要素番号を持つ要素からhideクラスを取り除く
    });
});