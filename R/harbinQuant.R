harbinQuant<-function(){
  require(harbin)
  #harbin.quant()
  env <- environment()
  initializeDialog(title=gettextRcmdr("Harbin RT-qPCR quantification"), use.tabs=TRUE, tabs=c("inputTab"))
  assign(".inputFrame", tkframe(inputTab), envir=env)
  #.numeric <- Numeric()
  #xBox <- variableListBox(top, .numeric,
  #                        title=gettextRcmdr("First variable (pick one)"))
  #yBox <- variableListBox(top, .numeric,
  #                        title=gettextRcmdr("Second variable (pick one)"))
  onOK <- function(){
    cat("onOK worked!\n")
  #  x <- getSelection(xBox)
  #  y <- getSelection(yBox)
  #  if (length(x) == 0 | length(y) == 0){
  #    errorCondition(recall=pairedTTest,
  #                   message=gettextRcmdr("You must select two variables."))
  #    return()
  #  }
  #  if (x == y){
  #    errorCondition(recall=pairedTTest,
  #                   message=gettextRcmdr("Variables must be different."))
  #    return()
  #  }
  #  alternative <- as.character(tclvalue(alternativeVariable))
  #  level <- tclvalue(confidenceLevel)
    closeDialog()
  #  .activeDataSet <- ActiveDataSet()
  #  doItAndPrint(paste("t.test(", .activeDataSet, "$", x, ", ",
  #                     .activeDataSet, "$", y,
  #                     ", alternative=’", alternative, "’, conf.level=", level,
  #                     ", paired=TRUE)", sep=""))
    tkfocus(CommanderWindow())
  }
  #OKCancelHelp(helpSubject="t.test")
  OKCancelHelp(helpSubject='harbin.quant')
  #radioButtons(top, name="alternative",
  #             buttons=c("twosided", "less", "greater"),
  #             values=c("two.sided", "less", "greater"),
  #             labels=gettextRcmdr(c("Two-sided", "Difference < 0",
  #                                   "Difference > 0")),
  #             title=gettextRcmdr("Alternative Hypothesis"))
  #confidenceFrame <- tkframe(top)
  #confidenceLevel <- tclVar(".95")
  #confidenceField <- tkentry(confidenceFrame, width="6",
  #                           textvariable=confidenceLevel)
  #tkgrid(getFrame(xBox), getFrame(yBox), sticky="nw")
  #tkgrid(tklabel(confidenceFrame,
  #               text=gettextRcmdr("Confidence Level"), fg="blue"))
  #tkgrid(confidenceField, sticky="w")
  #tkgrid(alternativeFrame, confidenceFrame, sticky="nw")
  sliderFrame <- tkframe(inputTab)
  rowsValue<-3
  rowsSlider <- tkscale(sliderFrame, from=1, to=6, showvalue=FALSE, variable=rowsValue, resolution=1, orient="horizontal")#, command=setUpTable)
  rowsShow <- labelRcmdr(sliderFrame, textvariable=rowsValue, width=2, justify="right")
  tkgrid(labelRcmdr(sliderFrame, text=gettextRcmdr("Number of reference genes:")), rowsSlider, rowsShow, sticky="we", padx = 6,  pady = 6)
  tkgrid(sliderFrame, sticky="w")

  f.frame <- tkframe (inputTab)
  #tkpack (tkbutton (f.frame), side="left")

  goi.button <- tkbutton(f.frame, text = "Select GOI file(s)")#, command = getfile)
  tkgrid(goi.button, pady=10, padx=10, columnspan=3)

  #tkpack (tkbutton (f.frame))
  #tkpack (tkbutton (f.frame))
  #tkgrid (labelRcmdr(f.frame, text=gettextRcmdr("Gene-of-interest files")), f.frame, padx=6, pady=6)
  #tkgrid (f.frame, padx=6, pady=6)

  dialogSuffix(rows=3, columns=2,
               use.tabs=TRUE,
               grid.buttons=TRUE,
               tabs=c("inputTab"), tab.names=c("Input")
               )
  tkgrid(buttonsFrame, columnspan=2, sticky="w")
}
