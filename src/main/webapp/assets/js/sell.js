/*<!--미리보기 function -->*/
function thumbnail(n) {
    var preview = document.querySelector('#preview' + n); // 미리보기 이미지에 고유한 ID를 사용
    var fileinput = document.querySelector('#image' + n); // 파일 입력 필드에 고유한 ID를 사용
    
    fileinput.addEventListener('change', function () {
        var file = fileinput.files[0]; // 선택한 파일을 가져옵니다.
        var reader = new FileReader();

        reader.onload = function () {
            preview.src = reader.result;
        }

        if (file) {
            reader.readAsDataURL(file);
        } else {
            preview.src = "";
        }
    });
}