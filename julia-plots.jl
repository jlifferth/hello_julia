print("View plot")

using Plots
x = 1:10; y = rand(10); # These are the plotting data
plot(x, y)

# print("View plot 2")

using Plots
x = 1:10; y = rand(10, 2) # 2 columns means two lines
plot(x, y)


z = rand(10)
plot!(x, z)

x = 1:10; y = rand(10, 2) # 2 columns means two lines
p = plot(x, y)
z = rand(10)
plot!(p, x, z)

x = 1:10; y = rand(10, 2) # 2 columns means two lines
plot(x, y, title = "Two Lines", label = ["Line 1" "Line 2"], lw = 10)
xlabel!("My x label")

x = 1:10; y = rand(10, 2) # 2 columns means two lines
plotlyjs() # Set the backend to Plotly
# This plots into the web browser via Plotly
plot(x, y, title = "This is Plotted using Plotly")

gr() # Set the backend to GR
# This plots using GR
plot(x, y, title = "This is Plotted using GR")


gr() # We will continue onward using the GR backend
plot(x, y, seriestype = :scatter, title = "My Scatter Plot")

# savefig("myscatterplot.png") # Saves the CURRENT_PLOT as a .png
# savefig(p, "myscatterplot.pdf") # Saves the plot from p as a .pdf vector graphic