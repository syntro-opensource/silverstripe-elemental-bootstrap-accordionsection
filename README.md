# SilverStripe elemental bootstrap accordion section

![🎭 Tests](https://github.com/syntro-opensource/silverstripe-elemental-bootstrap-accordionsection/workflows/%F0%9F%8E%AD%20Tests/badge.svg)
[![phpstan](https://img.shields.io/badge/PHPStan-enabled-success)](https://github.com/phpstan/phpstan)
[![codecov](https://codecov.io/gh/syntro-opensource/silverstripe-elemental-bootstrap-accordionsection/branch/master/graph/badge.svg)](https://codecov.io/gh/syntro-opensource/silverstripe-elemental-bootstrap-accordionsection)
[![composer](https://img.shields.io/packagist/dt/syntro/silverstripe-elemental-bootstrap-accordionsection?color=success&logo=composer)](https://packagist.org/packages/syntro/silverstripe-elemental-bootstrap-accordionsection)


This module is part of a larger collection. See
[`syntro/silverstripe-elemental-bootstrap-collection`](https://github.com/syntro-opensource/silverstripe-elemental-bootstrap-collection)
for details.

Provides a simple section displaying an accordion.

## Requirements

* SilverStripe ^4.0
* Silverstripe elemental ^4
* [Bootstrap](https://getbootstrap.com) on the Frontend

## Installation

```
composer require syntro/silverstripe-elemental-bootstrap-accordionsection
```


## License
See [License](license.md)

## Documentation

By default, this section renders a simple accordion, just like
[this example](https://getbootstrap.com/docs/4.5/components/collapse/#accordion-example)
directly taken from the bootstrap docs. Depending on your theme, you will have to
change how this section is rendered.

As of right now, we do not provide any settings concerning the colors of the
accordion directly, as this depends heavily on the way you are implementing
it in the frontend.

All configuration options follow [the base items config](https://github.com/syntro-opensource/silverstripe-elemental-bootstrap-baseitems#documentation).

## Maintainers
 * Matthias Leutenegger <hello@syntro.ch>

## Bugtracker
Bugs are tracked in the issues section of this repository. Before submitting an issue please read over
existing issues to ensure yours is unique.

If the issue does look like a new bug:

 - Create a new issue
 - Describe the steps required to reproduce your issue, and the expected outcome. Unit tests, screenshots
 and screencasts can help here.
 - Describe your environment as detailed as possible: SilverStripe version, Browser, PHP version,
 Operating System, any installed SilverStripe modules.

Please report security issues to the module maintainers directly. Please don't file security issues in the bugtracker.

## Development and contribution
If you would like to make contributions to the module please ensure you raise a pull request and discuss with the module maintainers.
