library(tidyverse)
library(readr)



ggplot(uncuyo,aes(x=anho,y=vol,group=plot,colour=treat))+
geom_line()+
  labs(x="Años",
       y=expression(paste("Volumen ( m"^3, "ha"^-1,")")))+
  theme_bw(base_line_size=.2)+
  scale_y_continuous(expand = c(0,0), breaks = seq(0,550,100),limits = c(0,550))
  theme(legend.position = c(0.85,0.6),
        legend.margin = margin(c(5, 5, 5, 0)),
        axis.text=element_text(size=6,colour="black",family = "times"),
        axis.title.x = element_text(size=7,colour="black",family = "times"),
        axis.title.y=element_text(size=7,colour="black",family = "times"),
        legend.text = element_text(size = 6,colour="black",family="times"),
        legend.title = element_text(size = 6,colour="black",family="times"),
        legend.key.size = unit(0.2,"cm"),
        axis.line = element_line(size = .1,colour="black"),
        axis.ticks = element_line(size=.3,colour="black"))
