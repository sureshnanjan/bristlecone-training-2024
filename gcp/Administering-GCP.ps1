# gcloud init
# cloud storage commands
$currentProjBuckets = Get-GcsBucket
$specificProjBuckets = Get-GcsBucket -Project my-project-1
$bucket = Get-GcsBucket -Name my-bucket-name

Get-PSProvider

# Project commands
Get-GcpProject

Get-Help Get-GcpProject -Examples

# Compute Instances commands
Get-GceInstance -Project bristlecone-gcp |
    Sort Status |
    Format-Table Name, Status -GroupBy Status
Get-Command -Module GoogleCloud -Verb get

# IAM commands
Get-GcIamPolicyBinding | select -ExpandProperty Members

# SQL Commands
Get-GcSqlInstance | select -ExpandProperty Settings
GcSqlSettingConfig
$(Get-GcSqlInstance).Settings
# cloud storage commands
# Navigate to Cloud Storage
cd gs:\
# Show the available buckets
ls
# Create a new bucket
mkdir my-new-bucket