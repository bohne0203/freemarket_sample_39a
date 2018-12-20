$(document).on('turbolinks:load', function() {

    $(function() {
     $('.hidden').change(function(e){
        //ファイルオブジェクトを取得する
        var file = e.target.files[0];
        var reader = new FileReader();

        //画像でない場合は処理終了
        if(file.type.indexOf("image") < 0){
          alert("画像ファイルを指定してください。");
          return false;
        }

        //アップロードした画像を設定する
        reader.onload = (function(file){
          return function(e){
            $(".item_image").attr("src", e.target.result);
            $(".item_image").attr("title", file.name);
          };
        })(file);
        reader.readAsDataURL(file);

      });
    });

    $(function() {
     $('.hidden2').change(function(e){
        //ファイルオブジェクトを取得する
        var file = e.target.files[0];
        var reader = new FileReader();

        //画像でない場合は処理終了
        if(file.type.indexOf("image") < 0){
          alert("画像ファイルを指定してください。");
          return false;
        }

        //アップロードした画像を設定する
        reader.onload = (function(file){
          return function(e){
            $(".item_image2").attr("src", e.target.result);
            $(".item_image2").attr("title", file.name);
          };
        })(file);
        reader.readAsDataURL(file);

      });
    });

    $(function() {
     $('.hidden3').change(function(e){
        //ファイルオブジェクトを取得する
        var file = e.target.files[0];
        var reader = new FileReader();

        //画像でない場合は処理終了
        if(file.type.indexOf("image") < 0){
          alert("画像ファイルを指定してください。");
          return false;
        }

        //アップロードした画像を設定する
        reader.onload = (function(file){
          return function(e){
            $(".item_image3").attr("src", e.target.result);
            $(".item_image3").attr("title", file.name);
          };
        })(file);
        reader.readAsDataURL(file);

      });
    });

    $(function() {
     $('.hidden4').change(function(e){
        //ファイルオブジェクトを取得する
        var file = e.target.files[0];
        var reader = new FileReader();

        //画像でない場合は処理終了
        if(file.type.indexOf("image") < 0){
          alert("画像ファイルを指定してください。");
          return false;
        }

        //アップロードした画像を設定する
        reader.onload = (function(file){
          return function(e){
            $(".item_image4").attr("src", e.target.result);
            $(".item_image4").attr("title", file.name);
          };
        })(file);
        reader.readAsDataURL(file);

      });
    });
});
