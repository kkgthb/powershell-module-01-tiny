# Demo:  A simple PowerShell module

## Example folder structure

Mine is nested one level deeper _(`./src/all_my_modules/HelloWorld` instead of `./src/my_module`)_, and I added a shared `./src/PSScriptAnalyzerNUnit/Public/Export-NUnitXml.psm1` file to this codebase, and I haven't yet added any sort of build pipeline to this codebase that helps auto-version it.  But otherwise, it's the same idea as the simpler sample folder structure below:

```
/
├─ .cicd
│  └─ my_pipeline.yml
├─ src
│  └─ my_module
│     ├─ Private
│     │  └─ Get-CatFactArray.ps1
│     ├─ Public
│     │  ├─ Get-CatFact.ps1
│     │  └─ Get-Greeting.ps1
│     ├─ Tests
│     │  └─ Public
│     │     ├─ Get-CatFact.Tests.ps1
│     │     └─ Get-Greeting.Tests.ps1
│     ├─ HelloWorld.psd1
│     └─ HelloWorld.psm1
├─ .gitignore
└─ README.md
```

