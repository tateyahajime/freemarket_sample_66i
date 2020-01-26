$(document).on('turbolinks:load', ()=> {
  // 画像用のinputを生成する関数
  const buildFileField = (index)=> {
    const html = `<for="item_images_attributes_${index}_image">
                  <input rquired="true" class="file" type="file" name="item[images_attributes][${index}][image]" id="item_images_attributes_${index}_image" style="display:none;>
                  <div class="js-remove">削除</div>`;
    return html;
  }

  const buildImg = (index, url)=> {
    const html = `<img data-index="${index}" src="${url}" width="80px" height="80px">`;
    return html;
  }



  // file_fieldのnameに動的なindexをつける為の配列
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];

  $('#image_box').on('change', '.file', function(e) {
    // fileIndexの先頭の数字を使ってinputを作る
    // $('#image_box').append(buildFileField(fileIndex[0]));
    // fileIndex.shift();
    // 末尾の数に1足した数を追加する
    // fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
  });
  

  $('#image_box').on('click', '.js-remove', function() {
    $(this).parent().remove();
    // 画像入力欄が0個にならないようにしておく
    if ($('.file').length == 0) $('#image_box').append(buildFileField(fileIndex[0]));
  });
  
  
  
  
  $('#image_box').on('change', '.file', function(e) {
    const targetIndex = $(this).parent().data('index');
    // ファイルのブラウザ上でのURLを取得する
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    // 該当indexを持つimgタグがあれば取得して変数imgに入れる(画像変更の処理)
    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {

      img.setAttribute('image', blobUrl);
    } else {  // 新規画像追加の処理
      $('#previews').append(buildImg(fileIndex[0] - 1, blobUrl));
      // fileIndexの先頭の数字を使ってinputを作る
      $('#image_box').append(buildFileField(fileIndex[0]));
      $('.sell--upload__drop__box').attr('for', `item_images_attributes_${fileIndex[0]}_image`);
      fileIndex.shift();
      // 末尾の数に1足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
    }
  });
  
  $('#image_box').on('click', '.js-remove', function() {
    // (省略)
    $(`img[data-index="${targetIndex}"]`).remove();
  });
});