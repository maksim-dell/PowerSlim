param(
[int]$ReleaseVersion = "20140418")

$currDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$url = "http://fitnesse.org/fitnesse-standalone.jar?responder=releaseDownload&release=$ReleaseVersion"
Invoke-WebRequest $url -OutFile (Join-Path $currDir "fitnesse-standalone.jar")
