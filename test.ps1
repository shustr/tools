$SourceFilePath = "\\Personal\Shome$\GaydukoA\scriptTests\test\test.txt"
#greps (at least supposed to) column for Disk name
$SourceFileContentDisk = Get-Content $SourceFilePath | findstr "\\" | %{ $_.Split(':')[0]; }
$SourceFileContentDisk.Trim() | %{ $_.Split('\s')[0]; }

#greps (at least supposed to) column for Disk path
$SourceFileContentDiskPath = Get-Content $SourceFilePath | findstr "\\" | %{ $_.Split(':')[1]; }
$SourceFileContentDiskPath.Trim() | %{ $_.Split(' ')[0]; }
