function EventComponent(){
    const onChangeHandler = (e)=>{
        console.log(e.target.value)
    }

    const onChangeHandler1 = (e)=>{
        console.log(e.target.value)
        let text = e.target.value;
        if(text == "sahil")
            console.log("Yes")
    }
    return (
        <>
        Welcome to Events
        <button onClick={()=>(console.log ("button clicked"))}> click me </button>
        <div>
            this is div
        </div>

        <div 
            style = {{ backgroundColor:'gold', padding:'40px'}} onMouseEnter ={()=>(console.log ("mouse clicked"))}>
                RCB
        </div>
        <input type = "text" onChange ={()=>(console.log (""))}/>
         <input type = "text" onChange ={onChangeHandler1}/>
         <input type = "text" onChange ={onChangeHandler}/>
        </>
    )
}

export default EventComponent