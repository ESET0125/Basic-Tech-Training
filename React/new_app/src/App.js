import { useState } from 'react'; // 1. Import useState Hook
import './App.css';
import EventComponent from './components/EventComponents';
import LoginButton from './components/LoginComponent';


// 2. Main App Component
function App() {
  return (
    <div className='App'>
      <p style={{fontSize:'50px'}}>Virat Kholi</p>
      <img src="/download.jpg" alt="Virat Kohli" style={{ maxWidth: '50%', height: 'auto' }} />
      <Counter /> {/* 3. Render the Counter component */}
      <EventComponent/>
      <LoginButton/>
    </div>
    
  );
}

// 4. Counter Component - must be a separate, self-contained function
function Counter() {
    // 5. Use the useState Hook to manage state
    const [count, setCount] = useState(0); 
  
    const increment = ()=> {
        setCount(count + 1); // 6. Use setCount to update state
    };

    const decrement = () => {
        setCount(count - 1);
    };

    // The rest of your code are just regular JavaScript, not part of the React component's return
    const user ={
        name:"asgy",
        info: "city"
    }
    const {name : userName , info} = user;

    console.log(userName);

    let a = 1, b = 3;
    [a,b] = [b,a]; 
    console.log(a,b)

    const prev = { name: 'A', age: 20};
    console.log(prev.name)
    const next= {...prev, age:21}
    console.log(prev.age, next.age)

    // 7. Component returns JSX
    return (
        <>
            <h1 id="c1">{count}</h1> {/* 8. Display state variable */}
             <h2>runs</h2>
            <button onClick={increment}>INC</button> 
            <button onClick={decrement}>DEC</button>
        </>
    );
}

// 9. Export only one component as default
export default App;
