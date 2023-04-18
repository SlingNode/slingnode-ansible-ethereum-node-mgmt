# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.4.0] - 2023-04-17

### Changed

- Updated Prysm image tag from v3.2.2to v4.0.2


## [0.3.0] - 2023-04-13

### Added

- script to run molecule tests for CMD keystore imports

### Changed

- removed when defined clause from API kyestore import tasks
- variables required by keystore import tasks are now defined as empty lists

### Fixed

- moved dict key variable to correct parrent in molecule.yml


## [0.2.0] - 2023-04-11

### Added

- env variable option to skip installing role dependencies in Molecule

### Fixed

- failing assert for API keystore import by adding a conditional


## [0.1.0] - 2023-04-10

### Added

- initial release
