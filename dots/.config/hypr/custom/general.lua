-- Monitor
hl.monitor({
    output = "DP-1",
    mode = "2560x1440@300",
    position = "0x0",
    scale = 1,
    bitdepth = 10,
    cm = "auto",
    icc = "/home/nicholas/.local/share/icc/msi_mag_274qpf_x30mv.icm",
})

-- Input
hl.config({
    input = {
        accel_profile = "flat",
    },
    general = {
        gaps_in = 6,
        gaps_out = 12,
        gaps_workspaces = 50,
        border_size = 0,
        ["col.active_border"] = "rgba(0DB7D455)",
        ["col.inactive_border"] = "rgba(31313600)",
        resize_on_border = true,
        no_focus_fallback = true,
        allow_tearing = true,
        snap = {
            enabled = true,
            window_gap = 4,
            monitor_gap = 5,
            respect_gaps = true,
        },
    },
})

-- Appearance
hl.config({
    decoration = {
        rounding_power = 2.5,
        rounding = 18,

        -- Global defaults
        active_opacity = 0.95,
        inactive_opacity = 0.85,
        fullscreen_opacity = 1.0,

        -- Frosted Acrylic Blur
        blur = {
            enabled = true,
            xray = false,
            special = false,
            new_optimizations = true,
            ignore_opacity = true,
            size = 9,
            passes = 3,
            brightness = 0.90,
            noise = 0.02,
            contrast = 0.95,
            vibrancy = 0.25,
            vibrancy_darkness = 0.10,
            popups = true,
            popups_ignorealpha = 0.5,
            input_methods = true,
            input_methods_ignorealpha = 0.8
        },

        shadow = {
            enabled = true,
            range = 24,
            offset = {0, 2},
            render_power = 3,
            color = "rgba(00000030)"
        },

        dim_inactive = false,
        dim_strength = 0.05,
        dim_special = 0.2
    }
})

-- 1. Enable blur globally for all windows
hl.window_rule({
    name = "enableBlurGlobally",
    match = { class = ".*" },
    no_blur = false
})

-- 2. Keep video players and image viewers 100% solid
hl.window_rule({
    name = "keepMediaOpaque",
    match = { class = "^(mpv|vlc|imv|feh|swappy)$" },
    opacity = "1.0 override 1.0 override",
    no_blur = true
})
