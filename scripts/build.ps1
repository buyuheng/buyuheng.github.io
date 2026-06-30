$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot
$SourceRoot = Join-Path $Root "src\jemdoc"
$Jemdoc = Join-Path $Root "tools\jemdoc.py"

Push-Location $SourceRoot
try {
  $Pages = @(
    @("index.jemdoc", "index.html"),
    @("publications.jemdoc", "publications.html"),
    @("group.jemdoc", "group.html"),
    @("teaching.jemdoc", "teaching.html"),
    @("courses\optimization.jemdoc", "optimization.html"),
    @("courses\itml.jemdoc", "itml.html"),
    @("courses\itml_UF.jemdoc", "itml_UF.html")
  )

  foreach ($Page in $Pages) {
    python $Jemdoc -o (Join-Path $Root $Page[1]) $Page[0]
  }
}
finally {
  Pop-Location
}
