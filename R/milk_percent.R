library(ggplot2)
library(cowplot)
library(magick)
library(recolorize)
library(ggstar)
library(tidyverse)
library(ggrepel)



img1 <- readImage("~/Desktop/fantasy/R/rich.png", resize = NULL, rotate = NULL)


# Creating a tibble with two columns
df <- tibble(
    names = c("Clink", "Bill", "Wesley", "Richard", "Jack", "Ted", "Brady", "Greg", "Dan", "Will"),
    perc = c(0,0,0,100,0,0,0,0,0,0)
)

df

g = ggplot(df, aes(x = names, y = perc)) +
    geom_bar(stat = "identity") + 
    labs(
        x = "Team Owners",
        y = "Percent (%)",
        title = "Percent Chance to be Milky Boy"
    ) +
    theme_classic() +
    theme(plot.title = element_text(face = "bold", hjust = 0.5, size = 18),
          axis.text.x = element_text(size = 12),
          axis.text.y = element_text(size = 12),
          text = element_text(size = 12))

g

# plot with image
ggdraw(g) +
    draw_image(img1, x = -0.15, y = 0.1, scale = .5)
    