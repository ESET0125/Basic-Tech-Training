import { useState } from "react"

function LoginButton(){

    const [username, setUsername] = useState("")
    const [password, setPassword] = useState("")

    const onLoginHandler = () =>{
        if(username!=="username"){
            alert("invalid username")
            return;
        }

        if(password!=="password"){
            alert("invalid password")
            return;
        }
        alert("Login Successfull")

    }
    return(
        <form onSubmit = {onLoginHandler}>
            <input type = 'text' value ={username} onChange = {(e) =>{setUsername(e.target.value)}} placeholder = 'enter your username'/>
            <input type = 'password' value ={password} onChange = {(e) =>{setPassword(e.target.value)}} placeholder = 'enter your password'/>
            <button type = 'submit'> Login</button>
            <button type = 'reset'> Reset</button>
            {/* <button onClick={onLoginHandler}> Login</button> */}
        </form>
    )
}

export default LoginButton
