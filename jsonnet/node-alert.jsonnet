{
  prometheusRules+:: {
    groups+: [
      {
        name: 'node-alert.rules',
        rules: [
          {
            expr: 'max by(device, instance) ((node_filesystem_size_bytes{fstype=~"ext[234]|btrfs|xfs|zfs"} - node_filesystem_avail_bytes{fstype=~"ext[234]|btrfs|xfs|zfs"}) / node_filesystem_size_bytes{fstype=~"ext[234]|btrfs|xfs|zfs"}) > 0.8',
            alert: 'NodeDiskSpaceUsageTooMuch',
            'for': '5m',
            annotations: {
              message: "Disk Space Usage (instance {{ $labels.instance }}, device {{ $labels.device }}) used more than 80%, VALUE = {{ $value }}\n"
            },
            labels: {
              severity: 'warning',
            }
          },
          {
            expr: 'max by(device, instance) ((node_filesystem_size_bytes{fstype=~"ext[234]|btrfs|xfs|zfs"} - node_filesystem_avail_bytes{fstype=~"ext[234]|btrfs|xfs|zfs"}) / node_filesystem_size_bytes{fstype=~"ext[234]|btrfs|xfs|zfs"}) > 0.9',
            alert: 'NodeDiskSpaceUsageTooMuch',
            'for': '5m',
            annotations: {
              message: "Disk Space Usage (instance {{ $labels.instance }}, device {{ $labels.device }}) used more than 90%, VALUE = {{ $value }}\n"
            },
            labels: {
              severity: 'critical',
            }
          },
          {
            expr: 'node:node_memory_utilisation: > 0.8',
            alert: 'NodeMemoryUtiliasationTooMuch',
            'for': '5m',
            annotations: {
              message: "node memory utilisation (instance {{ $labels.instance }}) used more than 80%, VALUE = {{ $value }}\n"
            },
            labels: {
              severity: 'warning',
            }
          },
          {
            expr: 'node:node_memory_utilisation: > 0.9',
            alert: 'NodeMemoryUtiliasationTooMuch',
            'for': '5m',
            annotations: {
              message: "node memory utilisation (instance {{ $labels.instance }}) used more than 90%, VALUE = {{ $value }}\n"
            },
            labels: {
              severity: 'critical',
            }
          },          {
            expr: 'node:node_cpu_utilisation:avg1m > 0.8',
            alert: 'NodeCpuUtiliasationTooMuch',
            'for': '5m',
            annotations: {
              message: "node CPU utilisation (instance {{ $labels.instance }}) used more than 80%, VALUE = {{ $value }}\n"
            },
            labels: {
              severity: 'warning',
            }
          },
          {
            expr: 'node:node_cpu_utilisation:avg1m > 0.9',
            alert: 'NodeCpuUtiliasationTooMuch',
            'for': '5m',
            annotations: {
              message: "node CPU utilisation (instance {{ $labels.instance }}) used more than 90%, VALUE = {{ $value }}\n"
            },
            labels: {
              severity: 'critical',
            }
          },
        ]
      },
    ],
  },
}
