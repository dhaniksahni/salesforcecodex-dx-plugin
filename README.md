## salesforcecodex-dx-plugin

A tool for generating Apex source code from templates. This plugin can generated code for Apex Class, Trigger ,Selector class and it's classes. It can be used for handling development process where developer will use same code structure its apex codes.

## Setup

### Install from source

1. Install the Salesforce CLI.

2. Clone the repository: `git clone https://github.com/dhaniksahni/salesforcecodex-dx-plugin.git`

3. Install npm modules: `npm install`

4. Link the plugin: `sfdx plugins:link .`

### Install as plugin

1. Install plugin: `sfdx plugins:install salesforcecodex-dx-plugin`

## Usage

The basic usage of the plugin is straightforward.

```
Usage: sfdx scdx:code:create

create source from a template 

 -d, --outputdir OUTPUTDIR # folder for saving the created files
 -t, --template TEMPLATE   # code template name
 -v, --vars VARS           # variables required by the template

 ```

1. Creating a Apex class: `sfdx scdx:code:create -t apex  -d ./test/t1 -v apiVersion=48.0,objectName=ApplicationService`

This command will create a class in the current directory.

```
 The following files are created:
  test\t1\ApplicationService.cls
  test\t1\ApplicationServiceTest.cls
  test\t1\ApplicationService.cls-meta.xml
  test\t1\ApplicationServiceTest.cls-meta.xml

```
2. Creating a Apex Trigger: `sfdx scdx:code:create -t trigger  -d ./test/t1 -v apiVersion=48.0,objectName=Brand__c`

This command will create a class in the current directory.

```
The following files are created:
  test\t1\BrandTriggerHandler.cls
  test\t1\BrandTrigger.cls
  test\t1\Brandtrigger.cls-meta.xml
  test\t1\BrandtriggerHandler.cls-meta.xml
  test\t1\BrandAction.cls
  test\t1\BrandAction.cls-meta.xml

```

3. Creating a Selector class: `sfdx scdx:code:create -t selector  -d ./test/t1 -v apiVersion=48.0,objectName=Brand__c`

This command will create a class in the current directory.

```
The following files are created:
  test\t1\BrandConstant.cls
  test\t1\Brandconstant.cls-meta.xml
  test\t1\BrandSelector.cls
  test\t1\BrandSelector.cls-meta.xml

```

You can specify a different output directory with `-d|--outputdir`. If you're unsure of the `VARS` required, you can drop the `-v|--vars` and it will output the required fields.


Templates:

Templates for these classes are available at https://github.com/dhaniksahni/salesforcecodex-dx-plugin/tree/master/templates