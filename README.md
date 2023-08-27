<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]


<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/eladkarni/godot4-2d-platformer-template">
    <img src="Assets\Characters\character_0000.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Godot 4 - 2D Platformer Template</h3>

  <p align="center">
    A simple template for a 2D platformer to help kickstart any Godot project
    <br />
    <a href="https://github.com/eladkarni/godot4-2d-platformer-template"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/eladkarni/godot4-2d-platformer-template">View Demo</a>
    ·
    <a href="https://github.com/eladkarni/godot4-2d-platformer-template/issues">Report Bug</a>
    ·
    <a href="https://github.com/eladkarni/godot4-2d-platformer-template/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

<video src="Assets/ReadMe%20Assets/Godot_4-2D_Platformer_Template_Showcase.mp4" controls title="Title"></video>
This project is designed to help jumpstart your game with minimal fuss. It has many options to help you dial in the movement so it's perfect for your needs. 


### Built With

* [Godot 4.1.1](https://godotengine.org/)
* [Kenny's Assets](https://www.kenney.nl/assets/pixel-platformer-farm-expansion)


## General Information
This template includes the following features:
* Movement Controls:
  * **Max Speed** - Maximum speed reachable by player
  * **Min Speed** - Minimum speed reachable by player
  * **Acceleration** - Acceleration while on the ground (how quickly the player reaches max speed)
  * **Friction** - Friction while on group (how quickly the player slows down)
  * **Air Acceleration** - Acceleration while in the air (how quickly the player reaches max speed)
  * **Air Resistance** -  Air friction while in the air (how quickly the player slows down)
  * **Is Variable Max Speed** - Sets a variable max speed depending on how far the joystick is pushed (for analog controls)
  * **Is Variable Min Speed** - sets a minimum speed based on min_speed
* Jump Settings:
  * **Jump Height** - The height a jump will reach at its peak
  * **Jump Time To Peak** - Amount of time it takes the player to reach the peak of their jump
  * **Jump Time To Descent** - Amount of time it takes the player to fall from the peak of their jump to the ground
  * **Variable Jump Height** - Determains if a player jump highet changes depending on how long they held the action
  * **Minimum Jump Height** - Determains the minumum jump heighet a player can reach if they barely tap the jump button (and variable_jump_height is true)
* Jump Assist:
  * **Coyote Timer Value** - Max amount of time allowed after leaving the ground while still being able to jump
  * **Jump Buffer Timer Value** - Max amount of time the game holds on to the player's input to execute when viable
* A simple level to play around in and test out the capabilities


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

This template is designed to work with Godot 4.1.1+. You'll need to go download Godot from their offical [website](https://godotengine.org/download) to use this template.


## Usage

- Go to the [Repo](https://github.com/EladKarni/godot4-2d-platformer-template) and click "Use this template"
- Or [download the source](https://github.com/EladKarni/godot4-2d-platformer-template/archive/refs/heads/main.zip), unzip it, and you're good to go!

## Set Your Game Up

1. Launch Godot and select the import option. Locat the folder you downloaded and select it.
2. ...
3. Profit?


<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/eladkarni/godot4-2d-platformer-template/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Project Link: [https://github.com/eladkarni/godot4-2d-platformer-template](https://github.com/eladkarni/godot4-2d-platformer-template)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [GDQuest](https://www.gdquest.com/)
* [Godot Community](https://godotengine.org/community/)
* [The One & Only - KENNY](https://www.kenney.nl/)
* [Odinn1984 Godot 4 C# Template](https://github.com/odinn1984/Godot-4-2D-Platformer-Template)




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/eladkarni/repo.svg?style=for-the-badge
[contributors-url]: https://github.com/eladkarni/godot4-2d-platformer-template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/eladkarni/repo.svg?style=for-the-badge
[forks-url]: https://github.com/eladkarni/godot4-2d-platformer-template/network/members
[stars-shield]: https://img.shields.io/github/stars/eladkarni/repo.svg?style=for-the-badge
[stars-url]: https://github.com/eladkarni/godot4-2d-platformer-template/stargazers
[issues-shield]: https://img.shields.io/github/issues/eladkarni/repo.svg?style=for-the-badge
[issues-url]: https://github.com/eladkarni/godot4-2d-platformer-template/issues
[license-shield]: https://img.shields.io/github/license/eladkarni/repo.svg?style=for-the-badge
[license-url]: https://github.com/eladkarni/godot4-2d-platformer-template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/eladkarni
