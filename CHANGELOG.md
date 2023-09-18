# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.11.0] - 2023-09-18

### Changed

- Updated Nimbus from 23.8.0 to 23.9.0

## [0.10.0] - 2023-09-10

### Changed

- Updated Teku from 23.8.0 to 23.9.0
- Updated Nimbus from 23.7.0 to 23.8.0
- Updated Prysm from 4.0.7 to 4.0.8
- Updated Lighthouse from 4.3.0 to 4.4.1

## [0.9.0] - 2023-08-04

### Changed

- Updated Teku from 23.6.2 to 23.8.0

## [0.8.0] - 2023-07-25

### Changed

- Updated Lighthouse from 4.2.0 to 4.3.0
- Updated Teku from 23.6.1 to 23.6.2
- Updated Prysm from 4.0.5 to 4.0.7
- Updated Nimbus from 23.6.1 to 23.7.0

## [0.7.0] - 2023-07-02

### Changed

- Updated Teku image tag from 23.6.0 to 23.6.1
- Updated Nimbus image tag from v23.5.0 to v23.6.1

## [0.6.0] - 2023-06-05

### Changed

- Updated Lighthouse image tag from v4.1.0-modern to v4.2.0-modern
- Updated Prysm image tag from v4.0.3 to v4.0.5
- Updated Teku image tag to 23.5.0
- Updated Nimbus image tag from v23.3.2 to v23.5.1

## [0.5.0] - 2023-04-21

### Changed

- Updated Lighthouse image tag from v4.0.1-modern to v4.1.0-modern
- Updated Prysm image tag from v4.0.2 to v4.0.3

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
