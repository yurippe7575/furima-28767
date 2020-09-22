// ①　JSを動かす記述　ok
// ②　価格を入力するHTMLのクラスかIDを変数Aに入れる (document.getElementById)
// ③　上記で入れた変数Aに対しての発火条件を書く
// ④　②の中で入力された値を取り出して変数Bに入れる
// ⑤　変数Bに対して計算し変数C,Dに入れる（出品手数料Cと利益D）
// ⑥　手数料部分には変数Cをインサート
// ⑦　利益部分に変数Dをインサート
// ※出品手数料と利益はDBに保存等の処理はしないのでajaxを使わない（Ajaxappではなく普通のJavaScriptのカリキュラムを参考にしましょう）

window.addEventListener('load', function(){
  const nyuuryoku = document.getElementById("item-price");
  const tesuuryonyuuryoku = document.getElementById("add-tax-price");
  const riekinyuuryoku = document.getElementById("profit");

  nyuuryoku.addEventListener('input', function(){
    const keisan = nyuuryoku.value;
    const tesuuryo = keisan / 10;
    const rieki = keisan - tesuuryo;
    tesuuryonyuuryoku.innerHTML = tesuuryo;
    riekinyuuryoku.innerHTML = rieki
  })
})