# Can I Call Viktor?

This is a shiny app that can be called directly from R using the following command: 

```R
#only if shiny is not installed:
#install.packages("shiny")

library(shiny)
runGitHub("Can-I-Call-Viktor", "vtisza")
```

The purpose of the app is to provide guidance for fellow colleagues to know when it is appropriate to call Viktor. The probability of having a positive answer is defined by a probabilistic parameter. It is set according to the current mode and availability of Viktor.

A counter is added as a check if the number of calling attempt is reasonable or just the result of clicking the button.
