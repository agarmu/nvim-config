return {
  {
    "gaborvecsei/usage-tracker.nvim",
    opts = {
      keep_eventlog_days = 14,
      cleanup_freq_days = 7,
      event_wait_period_in_sec = 5,
      inactivity_threshold_in_min = 5,
      inactivity_check_freq_in_sec = 5,
      verbose = 0,
      telemetry_endpoint = "",
    },
  },
}
