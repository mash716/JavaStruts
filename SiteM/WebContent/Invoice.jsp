<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <script src="/jQuery/jquery.min.js"></script>
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <script type="text/javascript" src="js/alert.js"></script>
  </head>
  <body>
    <div class="container">
      <h1 style="text-align:center;"><span class="category">注文</span>書</h1>
      <div class="row">
        <div class="col-md-7 col-xs-7">
          <h2 id="name">株式会社 xx 御中</h2>
          〒<span id="zip">XXX-XXXXX</span><br/>
          <span id="address1">東京都XX区XXXX1-2-3</span><br/>
          <span id="address2">XXビル1F</span><br/>
          TEL:<span id="tel">03-1234-5678</span><br/>
          FAX:<span id="fax">00-0000-0000</span>
        </div>
        <div class="col-md-5 col-xs-5" style="text-align:right;">
          <big><span id="date">2013年8月31日</span></big><br/>
          <span class="category">注文書</span>番号 <span id="code">YYYYMMDD-XX</span>
          <h3>ワルブリックス株式会社</h3>
          〒101-0052<br/>
          東京都千代田区神田小川町3-11-2<br/>
          インペリアル御茶の水219<br/>
          TEL: 03-5283-8162<br/>
          FAX: 03-5283-8169<br/>
          <br/>
          担当: <span id="person-in-charge">○○ ××</span>
        </div>
      </div>
      <div style="margin-top:2em;"></div>
      <div class="row">
        <div class="col-md-8 col-xs-8">
          <big><span class="category">注文書</span></big>
        </div>
        <div class="col-md-4 col-xs-4" style="text-align:right;">
          単位: 円
        </div>
      </div>

      <table class="table">
        <thead>
          <tr>
            <th style="width:4em;text-align:right;">項番</th><th>品名</th><th style="width:4em;text-align:right;">数量</th><th style="width:4em;">単位</th><th style="text-align:right;">単価</th><th style="text-align:right;">金額</th>
          </tr>
        </thead>
        <tbody>
          <tr class="row-template">
            <td class="num" style="text-align:right;">N</td><td class="name">PRODUCT NAME</td><td class="qty" style="text-align:right;">NN</td><td class="unit">人日</td><td class="unit-price" style="text-align:right;">XX,000</td><td class="price" style="text-align:right;">XX,000</td>
          </tr>
          <tr>
            <td colspan="3" rowspan="3"><div class="bank"><h4>振込先</h4>三菱東京UFJ銀行 神田支店 普通 6572036 ワルブリックス(カ<br/>又は<br/>楽天銀行　ビート支店 普通 7023499 ワルブリックス(カ </div><h4>備考</h4></td><td colspan="2">小計</td><td class="minor-total" style="text-align:right;">XX,000</td>
          </tr>
          <tr>
            <td colspan="2">消費税(<span class="tax-rate">5</span>%)</td><td class="vat" style="text-align:right;">XX,000</td>
          </tr>
          <tr>
            <td colspan="2">合計</td><td style="text-align:right;"><big><strong><span class="grand-total">XX,000</span></strong></big></td>
          </tr>
        </tbody>
      </table>
    </div>
  </body>
</html>