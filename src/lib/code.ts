import * as fs from 'fs';
import * as fse from 'fs-extra';
import * as path from 'path';

export class Code
{
  updateContent=function(content, values) {
      const splitValues = values.split('=');
    
      const varName = splitValues[0];
      const varValue = splitValues[1];
    
      content = content.replace(new RegExp(`{{${varName}}}`, 'g'), varValue);
      return content;
  }
  
  validateVars=function name(vars,template) {
      if(template==='trigger' && !vars.includes('objectName')) return false;
      return true;
  }

  fileName=function name(vars) {
    const splitVars = vars.split(',');
    var name='';
    splitVars.map(function(obj) {
      const values = obj.split('=');
      if(values[0]==='objectName' && values[0]!==null)
      {
        name=values[1];
      }
    });
    return name;
  }
  isCustomObject=function name(name) {
      if(name.indexOf('__c')>0)
      {
        return true;
      }
      return false;
  }

  createFiles=function(templateFolder, template, vars, outputdir, done) {
      if (!outputdir) {
        outputdir = '.';
      }

      var name=this.fileName(vars);
      if(name=='')
      {
        done('objectName is required', null);
      }

      var isCustomObject=this.isCustomObject(name);
      if(isCustomObject)
      {
          vars=vars.replace('objectName','entityName');
          name=name.replace('__c','').replace('_','');
          vars=vars+',objectName='+name;
      }
      if (!this.validateVars(vars,template)) {
        done('objectName is required for trigger generation', null);
      }

      if (!fse.existsSync(templateFolder)) {
        done(`specified template '${template}' doesn't exist`, null);
      }

      const defJsonPath = path.join(templateFolder, 'def.json');
    
      if (!fse.existsSync(defJsonPath)) {
        done('def.json not found', null);
      }
    
      const defJson = JSON.parse(fs.readFileSync(defJsonPath).toString());
      const defJsonVars = defJson.vars;
      const defJsonBundle = defJson.bundle;
      const defJsonFiles = defJson.files;
    
      if (!vars) {
        done(`The following variables are required: ${defJsonVars}. Specify them like: -v className=myclass,apiName=48.0`, null);
      }
    
      const filesCreated = [];
    
      defJsonFiles.forEach((row) => {
        const fileName = row[0];
        const fileExtension = row[1];
    
        if (fileName !== 'def.json') {
    
          const templateFilePath = path.join(templateFolder, fileName);
          let content = fs.readFileSync(templateFilePath).toString();
    
          if (vars.includes(',')) {
            const splitVars = vars.split(',');
            splitVars.forEach((value) => {
              content = this.updateContent(content, value);
            });
          } else {
            content = this.updateContent(content, vars);
          }
    
          let newFile = path.join(outputdir, `${name}${fileExtension}`);
          // if bundle flagged as true, add all the files in a folder with the same name
          if (defJsonBundle) {
            newFile = path.join(outputdir, name, `${name}${fileExtension}`);
          } 
    
          const newFilePath = path.dirname(newFile);
    
          fse.ensureDirSync(newFilePath);
          fs.writeFileSync(newFile, content);
          filesCreated.push(newFile);
        }
      });
    
      let result = 'The following files are created:';
      for (let i = 0; i < filesCreated.length; i++) {
        result += `\n  ${filesCreated[i]}`;
      }
    
      done(null, result);
  }
};