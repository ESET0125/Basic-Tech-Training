function Counter() {

    var x = 5;
    console.log(5);
    var x  = 10;
    console.log(10)

    let count = 0;

  
    const increment = ()=> {
        count++;
        document.getElementById("c1").innerText=count;
    }

    const decrement = () => {
        setCount(count - 1);
        
    };

    const user ={
        name:"asgy",
        info: "city"
    }
    const {name : userName , info} = user;

    
    console.log(userName);

    //SWAPPING
    let a = 1, b = 3;
    [a,b] = [b,a]; // a=2 ; b =1 
    console.log(a,b)

    //UPDATE
    const prev = { name: 'A', age: 20};
    console.log(prev.name)
    const next= {...prev, age:21}
    console.log(prev.age, next.age)




return (
    
    <>
    <h1 id = "c1" > 0 </h1>
    <button onClick = { increment} >INC</button> 
    {/* New button to trigger the decrement function */}
            <button onClick={decrement}>DEC</button>
    </>
)
}


 
export default Counter;