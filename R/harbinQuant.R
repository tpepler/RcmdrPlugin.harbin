harbinQuant<-function(){
  require(harbin)
  #harbin.quant()
  initializeDialog(title=gettextRcmdr("Harbin RT-qPCR quantification"))
  OKCancelHelp(helpSubject='harbin.quant')
}
