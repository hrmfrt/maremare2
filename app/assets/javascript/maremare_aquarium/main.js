
$(document).ready(function () {
    $('.poke_pic').slick({
        infinite: true, //スライドのループ有効化
        dots: true, //ドットのナビゲーションを表示
        centerMode: true, //要素を中央寄せ
        centerPadding: '10%', //両サイドの見えている部分のサイズ
        autoplay: true, //自動再生
    });
});




$(function () {

    //ボタンがクリックされた時の動作を指定する。
    $('button').on('click', function () {
        //変数をリセットする
        var category = ""
        var len = ""
        var code_l_cat = ""
        //クリックしたボタンのidを取得する
        category = $(this).attr("id");

        //カテゴリーの数
        len = eval(eval(category).length);

        //大きい分類の名称
        code_l_cat = "<h2 class=\"large_category_name\">" + eval(category)[0].l_name + "</h2>"
        console.log(category)
        console.log("check_1")

        //小さい分類の数だけ繰り返す
        var code_s_cat = ""
        for (let i = 1; i < len; i++) {
            //小カテゴリーの名称を定義
            var code_s_name = ""
            var code_s_name = "<h2 class=\"small_categories\">" + eval(category)[i].s_name + "</h2>"


            //小カテゴリーの長さ
            var s_len = ""
            s_len = eval(category)[i].list.length

            //小さい分類内の要素の数だけ繰り返す
            var code_fig_list = ""
            for (let l = 0; l < s_len; l++) {
                code_fig_list = code_fig_list + "<div class=\"point\"><h3>" + eval(category)[i].list[l].name + "</h3><figure><img id = \"" + eval(category)[i].list[l].id + "\" class=\"modal-open\" src=\"" + eval(category)[i].list[l].pic_path[0] + "\" alt=\"" + eval(category)[i].list[l].pic_name + "\"></figure></div>"
            };
            code_s_cat = code_s_cat + "<div class=\"small_section\">" + code_s_name + "<div class=\"lists\">" + code_fig_list + "</div></div>"
            console.log("check_2")
        };
        code_html = "<div class=\"large_section\">" + code_l_cat + code_s_cat + "</div>"
        $('#main_area').html(code_html
        );

        modal_html();
        modal();
    });

});


$(function () {
    $("test").load("test.html");
    console.log("test")
});


function modal() {
    // 変数に要素を入れる
    console.log("テスト")

    var open = $('.modal-open'),
        close = $('.modal-close'),
        container = $('.modal-container');



    //閉じるボタンをクリックしたらモーダルを閉じる
    close.on('click', function () {
        container.removeClass('active');
    });

    //モーダルの外側をクリックしたらモーダルを閉じる
    $(document).on('click', function (e) {
        if (!$(e.target).closest('.modal-body').length) {
            container.removeClass('active');
        }
    });

    $('.modal-pic').slick({
        infinite: true, //スライドのループ有効化
        dots: true, //ドットのナビゲーションを表示
        centerMode: true, //要素を中央寄せ
        centerPadding: '0%', //両サイドの見えている部分のサイズ
        autoplay: false, //自動再生
        arrows: false,//矢印
    })
};


//modal内部のhtmlコードを書き換えて動的に中身を変更する
function modal_html() {
    //変数を定義する
    let name, S_name;
    let pic_path, pic_path_2, pic_path_3, pic_path_4;
    let pic_name_1, pic_name_2, pic_name_3, pic_name_4;
    let caption;
    let info;
    let code_pic;

    //クリックした画像から情報を取得する
    $(".modal-open").on("click", function () {
        var pic_id = "";
        pic_id = $(this).attr("id");
        console.log(pic_id)

        var pic_id_split = pic_id.split("_")
        let code_1 = pic_id_split[0];
        let code_2 = Number(pic_id_split[1]);
        let code_3 = Number(pic_id_split[2]);
        let code_html_modal, code_info;


        //Jsonから情報を取得しにいく
        let target = eval(code_1)[code_2].list[code_3];
        console.log(target)
        name = target.name; //一行ずつ書かないで、配列に入れた方がよかったかも
        s_name = target.sci_name;
        caption = target.caption;
        info = target.info;

        code_pic = ""
        code_info = ""


        //for (const pic_path of target.pic_path){
        //    code_pic = code_pic+ "<div><img src=\""+pic_path+"\"></img><p　class=\"caption\">"+caption+"</div>"
        //}
        for (let i = 0; i < target.pic_path.length; i++) {
            console.log(target.caption[i])
            code_pic = code_pic + "<div><img src=\"" + target.pic_path[i] + "\"></img><p class=\"caption\">" + target.caption[i] + "</p></div>"
        }




        function info_html(name_m, s_name_m, info_m) {
            code_info = "<table align=\"left\" valign=\"top\">"
                + "<tr><th class=\"ti\">和名</th><th>:</th><th>" + name_m + "</th></tr>"
                + "<tr><th class=\"ti\">学名</th><th>:</th><th>" + s_name_m + "</th></tr>"
                + "<tr><th class=\"ti\">説明</th><th>:</th><th>" + info_m + "</th></tr>"
                + "</table>"
        }

        info_html(name, s_name, info)
        console.log(code_info)
        code_html_modal = "<div class=\"modal-pic\">" + code_pic + "</div>" + code_info

        //モーダル部分のhtmlコードを書き換える
        $('.modal-content').html(code_html_modal
        );


    });


};




modal()
