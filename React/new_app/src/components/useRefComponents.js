import { useRef } from "react"

export default function useRefComponents() {
    const ref = useRef(null);
    const buttonHandler = () => {
        ref.current.focus();
    }
  return (
    <div>
        <input ref = {ref}/>
        <bnutton onClick = {buttonHandler}>focus</bnutton>
      
    </div>
  )
}
