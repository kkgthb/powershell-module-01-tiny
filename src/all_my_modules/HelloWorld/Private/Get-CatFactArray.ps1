function Get-CatFactArray {

    <#
    .Synopsis
        Returns a set of cat facts from which you may want to pick one or many of them.
    .DESCRIPTION
        Returns a set of useless cat facts.
    .EXAMPLE
        Get-CatFactArray

        This will write something to the success stream such as:
        @('Cats typically have 4 legs', 'Cats are typically furry', 'Cats are not dogs')
    .NOTES
        Author: Katie Kodes
        Date: 2025-06-24
        Company: Katie Kodes
    #>

    Write-Output -InputObject @('Cats typically have 4 legs', 'Cats are typically furry', 'Cats are not dogs')

} #Get-CatFactArray