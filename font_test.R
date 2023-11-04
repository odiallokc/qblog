pacman::p_load(
  tidyverse,
  hrbrthemes,
  scales, 
  ggtext, 
  extrafont
  )
font_import(pattern = "Vazirmatn")
loadfonts(device = "win")


mtcars |> 
  tibble() |> 
  mutate(across(
    .cols = c(cyl, vs:carb),
    .fns = factor
  )) |> 
  ggplot(aes(mpg, disp, color = cyl)) +
  geom_point() +
  facet_wrap(~ am, scales = 'free') +
  labs(title = '**MPG** by **DISP**') +
  theme_light() +
  theme(
    plot.title = element_markdown()
  )
