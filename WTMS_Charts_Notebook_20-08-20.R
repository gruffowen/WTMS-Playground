install.packages("tidycovid19")
install.packages("remotes")
remotes::install_github("joachim-gassen/tidycovid19")
1
library(tidyverse)
library(tidycovid19)
library(zoo)
df <- download_merged_data(cached = TRUE, silent = TRUE)
df %>%
  filter(iso3c == "ITA") %>%
  mutate(
    new_cases = confirmed - lag(confirmed),
    ave_new_cases = rollmean(new_cases, 7, na.pad=TRUE, align="right")
  ) %>%
  filter(!is.na(new_cases), !is.na(ave_new_cases)) %>%
  ggplot(aes(x = date)) +
  geom_bar(aes(y = new_cases), stat = "identity", fill = "lightblue") +
  geom_line(aes(y = ave_new_cases), color ="red") +
  theme_minimal()

merged <- download_merged_data(cached = TRUE, silent = TRUE)
plot_covid19_spread(
  merged, highlight = c("ITA", "ESP", "GBR", "FRA", "DEU", "USA", "BRA", "MEX"),
  intervention = "lockdown"
)

plot_covid19_stripes()

?labs()

this.is.a.really.long.name <- 2.5

this.is.a.really.long.name
this

seq(1,10)
x <- "Hello World"
x
rm(x)
rm(r_rocks)
rm(this.is.a.really.long.name)
library(tidyverse)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
?filter
filter(mpg,cyl ==8)

x <- filter(Issues_2020.08.11,StatusDesc == "Unresolved")
?theme_set
theme_get
theme_set(theme_grey())

ggplot(data=Issues_Unresolved_Flintshire)+
  geom_bar(mapping= aes(x=PriorityDesc))+
  coord_flip()+
  facet_wrap(~ IssueType, nrow = 4)+
  labs(title = "Bar plots showing Issue types and Priorities", subtitle = "This is a subtitle")

Issues_Unresolved_Flintshire
count(Issues_Unresolved_Flintshire)

rm(x)

Issues_2020.08.11$RMP_Group[Issues_2020.08.11$IssueType == "Maintain Boardwalk/<10m/Wood*"] = "Boardwalk"
Issues_2020.08.11$RMP_Group[Issues_2020.08.11$IssueType == "Terrain/Waterlogged*"] = "Terrain"

Issues_2020.08.11

Summary$UnresolvedCount <- count(filter(Issues_2020.08.11, StatusDesc == "Unresolved"))
UnresolvedCount	
count(Issues_2020.08.11)
rm(UnresolvedCount)
rm(Summary)
?c
?data.frame
rm(x)

df <- data.frame(type=c("A", "A", "A", "B", "B"), group=rep("group1", 5))
df1 <- data.frame(type=c("A", "A", "A", "B", "B", "A", "A", "C", "B", "B"), group=c(rep("group1", 5),rep("group2", 5)))

df$type <- factor(df$type, levels=c("A","B", "C"))
df1$type <- factor(df1$type, levels=c("A","B", "C"))

df <- data.frame(table(df))

df1 <- data.frame(table(df1))

ggplot(df, aes(x=group, y=Freq, fill=type)) + geom_bar(position="dodge", stat = "identity")

ggplot(df1, aes(x=group, y=Freq, fill=type)) + geom_bar(position="dodge", stat = "identity")

rm(df)
rm(df1)

X <- data.frame(LA=levels(Issues_2020.08.11$ManagingAuth), number=count(Issues_2020.08.11$ManagingAuth))
?factor
?levels

levels(Issues_Unresolved_Flintshire$StatusDesc)
rm(x)       
rm(X)

library(arsenal)
table_one <- tableby(ManagingAuth ~ ., data = Issues_2020.08.11)
summary(table_one, title = "WTMS Data")

rm(X)

Issue_Summary <- group_by(Issues_Unresolved_Flintshire, IssueTypeGroup, PriorityDesc)
Issue_Summary <- summarise(Issue_Summary, Count = n())
rm(Issue_Summary)

levels(Issues_2020.08.11$IssueTypeGroup)

install.packages("nycflights13")
library(nycflights13)
delays <- flights %>% 
  group_by(dest) %>% 
  summarise(
    count = n(),
    dist = mean(distance, na.rm = TRUE),
    delay = mean(arr_delay, na.rm = TRUE)
  ) %>% 
  filter(count > 20, dest != "HNL")
  )

filter(Issues_2020.08.11$ManagingAuth == "Flintshire")

Managing_Authority <- "Anglesey"

get("Managing_Authority")

testtable <- data.frame(test= c("Isle of Anglesey", "b"))

mtcars

mtcars$type <- rownames(mtcars)
dplyr::filter(mtcars, grepl('Toyota|Mazda', type))

y <- dplyr::filter(Issues_2020.08.11, IssueTypeGroup == "Maintain Boardwalk")

?if_else

mtcars
data(mtcars)
mtcars_tab        <- mtcars 
make_italic       <- formatter("span", style =  "font-style:italic")
names(mtcars_tab) <- make_italic(names(mtcars_tab))
formattable(mtcars_tab)

rm(mtcars)
rm(make_italic)
