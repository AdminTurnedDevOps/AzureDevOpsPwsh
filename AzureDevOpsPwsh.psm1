function Get-AllBuilds {
    [cmdletbinding(ConfirmImpact = 'low')]
    param(
        [string]$username,
        [string]$AZDevOpsOrg,
        [string]$AZDevOpsProject
    )
    begin {
        $password = Read-Host 'Please enter PAT Token' -AsSecureString
        $Auth = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $username, $password
        $base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $username, $PAT)))
    }

    process {
        try {
            $projectURL = "https://dev.azure.com/$AZDevOpsOrg/$AZDevOpsProject/_apis/build/builds?api-version=5.1"
            $Headers = @{
                Authorization = "Basic $base64AuthInfo" 
            }

            Invoke-RestMethod -Headers $Headers -Uri $projectURL -Method GET -Credential $Auth | ConvertTo-Json
        }

        catch {
            Write-Warning 'An error has occurred'
            $PSCmdlet.ThrowTerminatingError($_)
        }
    }
}

function Get-AllReleases {
    [cmdletbinding(ConfirmImpact = 'low')]
    param(
        [string]$username,
        [string]$AZDevOpsOrg,
        [string]$AZDevOpsProject
    )

    begin {
        $password = Read-Host 'Please enter PAT Token' -AsSecureString
        $Auth = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $username, $password
        $base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $username, $PAT)))
    }

    process {
        try {
            $projectURL = "https://dev.azure.com/$AZDevOpsOrg/$AZDevOpsProject/_apis/build/builds?api-version=5.1"
            $Headers = @{
                Authorization = "Basic $base64AuthInfo" 
            }

            Invoke-RestMethod -Headers $Headers -Uri $projectURL -Method GET -Credential $Auth | ConvertTo-Json
        }

        catch {
            Write-Warning 'An error has occurred'
            $PSCmdlet.ThrowTerminatingError($_)
        }
    }
}

function Get-BuildLogs {
    [cmdletbinding(ConfirmImpact = 'low')]
    param(
        [string]$username,
        [string]$AZDevOpsOrg,
        [string]$AZDevOpsProject,
        [int]$buildNumber
    )
    begin {
        $password = Read-Host 'Please enter PAT Token' -AsSecureString
        $Auth = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $username, $password
        $base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $username, $PAT)))
    }

    process {
        try {

            $projectURL = "https://dev.azure.com/$AZDevOpsOrg/$AZDevOpsProject/_apis/build/builds/$buildNumber/logs?api-version=5.1"
            $Headers = @{
                Authorization = "Basic $base64AuthInfo" 
            }

            Invoke-RestMethod -Headers $Headers -Uri $projectURL -Method GET -Credential $Auth | ConvertTo-Json
        }

        catch {
            Write-Warning 'An error has occurred'
            $PSCmdlet.ThrowTerminatingError($_)
        }
    }
    end { }
}