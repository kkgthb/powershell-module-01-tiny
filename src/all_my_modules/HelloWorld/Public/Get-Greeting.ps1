function Get-Greeting {

    <#
    .Synopsis
        Greets you by name.
    .DESCRIPTION
        Says hello to you by name.
    .EXAMPLE
        Get-Greeting -Name 'Katie'

        This will write "Hello, Katie." to the success stream.
    .EXAMPLE
        'Katie', 'Whiskers' | Get-Greeting

        This will write "Hello, Katie." on one line and "Hello, Whiskers." on another line of the success stream.
    .PARAMETER Name
        Name you would like to greet.  (Default is "world".)  Also accepts string arrays and greets them one at a time.
    .NOTES
        Author: Katie Kodes
        Date: 2025-06-24
        Company: Katie Kodes
    #>

    [CmdletBinding()]
    Param (
        [Parameter(
            ValueFromPipeline,
            HelpMessage = 'The name whom you would like to greet'
        )]
        [ValidateNotNullOrWhiteSpace()]
        [string[]]$Name = 'World'
    ) # end Param

    Begin {} # end BEGIN

    Process {
        ForEach ($nm in $Name) {
            Write-Output -InputObject "Hello, $nm."
        }
    } # end PROCESS

    End {} # end END

} #Get-Greeting
