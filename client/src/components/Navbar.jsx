import React, { Component } from 'react'

class Navbar extends Component {
  constructor (props) {
    super(props)
  }

  render () {
    const patient = this.props.patient
    return(<div><nav className="navbar">
      <a className="navbar-brand" href="/"><h1>Patient Portal</h1></a>
      <h3>Hello, {patient.first_name} </h3>
      <button className="btn navbar-btn"> Logout </button>

    </nav>
    <div className="second-navbar">
    <span><a href="#" className="nav-link">Link 1</a><a href="#" className="nav-link">Link 2</a><a href="#" className="nav-link">Link 3</a><a href="#" className="nav-link">Link 4</a><a href="#" className="nav-link"> Link 5</a> <a href="#" className="about">About</a><a href="#" className="contact">Contact Us</a></span>
    </div>
    </div>)
  }
}

export default Navbar