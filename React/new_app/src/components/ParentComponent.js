 import React, { useState } from 'react'
 
 export default function ParentComponent() {
    const [count, setCount] = useState(0);
    const increment = () => {
        setCount(prev => prev + 1);
    }
    const decrement = () => {
        setCount  (prev => prev - 1);
    }
   return (
     <div>
       welcome to the parent component
       <Sibling1 count = {count}/>
       <Sibling2 increment={increment} decrement={decrement} /> 
     </div>
   )
 }
 
 function Sibling1(props){
    return(
        <div>
            {props.count}
        </div>

    )
        
 }

 function Sibling2({increment,decrement}){
    return(
    <div>
        <button onClick = {increment}> increment </button>
        <button  onClick = {decrement}> decrement </button>
    </div>
    )
        

 }