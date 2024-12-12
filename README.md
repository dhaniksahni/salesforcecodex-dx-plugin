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

Top Integration Blogs from SalesforceCodex.com

1. https://salesforcecodex.com/salesforce/automating-data-synchronization-between-salesforce-and-amazon-seller/
2. https://salesforcecodex.com/salesforce/aws-signature-4-signing-in-salesforce/
3. https://salesforcecodex.com/salesforce/download-s3-file-in-salesforce-using-aws-signature-version-4-0/
4. https://salesforcecodex.com/salesforce/use-named-credential-to-upload-file-in-s3/
5. https://salesforcecodex.com/salesforce/ultimate-guide-to-integrate-stripe-with-salesforce-crm/
6. https://salesforcecodex.com/salesforce/how-to-seamlessly-integrate-shopify-with-salesforce/
7. https://salesforcecodex.com/salesforce/shopify-integration-with-salesforce-using-webhook/
8. https://salesforcecodex.com/salesforce/object-identification-using-google-cloud-vision-in-salesforce/
9. https://salesforcecodex.com/salesforce/logo-recognition-using-google-cloud-vision-in-salesforce/
10. https://salesforcecodex.com/salesforce/google-fitbit-integration-with-salesforce/
11. https://salesforcecodex.com/salesforce/integrate-google-api-with-salesforce/
12. https://salesforcecodex.com/salesforce/audio-to-text-by-google-speech-api-in-salesforce-lightning/
13. https://salesforcecodex.com/salesforce/extract-text-from-image-using-google-cloud-vision/
14. https://salesforcecodex.com/salesforce/seamless-youtube-video-api-integration-in-salesforce/
15. https://salesforcecodex.com/salesforce/create-jira-issue-in-salesforce-apex-with-jira-integration/
16. https://salesforcecodex.com/salesforce/integrate-slack-in-salesforce-for-real-time-notifications/
17. https://salesforcecodex.com/salesforce/text-translation-in-salesforce-using-apex/
18. https://salesforcecodex.com/salesforce/low-code-integration-for-text-translation-using-systran-api/
19. https://salesforcecodex.com/salesforce/extract-demographic-detail-using-trestle-reverse-phone-api/
20. https://salesforcecodex.com/salesforce/verify-phone-using-flow-http-callout/
21. https://salesforcecodex.com/salesforce/verify-phone-in-salesforce-using-veriphone-api/
22. https://salesforcecodex.com/salesforce/cuttly-url-shortener-in-salesforce/
23. https://salesforcecodex.com/salesforce/cuttly-url-shortener-in-salesforce/
24. https://salesforcecodex.com/salesforce/extract-driver-license-detail-from-image-using-einstein-api/
25. https://salesforcecodex.com/salesforce/named-entity-recognition-using-salesforce-einstein-api/
26. https://salesforcecodex.com/salesforce/using-salesforce-bulk-api-v2/
27. https://salesforcecodex.com/salesforce/using-salesforce-bulk-api-v1/
28. https://salesforcecodex.com/salesforce/configure-saml-single-sign-on-between-two-salesforce-orgs/
29. https://salesforcecodex.com/salesforce/create-ocr-app-using-salesforce-einstein-ocr-api/
30. https://salesforcecodex.com/salesforce/find-referenced-metadata-using-salesforce-dependency-api/
31. https://salesforcecodex.com/salesforce/call-tooling-api-from-lightning-web-component/
32. https://salesforcecodex.com/salesforce/graphql-query-generator-in-salesforce-apex/
33. https://salesforcecodex.com/salesforce/exploring-graphql-api-in-salesforce/
34. https://salesforcecodex.com/salesforce/zip-code-to-time-zone-using-zipcodeapi-in-salesforce/
35. https://salesforcecodex.com/salesforce/publish-platform-events-from-asp-net/
36. https://salesforcecodex.com/salesforce/uploading-files-to-microsoft-one-drive-using-apex/
37. https://salesforcecodex.com/salesforce/customer-engagement-using-sms-with-nexmo-api/
38. https://salesforcecodex.com/salesforce/integrate-salesforce-with-whatsapp-using-twilio-api/
39. https://salesforcecodex.com/salesforce/extract-license-plate-number-from-image-in-salesforce/
40. https://salesforcecodex.com/salesforce/covid-india-real-data-in-lightning-community/
41. https://salesforcecodex.com/salesforce/covid19-live-chart-in-lightning-web-component/
42. https://salesforcecodex.com/salesforce/get-food-nutrition-using-spoonacular-api-in-lightning-web-component/
43. https://salesforcecodex.com/salesforce/integrate-salesforce-stackexchange-using-lightning-web-component-and-apex/
44. https://salesforcecodex.com/salesforce/running-salesforce-app-using-voice-command-speech-to-text-api/

Top Blogs for Salesforce Best Practices
1. https://salesforcecodex.com/salesforce/best-practices-to-avoid-hardcoding-in-apex-for-cleaner-salesforce-code/
2. https://salesforcecodex.com/salesforce/optimizing-salesforce-apex-code/
3. https://salesforcecodex.com/salesforce/optimizing-loop-in-apex-code/
4. https://salesforcecodex.com/salesforce/optimize-apex-code-by-metadata-caching/
5. https://salesforcecodex.com/salesforce/optimize-soql-filter-in-apex-code/
7. https://salesforcecodex.com/salesforce/apex-trigger-code-optimization/
8. https://salesforcecodex.com/salesforce/handle-heap-size-for-apex-code-optimization/
9. https://salesforcecodex.com/salesforce/build-scalable-solutions-with-salesforce/
10. https://salesforcecodex.com/salesforce/enhance-apex-performance-with-platform-caching/
11. 
