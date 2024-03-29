//[자바스크립트]

//1. 여러분 개인에 대한 정보를 바탕으로 객체를 생성하고 출력해보세요.

const myProfile = {
    name: "지승환",
    wear_glasses: "True",
    hobby: "코딩"
};
console.log(myProfile.name);


//2. 다음과 같이 출력하시오

//2-1)
//  *
// ***
//*****

for (let i=1; i<6; i+=2) {
    let space = " ".repeat((5-i)/2); // .repeat(): " " * (5-i)/2
    let star = "*".repeat(i);
    console.log(space + star + space);
}

//2-2)
//  *
// ***
// *****
// ***
//  *

for (let i=1; i<6; i+=2) {
    let space = " ".repeat((5-i)/2);
    let star = "*".repeat(i);
    console.log(space + star + space);
}
for (let i=3; 0<i; i-=2) {
    let space = " ".repeat((5-i)/2);
    let star = "*".repeat(i);
    console.log(space + star + space);
}


//3. 로또 프로그램을 작성하시오.

let lottoList = [];

while (lottoList.length<6) {
    let rdFloat = Math.random();
    let lottoNum = Math.floor(rdFloat*45+1);
    if (!lottoList.includes(lottoNum)) { // ! .includes(): 배열에 없는지
        lottoList.push(lottoNum); // .push(): 배열에 추가
    }
}
console.log(lottoList);