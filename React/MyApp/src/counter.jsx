function Counter() {
    let count = 0;
    const increment = ()=> {
        count++;
        document.getElementById("c1").innerText=count;
    }
return (
    
    <>
    <h1 id = "c1" > 0 </h1>
    <button onClick = { increment} >INC</button> 
    </>
)
}
 
export default Counter;