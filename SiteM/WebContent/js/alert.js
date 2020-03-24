function clickBtn2(){
	/*
	 * jsの入力を取得する方法は、「struts-config.xml」.「property」.value
	 *
	 *
	 * */
	var userid = LoginForm.userid.value;
	var password = LoginForm.password.value;

	//入力空チェック
    if (userid == "" || password == ""){
    	alert("空白やで");
        return false;
    }
    return true;
}

function clickBtn3(){
	/*
	 * jsの入力を取得する方法は、「struts-config.xml」.「property」.value
	 *
	 *
	 * */
	var aduser = AdminForm.aduser.value;
	var adpass = AdminForm.adpass.value;

	//入力空チェック
    if (aduser == "" || adpass == ""){
    	alert("空白やで");
        return false;
    }

    return true;
}

/*jquery練習*/
/* 削除処理とフォント色処理 */
window.addEventListener('DOMContentLoaded', function(){
	window.onload = function(){
		/** jQueryの処理 */
		$('#js-target1').children('p').css('color', '#ff0000');
		  $('#delete').click(function(){
				var userid = DeleteForm.userid.value;
				var password = DeleteForm.password.value;

				//入力空チェック
			    if (userid == "" || password == ""){
			    	alert("空白やで");
			        return false;
			    }
			    if(!confirm('削除しますが宜しいでしょうか？？')){
			        /* キャンセルの時の処理 */
			        return false;
			    }

			    return true;
		  });
	};
});
//色やフォントや背景の色編集と登録処理
window.addEventListener('DOMContentLoaded', function(){
	  $('#js-target p').css({
		    'color': '#ff0000',
		    'background-color': '#eee',
		    'font-size': '20px'
		  });
	  /*jqueryでcssを使う
	   * CSSとjqueryは別で処理をした方がよい
	   * 
	   *
	   *
	   *
	   * */
	  $('#update').css({
			'color': '#ff0000',
			'background-color': '#eee',
			'font-size': '20px',
			'display'       : 'inline-block',
			'border-radius' : '5%',
			'font-size'     : '18pt',
			'text-align'    : 'center',
			'cursor'        : 'pointer',
			'padding'       : '12px 30px',
			'background'    : '#000066',
			'color'         : '#ffffff',
			'box-shadow'    : '6px 6px 3px #666666',
			'line-height '  : '1em',
			'transition '   : '.3s',
			'border'        : '2px solid #000066'
	  });

	  $('#update a').css({
			'color': '#ff0000',
			'background-color': '#eee',
			'font-size': '20px',
			'display'       : 'inline-block',
			'border-radius' : '5%',
			'font-size'     : '18pt',
			'text-align'    : 'center',
			'cursor'        : 'pointer',
			'padding'       : '12px 30px',
			'background'    : '#000066',
			'color'         : '#ffffff',
			'box-shadow'    : '6px 6px 3px #666666',
			'line-height '  : '1em',
			'transition '   : '.3s',
			'border'        : '2px solid #000066',
			'text-decoration':'none'
	  });

	  $('#table').css({
			'color': '#ff0000',
	  });


	  $('#register').click(function(){
			var userid = RegistForm.userid.value;
			var password = RegistForm.password.value;
			var name = RegistForm.name.value;
			var adress = RegistForm.adress.value;
			var age = RegistForm.age.value;
			var useridn  = userid.length;

			//入力空チェック
			if(useridn > 100){
				if (userid == "" ){
			    	alert("userid入力してまへんで");
			        return false;
				}
				alert("100文字でかけやどあほ");
				return false;
		    }else if(password == ""){
		    	alert("password入力してまへんで");
		    	return false;
		    }else if(name == ""){
		    	alert("name入力してまへんで");
		    	return false;
		    }else if(adress == ""){
		    	alert("adress入力してまへんで");
		    	return false;
		    }else if(age == ""){
		    	alert("age入力してまへんで");
		    	return false;
		    }else if(isNaN(age)){
		    	alert("数値やないで");
		    	return false;
		    }
		    //メールチェック
		    var mail_regex1 = new RegExp( '(?:[-!#-\'*+/-9=?A-Z^-~]+\.?(?:\.[-!#-\'*+/-9=?A-Z^-~]+)*|"(?:[!#-\[\]-~]|\\\\[\x09 -~])*")@[-!#-\'*+/-9=?A-Z^-~]+(?:\.[-!#-\'*+/-9=?A-Z^-~]+)*' );
		    var mail_regex2 = new RegExp( '^[^\@]+\@[^\@]+$' );
		    if( adress.match( mail_regex1 ) && adress.match( mail_regex2 ) ) {
		        // 全角チェック
		        if( adress.match( /[^a-zA-Z0-9\!\"\#\$\%\&\'\(\)\=\~\|\-\^\\\@\[\;\:\]\,\.\/\\\<\>\?\_\`\{\+\*\} ]/ ) ) {
			    	alert("全角がはいってます\n入力しなおしてください");
		        	return false;
		        }

		    } else {
		    	alert("メールアドレスの内容を確認の上\n入力して下さい。");
		    	return false;
		    }

			if(!confirm('登録しますが宜しいでしょうか？')){
			        /* キャンセルの時の処理 */
			        return false;
			}
			//リターンtrueを返す
		    return true;

		});
	});

window.addEventListener('DOMContentLoaded', function(){
	  //変更処理
	  $('#update').click(function(){
			var password = UpdateForm.password.value;
			var name = UpdateForm.name.value;
			var adress = UpdateForm.adress.value;
			var age = UpdateForm.age.value;
			//入力空チェック
			if(password == ""){
		    	alert("password入力してまへんで");
		    	return false;
		    }else if(name == ""){
		    	alert("name入力してまへんで");
		    	return false;
		    }else if(adress == ""){
		    	alert("adress入力してまへんで");
		    	return false;
		    }else if(age == ""){
		    	alert("age入力してまへんで");
		    	return false;
		    }else if(isNaN(age)){
		    	alert("数値やないで");
		    	return false;
		    }
		    //メールチェック
		    var mail_regex1 = new RegExp( '(?:[-!#-\'*+/-9=?A-Z^-~]+\.?(?:\.[-!#-\'*+/-9=?A-Z^-~]+)*|"(?:[!#-\[\]-~]|\\\\[\x09 -~])*")@[-!#-\'*+/-9=?A-Z^-~]+(?:\.[-!#-\'*+/-9=?A-Z^-~]+)*' );
		    var mail_regex2 = new RegExp( '^[^\@]+\@[^\@]+$' );
		    if( adress.match( mail_regex1 ) && adress.match( mail_regex2 ) ) {
		        // 全角チェック
		        if( adress.match( /[^a-zA-Z0-9\!\"\#\$\%\&\'\(\)\=\~\|\-\^\\\@\[\;\:\]\,\.\/\\\<\>\?\_\`\{\+\*\} ]/ ) ) {
		        	return false;
		        }

		    } else {
		    	alert("メールアドレスの内容を確認の上\n入力して下さい。");
		        return false;
		    }

		    /*confirmはbooleanで処理してる(true,false)
		     * 初期値：false
		     * 初期値確認方法
		     * windows.confirm()
		     * windows.confirm('AAAAA')
		     * */

			if(!window.confirm('変更しますが宜しいでしょうか？')){
		        /* キャンセルの時の処理 */
		        return false;
			}
		    return true;
	  });
});
