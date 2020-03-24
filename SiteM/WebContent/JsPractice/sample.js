function change(){
    var val = document.getElementById("sample").innerHTML = "変更されました";
}
function openMenu(n) {            //リストを開く
    closeMenu()            //表示中のリストを閉じる
    if(n == 1) {            //リスト１を開く
        li1.style.display = "block";
    }
    else if(n == 2) {        //リスト２を開く
        li2.style.display = "block";
    }
    else if(n == 3) {        //リスト３を開く
        li3.style.display = "block";
    }
    else if(n == 4){
    	li4.style.display = "block";
    }
    else if(n == 5){
    	li5.style.display = "block";
    }
}
function closeMenu() {            //リストを閉じる
    li1.style.display = "none";
    li2.style.display = "none";
    li3.style.display = "none";
    li4.style.display = "none";
    li5.style.display = "none";
}