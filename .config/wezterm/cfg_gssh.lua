local gssh = {
    {
      -- This name identifies the domain
      name = 'dongdong.c',
      -- The hostname or address to connect to. Will be used to match settings
      -- from your ssh config file
      remote_address = 'dongdongc',
      -- The username to use on the remote host
      username = 'dongdongli',
  
      remote_wezterm_path = "/usr/local/google/home/dongdongli/bin/wezterm"
    },
}

return gssh