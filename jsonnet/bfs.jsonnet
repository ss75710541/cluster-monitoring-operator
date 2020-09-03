{
  prometheusRules+:: {
    groups+: [
      {
        name: 'bfs.rules',
        rules: [
          {
            expr: 'count by (rnodeid) (rnode_link_fnode_credit{status!="dying"})',
            record: 'rnodeid:rnode_link_fnode_credit:no_dying_count'
          },
          {
            expr: 'count by (rnodeid,status)(rnode_link_fnode_credit{})',
            record: 'rnodeid_status:rnode_link_fnode_credit:status_count'
          },
          {
            expr: 'count by (rnodeid) (rnode_link_fnode_credit{})',
            record: 'rnodeid:rnode_link_fnode_credit:count'
          },
          {
            expr: 'sum by (rnodeid) (rnode_link_fnode_qoutam{})',
            record: 'rnodeid:rnode_link_fnode_qoutam:sum'
          },
          {
            expr: 'sum by (rnodeid) (rnode_link_fnode_usedm{})',
            record: 'rnodeid:rnode_link_fnode_usedm:sum'
          },
          {
            expr: 'count by (rnodeid) (rnode_link_fnode_usedm_rate{} >= 0.85)',
            labels:
              { quantile: "0.85" },
            record: 'rnodeid:rnode_link_fnode_usedm_rate:percentile_greater_equal_count'
          },
          {
            expr: 'count by (rnodeid) (rnode_link_fnode_usedm_rate{} < 0.85)',
            labels:
              { quantile: "0.85" },
            record: 'rnodeid:rnode_link_fnode_usedm_rate:percentile_less_count'
          },
          {
            expr: 'count by (rnodeid) (rnode_link_fnode_usedm_rate{} >= 0.70)',
            labels:
              { quantile: "0.70" },
            record: 'rnodeid:rnode_link_fnode_usedm_rate:percentile_greater_equal_count'
          },
          {
            expr: 'count by (rnodeid) (rnode_link_fnode_usedm_rate{} < 0.70)',
            labels:
              { quantile: "0.70" },
            record: 'rnodeid:rnode_link_fnode_usedm_rate:percentile_less_count'
          },
          {
            expr: 'count by (rnodeid) (rnode_link_fnode_usedm_rate{} >= 0.50)',
            labels:
              { quantile: "0.50" },
            record: 'rnodeid:rnode_link_fnode_usedm_rate:percentile_greater_equal_count'
          },
          {
            expr: 'count by (rnodeid) (rnode_link_fnode_usedm_rate{} < 0.50)',
            labels:
              { quantile: "0.50" },
            record: 'rnodeid:rnode_link_fnode_usedm_rate:percentile_less_count'
          },
          {
            expr: 'count by (rnodeid) (rnode_link_fnode_credit{}<0.90)',
            labels:
              { quantile: "0.90" },
            record: 'rnodeid:rnode_link_fnode_credit:percentile_less_count'
          },
          {
            expr: 'count by (rnodeid) (rnode_link_fnode_credit{}<0.60)',
            labels:
              { quantile: "0.60" },
            record: 'rnodeid:rnode_link_fnode_credit:percentile_less_count'
          },
          {
            expr: 'avg by (rnodeid) (rnode_dltest_dlaccuracy{})',
            record: 'rnodeid:rnode_dltest_dlaccuracy:avg'
          },
          {
            expr: 'avg by (rnodeid) (rnode_dltest_dlspeed{})',
            record: 'rnodeid:rnode_dltest_dlspeed:avg'
          },
          {
            expr: 'count by (rnodeid) (rnode_uptest_time{issuccess="true",uptype="upload",upfield="afs"})',
            record: 'rnodeid:rnode_uptest_afs_time:success_count'
          },
          {
            expr: 'count by (rnodeid) (rnode_uptest_time{uptype="upload",upfield="afs"})',
            record: 'rnodeid:rnode_uptest_afs_time:count'
          },
          {
            expr: 'avg by (rnodeid) (rnode_uptest_time{uptype="upload",upfield="afs"})',
            record: 'rnodeid:rnode_uptest_afs_time:avg'
          },
          {
            expr: 'count by (rnodeid) (rnode_uptest_time{issuccess="true",uptype="upload",upfield="arfs"})',
            record: 'rnodeid:rnode_uptest_arfs_time:success_count'
          },
          {
            expr: 'count by (rnodeid) (rnode_uptest_time{uptype="upload",upfield="arfs"})',
            record: 'rnodeid:rnode_uptest_arfs_time:count'
          },
          {
            expr: 'avg by (rnodeid) (rnode_uptest_time{uptype="upload",upfield="arfs"})',
            record: 'rnodeid:rnode_uptest_arfs_time:avg'
          },
          {
            expr: 'count by (rnodeid) (rnode_uptest_time{issuccess="true",uptype="alias",upfield="agfs"})',
            record: 'rnodeid:rnode_uptest_agfs_alias:success_count'
          },
          {
            expr: 'count by (rnodeid) (rnode_uptest_time{uptype="alias", upfield="agfs"})',
            record: 'rnodeid:rnode_uptest_agfs_alias:count'
          },
          {
            expr: 'count by (rnodeid,upfield) (rnode_uptest_time{issuccess="true",uptype="set_p"})',
            record: 'rnodeid:rnode_uptest_set_p:success_count'
          },
          {
            expr: 'count by (rnodeid,upfield) (rnode_uptest_time{uptype="set_p"})',
            record: 'rnodeid:rnode_uptest_set_p:count'
          },
          {
            expr: 'sum by (rnodeid) (rnode_fstat_daliy_download_file_count{})',
            record: 'rnodeid:rnode_fstat_daliy_download_file_count:sum'
          },
          {
            expr: 'sum by (rnodeid) (rnode_fstat_daliy_downloading_file_count{})',
            record: 'rnodeid:rnode_fstat_daliy_downloading_file_count:sum'
          },
          {
            expr: 'sum by (rnodeid) (rnode_fstat_daliy_m_x_file_count{})',
            record: 'rnodeid:rnode_fstat_daliy_m_x_file_count:sum'
          },
          {
            expr: 'sum by (rnodeid) (rnode_fnode_daily_block_count{})',
            record: 'rnodeid:rnode_fnode_daily_block_count:sum'
          },
          {
            expr: 'sum by (rnodeid) (rnode_fnode_daily_yesterday_block_count{})',
            record: 'rnodeid:rnode_fnode_daily_yesterday_block_count:sum'
          },
          {
            expr: 'sum by (rnodeid) (rnode_fnode_daily_file_length{})',
            record: 'rnodeid:rnode_fnode_daily_file_length:sum'
          },
          {
            expr: 'sum by (rnodeid) (rnode_fnode_daily_fnode_block_count{})',
            record: 'rnodeid:rnode_fnode_daily_fnode_block_count:sum'
          },
          {
            expr: 'sum by (rnodeid) (rnode_ftask_daliy_task_count_in_server_dir{})',
            record: 'rnodeid:rnode_ftask_daliy_task_count_in_server_dir:sum'
          },
          {
            expr: 'sum by (rnodeid) (rnode_ftask_daliy_send_download_task_count{})',
            record: 'rnodeid:rnode_ftask_daliy_send_download_task_count:sum'
          },
          {
            expr: 'sum by (rnodeid) (rnode_link_fnode_block{})',
            record: 'rnodeid:rnode_link_fnode_block:sum'
          },
          {
            expr: 'max by (rnodeid) (rnode_fafid_daily_total_afid_count{})',
            record: 'rnodeid:rnode_fafid_daily_total_afid_count:max'
          },
          {
            expr: 'max by (rnodeid) (rnode_agfs_fagfid_daily_total_count{})',
            record: 'rnodeid:rnode_agfs_fagfid_daily_total_count:max'
          },
          {
            expr: 'max by (rnodeid) (rnode_arfs_fafid_daily_i_count{})',
            record: 'rnodeid:rnode_arfs_fafid_daily_i_count:max'
          },
          {
            expr: 'max by (rnodeid) (rnode_fstat_daliy_aos_size{})',
            record: 'rnodeid:rnode_fstat_daliy_aos_sizem:max'
          },
          {
            expr: 'max by (rnodeid) (rnode_fstat_daliy_afs_1e_size{})',
            record: 'rnodeid:rnode_fstat_daliy_afs_1e_sizem:max'
          },
          {
            expr: 'max by (rnodeid) (rnode_fstat_daliy_arfs_1e_size{})',
            record: 'rnodeid:rnode_fstat_daliy_arfs_1e_sizem:max'
          },
          {
            expr: 'max by (rnodeid) (rnode_fstat_daliy_agfs_1e_size{})',
            record: 'rnodeid:rnode_fstat_daliy_agfs_1e_sizem:max'
          },
          {
            expr: 'max by (rnodeid) (rnode_fstat_daliy_idx_size{})',
            record: 'rnodeid:rnode_fstat_daliy_idx_sizem:max'
          },
          {
            expr: 'max by (rnodeid) (rnode_fstat_daliy_rn_api_size{})',
            record: 'rnodeid:rnode_fstat_daliy_rn_api_sizem:max'
          },
          {
            expr: 'max by (rnodeid) (rnode_fstat_daliy_tn_api_size{})',
            record: 'rnodeid:rnode_fstat_daliy_tn_api_sizem:max'
          },
          {
            expr: 'max by (rnodeid) (rnode_fstat_daliy_pn_api_size{})',
            record: 'rnodeid:rnode_fstat_daliy_pn_api_sizem:max'
          },
          {
            expr: 'sum by (rnodeid) (rnode_link_fnode_credit{})/rnodeid:rnode_link_fnode_credit:count',
            record: 'rnodeid:rnode_link_fnode_credit:rate'
          },
          {
            expr: 'rnodeid:rnode_dltest_dlaccuracy:avg < 100',
            alert: 'BfsRnodeDownloadTestError',
            'for': '5m',
            annotations: {
              message: 'rnode {{ $labels.rnodeid }} download test accuracy {{ $value }}% .',
            },
            labels: {
              severity: 'warning',
            }
          },
          {
            expr: 'rnodeid:rnode_dltest_dlaccuracy:avg < 90',
            alert: 'BfsRnodeDownloadTestError',
            'for': '5m',
            annotations: {
              message: 'rnode {{ $labels.rnodeid }} download test accuracy {{ $value }}% .',
            },
            labels: {
              severity: 'critical',
            }
          },
          {
            expr: 'sum by (rnodeid) (rnodeid:rnode_uptest_afs_time:success_count) / sum by (rnodeid) (rnodeid:rnode_uptest_afs_time:count) < 1',
            alert: 'BfsRnodeUploadTestAfsError',
            'for': '5m',
            annotations: {
              message: 'rnode {{ $labels.rnodeid }} upload test afs accuracy {{ printf "%0.0f" $value }}% .',
            },
            labels: {
              severity: 'critical',
            }
          },
          {
            expr: 'sum by (rnodeid) (rnodeid:rnode_uptest_arfs_time:success_count) / sum by (rnodeid) (rnodeid:rnode_uptest_arfs_time:count) < 1',
            alert: 'BfsRnodeUploadTestArfsError',
            'for': '5m',
            annotations: {
              message: 'rnode {{ $labels.rnodeid }} upload test arfs accuracy {{ printf "%0.0f" $value }}% .',
            },
            labels: {
              severity: 'critical',
            }
          },
          {
            expr: 'sum by (rnodeid) (rnodeid:rnode_uptest_agfs_time:success_count) / sum by (rnodeid) (rnodeid:rnode_uptest_agfs_time:count) < 1',
            alert: 'BfsRnodeUploadTestAgfsError',
            'for': '5m',
            annotations: {
              message: 'rnode {{ $labels.rnodeid }} upload test agfs accuracy {{ printf "%0.0f" $value }}% .',
            },
            labels: {
              severity: 'critical',
            }
          },
          {
            expr: 'rnodeid:rnode_fstat_daliy_download_file_count:sum > 10000',
            alert: 'BfsRnodeDownloadFileCountError',
            'for': '5m',
            annotations: {
              message: 'rnode {{ $labels.rnodeid }} download_file_count {{ $value }} .',
            },
            labels: {
              severity: 'warning',
            }
          },
          {
            expr: 'rnodeid:rnode_fstat_daliy_download_file_count:sum > 100000',
            alert: 'BfsRnodeDownloadFileCountError',
            'for': '5m',
            annotations: {
              message: 'rnode {{ $labels.rnodeid }} download_file_count {{ $value }} .',
            },
            labels: {
              severity: 'critical',
            }
          },
          {
            expr: '( rnodeid:rnode_link_fnode_credit:no_dying_count - (rnodeid:rnode_link_fnode_credit:no_dying_count offset 1m) ) / rnodeid:rnode_link_fnode_credit:no_dying_count < -0.3',
            alert: 'BfsRnodeFnodeWorkCountSharpDrop',
            'for': '1m',
            annotations: {
              message: 'rnode {{ $labels.rnodeid }} fnode work count drop rate {{ printf "%0.0f" $value }}% .',
            },
            labels: {
              severity: 'critical',
            }
          },
          {
            expr: 'rnodeid:rnode_link_fnode_credit:rate < 0.5',
            alert: 'BfsRnodeFnodeCreditRateError',
            'for': '5m',
            annotations: {
              message: 'rnode {{ $labels.rnodeid }} credit rate {{ $value }}% .',
            },
            labels: {
              severity: 'critical',
            }
          },
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
        ]
      },
    ],
  },
}
