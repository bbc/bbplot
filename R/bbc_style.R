#' Add bbc theme to ggplot chart
#'
#' This function allows you to add the bbc theme to your ggplotgraphics.
#' @keywords bbc_style
#' @export
#' @examples
#' line <- ggplot(line_df, aes(x = year, y = lifeExp)) +
#' geom_line(colour = "#007f7f", size = 1) +
#' geom_hline(yintercept = 0, size = 1, colour="#333333") +
#' bbc_style()

bbc_style <- function() {
  font <- "Helvetica"

  ggplot2::theme(

  #Text format:
  #This sets the font, size, type and colour of text for the chart's title
  plot.title = ggplot2::element_text(family=font,
                            size=28,
                            face="bold",
                            color="#222222"),
  #This sets the font, size, type and colour of text for the chart's subtitle, as well as setting a margin between the title and the subtitle
  plot.subtitle = ggplot2::element_text(family=font,
                               size=22,
                               margin=ggplot2::margin(9,0,9,0)),
  plot.caption = ggplot2::element_blank(),
  #This leaves the caption text element empty, because it is set elsewhere in the finalise plot function

  #Legend format
  #This sets the position and alignment of the legend, removes a title and backround for it and sets the requirements for any text within the legend. The legend may often need some more manual tweaking when it comes to its exact position based on the plot coordinates.
  legend.position = "top",
  legend.text.align = 0,
  legend.background = ggplot2::element_blank(),
  legend.title = ggplot2::element_blank(),
  legend.key = ggplot2::element_blank(),
  legend.text = ggplot2::element_text(family=font,
                             size=18,
                             color="#222222"),

  #Axis format
  #This sets the text font, size and colour for the axis test, as well as setting the margins and removes lines and ticks. In some cases, axis lines and axis ticks are things we would want to have in the chart - the cookbook shows examples of how to do so.
  axis.title = ggplot2::element_blank(),
  axis.text = ggplot2::element_text(family=font,
                           size=18,
                           color="#222222"),
  axis.text.x = ggplot2::element_text(margin=ggplot2::margin(5, b = 10)),
  axis.ticks = ggplot2::element_blank(),
  axis.line = ggplot2::element_blank(),

  #Grid lines
  #This removes all minor gridlines and adds major y gridlines. In many cases you will want to change this to remove y gridlines and add x gridlines. The cookbook shows you examples for doing so
  panel.grid.minor = ggplot2::element_blank(),
  panel.grid.major.y = ggplot2::element_line(color="#cbcbcb"),
  panel.grid.major.x = ggplot2::element_blank(),

  #Blank background
  #This sets the panel background as blank, removing the standard grey ggplot background colour from the plot
  panel.background = ggplot2::element_blank(),

  #Strip background (#This sets the panel background for facet-wrapped plots to white, removing the standard grey ggplot background colour and sets the title size of the facet-wrap title to font size 22)
  strip.background = ggplot2::element_rect(fill="white"),
  strip.text = ggplot2::element_text(size  = 22,  hjust = 0)
  )
  }
