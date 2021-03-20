[CmdletBinding()]
param()

Trace-VstsEnteringInvocation $MyInvocation

# Get inputs for the task
$greetee = Get-VstsInput -Name greetee -Require

$greetingMessage = ("Hello {0} from version 0." -f $greetee)
Write-Host $greetingMessage
Write-Verbose $greetingMessage
Write-VstsTaskVerbose -Message $greetingMessage
Write-Host "##vso[task.complete result=Succeeded;]DONE"