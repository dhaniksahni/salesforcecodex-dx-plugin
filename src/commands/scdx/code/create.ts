import { flags, SfdxCommand } from '@salesforce/command';
import { Messages } from '@salesforce/core';
import * as fse from 'fs-extra';
import * as path from 'path';
import {Code} from '../../../lib/code';

Messages.importMessagesDirectory(__dirname);
const messages = Messages.loadMessages('salesforcecodex-dx-plugin', 'create');

export default class Create extends SfdxCommand {
      // Comment this out if your command does not support a hub org username
  protected static supportsDevhubUsername = false;

  // Set this to true if your command requires a project workspace; 'requiresProject' is false by default
  protected static requiresProject = false;

    public static args = [{name: 'file'}];

    protected static flagsConfig = {
      // flag with a value (-n, --name=VALUE)
      template: flags.string({char: 't', description: messages.getMessage('templateFlagDescription'), required: false}),
      outputdir: flags.string({char: 'd', description: messages.getMessage('outputdirFlagDescription'), required: false}),
      vars: flags.string({char: 'v', description: messages.getMessage('varsFlagDescription'), required: false})
    };


    public async run()
    {
      const template = this.flags.template;
      const outputdir = this.flags.outputdir;
      const vars = this.flags.vars;
      let templateFolder = path.join(__dirname,'./../../../../templates', template);
      if (!fse.existsSync(templateFolder)) {
        templateFolder = path.join(__dirname, './../../templates', template);
      }
      let code = new Code();

      code.createFiles(templateFolder, template, vars, outputdir, (err, success) => {
        if (err) {
          console.error('ERROR:', err);
          process.exit(1);
        }
        console.log(success);
      });
    }
}