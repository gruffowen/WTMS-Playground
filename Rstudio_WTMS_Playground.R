summary(IssuesWFS)
hist(IssuesWFS)
head(mtcars)
hist(mtcars)
hist(airmiles)
plot(IssuesWFS$PromotedRoute)
IssuesWFS[12,6]
plot(IssuesWFS$PriorityDesc)
summary(IssuesWFS$Priorit)
rnorm(50)
hist((rnorm(1000)))
plot((rnorm(100,0,1)))
plot(IssuesWFS$LoggedBy)
12+30
count.fields(IssuesWFS$StatusDesc)
count(IssuesWFS$StatusDesc)
summary(IssuesWFS$StatusDesc)
x = IssuesWFS$IssueType
x
summary(x)
plot(x)
ls()
rm(x)
ls()
x = seq(20,200)
mean(x)
rm("x")
class(IssuesWFS$LoggedDate)
rep("x",50)
4:20
which(summary(IssuesWFS$StatusDesc) == "Unresolved-NotQS")
Summary(which(IssuesWFS$StatusDesc == "Unresolved")
plot(Summary(IssuesWFS$StatusDesc),IssuesWFS$Region)
plot(IssuesWFS$StatusDesc)
plot(Titanic)
view(titanic)
x = titanic
Titanic -> x
rm(x)
# Libraries
library(ggplot2)

# Create data
data <- data.frame(
  x=LETTERS[1:26],
  y=abs(rnorm(26))
)

# Plot
ggplot(data, aes(x=x, y=y)) +
  geom_segment( aes(x=x, xend=x, y=0, yend=y), color="grey") +
  geom_point( color="orange", size=4) +
  theme_light() +
  theme(
    panel.grid.major.x = element_blank(),
    panel.border = element_blank(),
    axis.ticks.x = element_blank()
  ) +
  xlab("") +
  ylab("Value of Y")
rm(data)
install.packages("tidyverse")
library("tidyverse")
?mpg
ggplot (data = mpg)+
  geom_point(mapping = aes (x= displ, y=hwy),color="blue")
ggplot (data = IssuesWFS)+
  geom_point(mapping = aes (x = IssueTypeGroup, y=PriorityDesc, color=Region))
ggplot(data=mpg)
?mpg
mpg
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, colour = displ>5))
?mpg
mpg
??stroke
ggplot(data = IssuesWFS) + 
  geom_point(mapping = aes(x = IssueTypeGroup, y = PriorityDesc, colour = PriorityDesc))+
  facet_grid(.~PromotedRoute)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = class)) + 
  facet_grid(drv ~ cyl)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = drv, y = cyl))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, colour =drv))+
  geom_point(mapping = aes(x = displ,y=hwy,colour=drv))
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()
ggplot(data=IssuesWFS)+
  geom_bar(mapping= aes(x=PriorityDesc))+
  facet_grid(Region~ IssueTypeGroup)
ggplot(data=IssuesWFS)+
  geom_bar(mapping= aes(x=PriorityDesc, fill=LoggedBy))
ggplot(data=IssuesWFS)+
  geom_bar(mapping= aes(x=IssueTypeGroup, fill=PriorityDesc),position="dodge")
ggplot(data=Global_Mobility_Report_Wales)+
  geom_bar(mapping= aes(x=parks_percent_change_from_baseline,fill=sub_region_1),position="fill")
ggplot(data = Global_Mobility_Report_Wales, mapping = aes(x = date, y = parks_percent_change_from_baseline, colour=sub_region_1)) + 
  geom_smooth()
ggplot(data=multiTimeline_Camping_Jan.March_attrib)+
  geom_smooth(mapping = aes(x = Week, y = WalesCamping, Color=Year))+
  geom_point(mapping = aes(x = Week, y = WalesCamping, Color = Week))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(. ~ cyl)

rm(FurnitureWFS)
rm(Global_Mobility_Report_Wales)
rm(IssuesWFS)
rm(multiTimeline_Camping_Jan.March_attrib)

count(filter(Issues_2020.08.11, StatusDesc == "Unresolved"))
x <- count(filter(Issues_2020.08.11, StatusDesc == "Unresolved"))
x
