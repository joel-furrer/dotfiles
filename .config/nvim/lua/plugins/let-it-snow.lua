return {
  {
    "marcussimonsen/let-it-snow.nvim",
    cmd = "LetItSnow", 
    opts = {
      delay = 500,
      snowflake_char = "\u{2744}",
      snowpile_chars = {
        "\u{2581}", "\u{2582}", "\u{2583}", "\u{2584}",
        "\u{2585}", "\u{2586}", "\u{2587}", "\u{2588}"
      },
      max_spawn_attempts = 500,
      create_highlight_groups = true,
    }
  }
}

