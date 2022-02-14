
using Plots, RDatasets
gr()
x = rand(10)
y = sin.(x)
plot(x, y)
print("View plot")

# using Plots

plotlyjs()

x = rand(10)
y = sin.(x)

plot(x, y)
savefig("lineplot.png") # Saves the CURRENT_PLOT as a .png


# using StatsPlots

# @df exams plot(
#     :NormExam,
#     title="Line Plot of Normal Exam Scores",
#     label="Score",
#     lw=5
# )

x = rand(4, 10) #x
y = sin.(x) # y

scatter(x, y, markersize=12, alpha=0.4) # create the scatterplot
savefig("scatterplot.png") # Saves the CURRENT_PLOT as a .png


using PlotThemes

# using the :vibrant theme
Plots.theme(:vibrant)

names = ["Sam", "Peter", "John"]
grades = [56.4, 68, 86.4]

bar(names, grades, title="Student Grades for Some School")
xlabel!("Student Names")
ylabel!("Grades")
# savefig("bar_chart.png") # Saves the CURRENT_PLOT as a .png


# using the :ggplot2 theme
Plots.theme(:ggplot2)

names = ["Sam", "Peter", "John"]
grades = [56.4, 68, 86.4]

pie(names, grades)
title!("Student Grades by %")
annotate!()
savefig("pie_chart.png") # Saves the CURRENT_PLOT as a .png
