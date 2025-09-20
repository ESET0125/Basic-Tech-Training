import React, { use, useState} from 'react'

export default function LoginForm() {

    const [loginData, setLoginState] = useState({
        username:"",
        password:""
    })

    const onUsernameChangeHandler = (event) => {
        setLoginState({
            ...loginData,
            username:event.target.value
        })
    }

    const onUserPasswordChangeHandler = (event) => {
        setLoginState({
            ...loginData,  
            password:event.target.value
        })
    }
    const LoginHandler = (event) =>{
            event.preventDefault();
            console.log(event);
    }

    return(
        <div>
            Welcome to home page 
            <form onSubmit={LoginHandler}>
                <br/>
                <input type = 'text' value = {loginData.name} onChange={onUsernameChangeHandler} />
                <br/>
                 <br/>
                <input type = 'password' value = {loginData.password} onChange={onUserPasswordChangeHandler} />
                <br/>
                <button type = 'submit'>Login</button>
                </form>
        </div>
    )
}