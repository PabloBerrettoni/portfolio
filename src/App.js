import './App.css';
import profileImage from './profileImage.png';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <p>Portfolio</p>
      </header>
      <main>
        <div className="About">
          <img src={profileImage} alt="Logo" />
          <div className="TextDescription">
            <p>Passionate Full Stack Developer with over a year of experience in a consulting company, specializing in a wide range of programming languages such as PHP and JavaScript and also in the use of databases such as MySQL. Skilled in working with frameworks and libraries including Vue.js, Nuxt.js, React, Angular, and Express. I have also worked extensively with WordPress developing custom themes and plugins.</p>
            <p>I have also gained exposure to DevOps practices, having successfully utilized Terraform to create instances on Scaleway. While my experience in DevOps is currently limited, I am eager to further develop my skills and transition into a DevOps role.</p>
          </div>
        </div>
        <div className="Projects">
          <h2>Projects</h2>
          <div className="ProjectList">
            <div className="IndividualProject">
              <h3>PokeApi</h3>
              <p>PokeApi description</p>
            </div>
            <div className="IndividualProject">
              <h3>Ecommerce</h3>
              <p>Ecommerce description</p>
            </div>
          </div>
        </div>
        <div className="Contact">
          <h2>Contact</h2>
          <p>I'm from Moreno, Buenos Aires, Argentina</p>
        </div>
      </main>
      <footer>
        <p>© 2023 Pablo Berrettoni</p>
      </footer>
    </div>
  );
}

export default App;
