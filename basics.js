//console.log("Hello world!");
// let a=2;
// let b="satish";
// let c=3.14;
// let d=true;
// console.log(typeof(a));
// console.log(typeof(b));
// console.log(typeof(c));
// console.log(typeof(d));

// let a=2;
// let b=String(a);
// console.log(typeof(b));
// let c=Boolean(a);
// let d="abc";
// let e="123";
// let f=Number(d);
// let g=Number(e);

// console.log(b);
// console.log(c);
// console.log(f);
// console.log(g);

// let a=10;
// let b=20;
// let c=a+b;
// console.log(c);

// class Satish {
//     constructor(name,age,gender){
//         this.name=name;
//         this.age=age;
//         this.gender=gender;
//     }
// }

// let satish1=new Satish("satish",23,"male");
// console.log(satish1);

// let x="100";
// let y=false;
// let res=x-y;
// console.log(res);


// let one=['hii','hello','welcome'];
// //let b=one.join(" ");
// console.log(one.join(" "));


// let one=[1,2,3,4,5];
// let sum=1;
// for(let i=0;i<=one.length-1;i++){
//     sum=sum*one[i];
// }
// console.log(sum)

// let two=[1,2,3,4,5];
// let sum=0;
// for(let i=0;i<=two.length-1;i++){
//     sum=sum+two[i];
// }
// console.log(sum)

// let three=[10,20,30];
// let sum=three.reduce((acc,val)=>acc+val);
// let pro=three.reduce((acc,val)=>acc*val);
// console.log(sum);
// console.log(pro);

// let i = prompt('enter your number');
// console.log(i);

// Functions in js
//-----------------

// console.log(product(2,2,2))
// function product(num1,num2,num3){
//     let prod=num1*num2*num3;
//     return prod;
// }

/*
function insertDashes(input) {
    // Convert the input number to a string
    let numStr = input.toString();
    let result = "";

    // Iterate through each digit in the string
    for (let i = 0; i < numStr.length; i++) {
        // Append the current digit to the result
        result += numStr[i];

        // Check if the current digit and the next digit are both even
        if (parseInt(numStr[i]) % 2 === 0 && parseInt(numStr[i + 1]) % 2 === 0) {
            // If both are even, insert a dash after the current digit
            result += "-";
        }
    }

    return result;
}

// Example usage
let input = 025468;
console.log(insertDashes(input)); // Output: 0-254-6-8
*/
/*
class Animal {
    constructor(name){
        this.name=name;
    }
    eat(){
       return `${this.name} is eating`;
    }
    sniff(){
       return `${this.name} is drinking..`;
    }
}
class Dog extends Animal {
    constructor(name,breed)
    {
        super(name);
        this.breed=breed;    
    }
    makeSound(){
        return `${this.breed} is barking..`;
    }
}

let dog=new Dog("chimtu","pug");
console.log(dog.eat());
console.log(dog.sniff());
console.log(dog.makeSound()); */


