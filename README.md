<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/akarzim/rubosort">
    <img src="images/rubosort.png" alt="Logo" width="201" height="82">
  </a>

  <h3 align="center">Rubosort</h3>

  <p align="center">
    Sort cops from a Rubocop configuration file in alphabetic order.
    <br />
    <a href="https://github.com/akarzim/rubosort"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/akarzim/rubosort/issues">Report Bug</a>
    ·
    <a href="https://github.com/akarzim/rubosort/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)

## About The Project

**DISCLAIMER**: This is a toy project to play with the [dry-cli][dry-cli] Ruby gem.

### Built With

* [dry-cli][dry-cli]

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

* [git](https://git-scm.com/downloads)

### Installation

1. Clone the repo

```sh
git clone https://github.com/akarzim/rubosort.git
```

## Usage

In a terminal, step inside the Rubosort directory and run:

```sh
❯ ./rubosort --help
Commands:
  rubosort sort FILE           # Sort the given Rubocop file
  rubosort version             # Print version
```

The main command is `sort` which takes an argument and some options:

```sh
❯ ./rubosort sort --help
Command:
  rubosort sort

Usage:
  rubosort sort FILE

Description:
  Sort the given Rubocop file

Arguments:
  FILE                              # REQUIRED File to sort

Options:
  --output=VALUE, -o VALUE          # File to write in, default: "-"
  --[no-]force                      # Force write to output file, default: false
  --help, -h                        # Print this help

Examples:
  rubosort sort path/to/foo.yml            # Run Rubosort on foo.yml file
  rubosort sort foo.yml -o bar.yml         # Writes the result in bar.yml
  rubosort sort foo.yml -o bar.yml --foce  # Force writing into existing bar.yml file
```

## Roadmap

See the [open issues](https://github.com/akarzim/rubosort/issues) for a list of proposed features (and known issues).

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

François Vantomme - [@akarzim](https://mastodon.host/@akarzim)

Project Link: <https://github.com/akarzim/rubosort>

## Acknowledgements

* [Othneil Drew][othneildrew] for [this readme template][readme-template]

<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/akarzim/rubosort.svg?style=flat-square
[contributors-url]: https://github.com/akarzim/rubosort/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/akarzim/rubosort.svg?style=flat-square
[forks-url]: https://github.com/akarzim/rubosort/network/members
[stars-shield]: https://img.shields.io/github/stars/akarzim/rubosort.svg?style=flat-square
[stars-url]: https://github.com/akarzim/rubosort/stargazers
[issues-shield]: https://img.shields.io/github/issues/akarzim/rubosort.svg?style=flat-square
[issues-url]: https://github.com/akarzim/rubosort/issues
[license-shield]: https://img.shields.io/github/license/akarzim/rubosort.svg?style=flat-square
[license-url]: https://github.com/akarzim/rubosort/blob/master/LICENSE.txt
[dry-cli]: https://dry-rb.org/gems/dry-cli/main/
[othneildrew]: https://github.com/othneildrew
[readme-template]: https://github.com/othneildrew/Best-README-Template
