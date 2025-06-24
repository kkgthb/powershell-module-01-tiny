function Get-CatFact {

    <#
    .Synopsis
        Returns 1 random cat fact from a larger set of cat facts.
    .DESCRIPTION
        Returns a useless cat fact.
    .EXAMPLE
        Get-CatFact

        This will write something such as "Cats typically have 4 legs" to the success stream.
    .NOTES
        Author: Katie Kodes
        Date: 2025-06-24
        Company: Katie Kodes
    #>

    Begin {} # end BEGIN

    Process {
        Get-Random -InputObject (Get-CatFactArray);
    } # end PROCESS

    End {} # end END

} #Get-CatFact