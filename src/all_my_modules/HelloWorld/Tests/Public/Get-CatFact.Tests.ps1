BeforeAll {
    Import-Module ([IO.Path]::Combine($PSScriptRoot, '..', '..')) -Scope 'Local' -Force
}

Describe 'Get-CatFact function' {
    It 'returns a string' {
        Get-CatFact | Should -BeOfType [System.String]
    }
    It 'does not return empty' {
        Get-CatFact | Should -Not -BeNullOrEmpty
    }
}