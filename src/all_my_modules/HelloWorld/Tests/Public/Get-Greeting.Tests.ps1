BeforeAll {
    Import-Module ([IO.Path]::Combine($PSScriptRoot, '..', '..')) -Scope 'Local' -Force
}

Describe 'Get-Greeting function' {
    It 'returns a string' {
        Get-Greeting | Should -BeOfType [System.String]
    }
    It 'does not return empty' {
        Get-Greeting | Should -Not -BeNullOrEmpty
    }
    It 'greets the world when not passed a parameter' {
        Get-Greeting | Should -Be 'Hello, World.'
    }
    It 'greets a name when passed an explicit string parameter' {
        Get-Greeting -Name 'you' | Should -Be 'Hello, you.'
    }
    It 'greets a name when passed a unnamed string parameter' {
        Get-Greeting 'you' | Should -Be 'Hello, you.'
    }
    It 'greets a name when passed a pipeline string parameter' {
        'you' | Get-Greeting | Should -Be 'Hello, you.'
    }
    It 'separately greets each name when passed an explicit array parameter' {
        Get-Greeting -Name @('me', 'you') | Should -Be @('Hello, me.', 'Hello, you.')
    }
    It 'separately greets each name when passed a pipeline array parameter' {
        @('me', 'you') | Get-Greeting | Should -Be @('Hello, me.', 'Hello, you.')
    }
}