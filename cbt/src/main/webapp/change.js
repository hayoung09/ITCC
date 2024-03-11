/**
 * 
 */
 const div1 = document.getElementById('div1');
const div2 = document.getElementById('div2');
const content1 = document.getElementById('content1');
const content2 = document.getElementById('content2');

// 내용을 교환하는 함수를 만듭니다.
function swapContents() {
    // 첫 번째 div의 내용을 임시 변수에 저장합니다.
    const tempContent = content1.innerHTML;

    // 첫 번째 div의 내용을 두 번째 div의 내용으로 바꿉니다.
    content1.innerHTML = content2.innerHTML;

    // 두 번째 div의 내용을 임시 변수에 저장한 첫 번째 div의 내용으로 바꿉니다.
    content2.innerHTML = tempContent;
    }