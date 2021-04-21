# README

This is code for a lighting talk delivered for DDD Melbourne by Night on the 21st of
April 2021.

## Infrastructure as Code

- Repeatable, hedges against environment drift which reduces errors in
  downstream processes;
- PowerShell DSC; and
- Azure Resource Manager templates originally used JSON.

## Azure Resource Manager Templates

- JSON and can be used across scopes (in most cases these are resource groups);
- Problems
  - JSON;
  - Clunky; and
  - Verbose.

## Bicep

- *Transpiles* down to ARM templates;
- Custom built syntax (not JSON or anything already existing online); and
- Easy installation (now comes with the Azure CLI).

To deploy into an existing resource group:

```cmd
% az deployment group create --resource-group a-resource-group --template-file a-template.bicep
```

## Notes

- Ready for production;
- Use the ARM documentation as it is interoperable;
- Easy syntax; and
- Growing community.
