
// Abstraction.......

class Atm{
    constructor(withdraw){
        this.balance=1000;
        this.withdraw=withdraw;
    }
    getAmount(){
        this.minimum=500;
        if((this.balance-this.withdraw)>=this.minimum)
            {
          console.log("withdraw successfull..");
            }
            else
            {
                console.log("withdraw failed..");
            }
    }
}
let obj=new Atm(500);
console.log(obj.minimum);
obj.minimum=0;
obj.getAmount();


// // Encapsulation..

class One {
    constructor(id,name,salary){
        this.id=id;
        this.name=name;
        this.salary=salary;
    }
    getId(){
        console.log(this.id);
    }
    getName(){
        console.log(this.name);
    }
    getSalary(){
        console.log(this.salary);
    }
}
let obj1=new One(1,'satish',500000);
obj1.getId();
obj1.getName();
obj1.getSalary();


//  Inheritance...

class Parent{
    getMobile()
    {
        console.log("i phone 11");
    }
}
class Child extends Parent {
    getMobile1(){
        console.log("i phone 12");
    }
}
let obj3=new Child();
obj3.getMobile();
obj3.getMobile1();


// Polymorphism  

class Father{
    getMobile(){
        console.log("i phone 11");
    }
}
class Children extends Father {
    getMobile(){
        console.log("i phone 12");
    }
}

let obj4=new Children();
obj4.getMobile();
