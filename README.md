salesforcecodex-dx-plugin
========

Salesforce Codex DX Plugin for generating Apex template code.

[![Version](https://img.shields.io/npm/v/salesforcecodex-dx-plugin.svg)](https://npmjs.org/package/salesforcecodex-dx-plugin)
[![CircleCI](https://circleci.com/gh/52000290/salesforcecodex-dx-plugin/tree/master.svg?style=shield)](https://circleci.com/gh/52000290/salesforcecodex-dx-plugin/tree/master)
[![Appveyor CI](https://ci.appveyor.com/api/projects/status/github/52000290/salesforcecodex-dx-plugin?branch=master&svg=true)](https://ci.appveyor.com/project/heroku/salesforcecodex-dx-plugin/branch/master)
[![Codecov](https://codecov.io/gh/52000290/salesforcecodex-dx-plugin/branch/master/graph/badge.svg)](https://codecov.io/gh/52000290/salesforcecodex-dx-plugin)
[![Greenkeeper](https://badges.greenkeeper.io/52000290/salesforcecodex-dx-plugin.svg)](https://greenkeeper.io/)
[![Known Vulnerabilities](https://snyk.io/test/github/52000290/salesforcecodex-dx-plugin/badge.svg)](https://snyk.io/test/github/52000290/salesforcecodex-dx-plugin)
[![Downloads/week](https://img.shields.io/npm/dw/salesforcecodex-dx-plugin.svg)](https://npmjs.org/package/salesforcecodex-dx-plugin)
[![License](https://img.shields.io/npm/l/salesforcecodex-dx-plugin.svg)](https://github.com/52000290/salesforcecodex-dx-plugin/blob/master/package.json)

<!-- toc -->
* [Debugging your plugin](#debugging-your-plugin)
<!-- tocstop -->
<!-- install -->
<!-- usage -->
```sh-session
$ npm install -g salesforcecodex-dx-plugin
$ sfdx COMMAND
running command...
$ sfdx (-v|--version|version)
salesforcecodex-dx-plugin/0.0.2 win32-x64 node-v12.10.0
$ sfdx --help [COMMAND]
USAGE
  $ sfdx COMMAND
...
```
<!-- usagestop -->
<!-- commands -->
* [`sfdx scdx:code:create [-n <string>] [-t <string>] [-o <string>] [-d <string>] [-v <string>] [--json] [--loglevel trace|debug|info|warn|error|fatal|TRACE|DEBUG|INFO|WARN|ERROR|FATAL]`](#sfdx-scdxapexcodecreate--n-string--t-string--o-string--d-string--v-string---json---loglevel-tracedebuginfowarnerrorfataltracedebuginfowarnerrorfatal)

## `sfdx scdx:code:create [-n <string>] [-t <string>] [-o <string>] [-d <string>] [-v <string>] [--json] [--loglevel trace|debug|info|warn|error|fatal|TRACE|DEBUG|INFO|WARN|ERROR|FATAL]`

```
USAGE
  $ sfdx scdx:code:create [-n <string>] [-t <string>] [-o <string>] [-d <string>] [-v <string>] [--json] 
  [--loglevel trace|debug|info|warn|error|fatal|TRACE|DEBUG|INFO|WARN|ERROR|FATAL]

OPTIONS
  -d, --outputdir=outputdir                                                         folder for saving the created files
  -n, --name=name                                                                   file or bundle name
  -o, --object=object                                                               Provide Object name
  -t, --template=template                                                           code template name
  -v, --vars=vars                                                                   variables required by the template
  --json                                                                            format output as json

  --loglevel=(trace|debug|info|warn|error|fatal|TRACE|DEBUG|INFO|WARN|ERROR|FATAL)  [default: warn] logging level for
                                                                                    this command invocation
```

_See code: [lib\commands\scdx\apex\code\create.js](https://github.com/52000290/salesforcecodex-dx-plugin/blob/v0.0.2/lib\commands\scdx\apex\code\create.js)_
<!-- commandsstop -->


