$setting = $(Get-GcSqlInstance).Settings
$replicaConfig = New-GcSqlInstanceReplicaConfig -FailoverTarget
$instance = New-GcSqlInstanceConfig "myfailover" `
    -SettingConfig $setting `
    -ReplicaConfig $replicaConfig `
    -MasterInstanceName "mysql-instance"
Add-GcSqlInstance $instance

