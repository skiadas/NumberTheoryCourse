library(lattice)
subsetRegexp <- function(data, regexp) {
  rows <- grep(regexp, names(data), perl=TRUE)
  data[,rows]
}
nas.to.zeros <- function(data) {
  data.frame(lapply(data, function(x) {x[is.na(x)] <- 0; x}))
}
avgdrop <- function(x, drop=2, FUN=mean) {
  apply(x, 1, function(l) {
    if (drop > 0)
      l <- sort(l)[-(1:drop)]
    FUN(l)
  })
}
weighted.ave <- function(x, weights) {
  apply(x, 1, function(l) sum(l*weights))
}
plotit <- function(finalScores) {
  bounds <- c(-2,-1.6,-1.3,-1,-0.6,-0.3,0,0.3,0.6,0.9)
  names(bounds) <- c("D","D+","C-","C","C+","B-","B","B+","A-","A")
  zscores <- bounds * sd(finalScores) + mean(finalScores)
  midpoints <- (zscores[-1] + zscores[-length(zscores)])/2
  midpoints <- c(zscores[1] - (midpoints[1]-zscores[1]), midpoints, zscores[length(zscores)]+ (zscores[length(zscores)]-midpoints[length(midpoints)]))
  dotplot(finalScores,
    prepanel = function(x,y) {
      list(ylim=levels(reorder(y,x)))
    },
    panel = function(x,y,...) {
    ord <- sort(y)
    panel.dotplot(x,reorder(y,x), ...)
    panel.abline(v=zscores, ...)
    panel.text(midpoints, 0.5, c("F",names(bounds)))
  })
}

grades1 <- read.csv("grades.csv")
hw1 <- subsetRegexp(grades1, "^HW.*$")
hw1 <- nas.to.zeros(hw1)
hwScores1 <- avgdrop(hw1,1)
tests1 <- subsetRegexp(grades1, "^M.*\\s*")
testsAvg1 <- apply(tests1,1, function(x) {
    sum(sort(x)*c(15,25,30))/30
    # sum(sort(x)*c(15,25))/30
})
att1 <- subsetRegexp(grades1, "^Att.*\\s*")
allScores1 <- cbind(hw=hwScores1, m=testsAvg1, a=att1)
finalScores1 <- weighted.ave(allScores1, weights=c(hw=25/20.,m=1, a=1))
names(finalScores1) <- apply(grades1[,1:2], 1, paste, collapse=",")
all1 <- cbind(allScores1,final=finalScores1)
rownames(all1) <- apply(grades1[,1:2], 1, paste, collapse=",")
all1
plotit(finalScores1)


both.sections <- as.data.frame(rbind(all1,all2))
both.sections[,"section"] <- rep(c("C","D"), sapply(list(finalScores1,finalScores2), length))
bwplot(final~section, data=both.sections)
all.finals <- both.sections[,"final"]
names(all.finals) <- rownames(both.sections)
both.sections[,1:4] <- apply(both.sections[,1:4], 2, round, 2)
plotit(all.finals)
both.sections
