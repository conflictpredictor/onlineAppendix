data = read.table(file="C:/Users/155 X-MX/Documents/dev/data/secondStudyData.csv", header=T, sep=",")

#computing precision of the EditSameMC predictor
haveEditSameMC <- subset(data, NonConflicting_EditSameMC > 0 | Conflicting_EditSameMC  > 0)
editSameMCWithConflicts <- subset(haveEditSameMC, has_merge_Conflict == 1 | has_build_conflict == 1 |
                                    has_integration_conflict == 1 | has_test_conflict == 1)

haveEditSameMCNonDSAndConfNonDS <- subset(confsNonDS, (NonConflicting_EditSameMC - NonConflicting_EditSameMC_DS) > 0 | 
                           (Conflicting_EditSameMC - Conflicting_EditSameMC_DS)  > 0)


#computing precision and recall of the EditSameFd predictor
haveEditSameFD <- subset(data, (NonConflicting_EditSameFD - NonConflicting_EditSameFD_DS > 0) &
                           (Conflicting_EditSameFD - Conflicting_EditSameFD_DS) > 0)
#computing precision and recall of the editdiffmc predictor

haveEditDiff <- subset(data,  (EditDiffMC > 0 | EditDifffMC_EditSameMC > 0))
editDiffWithConflicts <- subset(haveEditDiff,   has_merge_Conflict == 1 | has_build_conflict == 1 |
                                  has_integration_conflict == 1 | has_test_conflict == 1)

write.csv(conflictWithoutPredictor, file = "MyData.csv")



##############  analysis considering only editsamemc and editdiffmc as predictors ##############
predictors <- subset(data, NonConflicting_EditSameMC > 0 | Conflicting_EditSameMC > 0 | 
                       EditDiffMC > 0 | EditDifffMC_EditSameMC > 0)
predAndConf <- subset(predictors, has_merge_Conflict == 1 | has_build_conflict == 1 |
                        has_integration_conflict == 1 | has_test_conflict == 1)
predWithoutConf <- subset(predictors, has_merge_Conflict == 0 & has_build_conflict == 0 &
                            has_integration_conflict == 0 & has_test_conflict == 0)

conflicts <- subset(data, has_merge_Conflict == 1 | has_build_conflict == 1 |
                      has_integration_conflict == 1 | has_test_conflict == 1)
confWithoutPred <- subset(conflicts, NonConflicting_EditSameMC == 0 & Conflicting_EditSameMC == 0 &
                            EditDiffMC == 0 & EditDifffMC_EditSameMC == 0)
#compute precision, recall and fmeasure
precision <- nrow(predAndConf)/nrow(predictors)
recall <- nrow(predAndConf)/nrow(conflicts)
f <- 2 * ((precision * recall)/(precision + recall))

##############  analysis removing different spacing conflicts ##############
predictorsNotDS <- subset(data, (NonConflicting_EditSameMC - NonConflicting_EditSameMC_DS) > 0 | 
                            (Conflicting_EditSameMC - Conflicting_EditSameMC_DS) > 0 |
                            EditDiffMC > 0 | EditDifffMC_EditSameMC > 0)
predsAndConfNonDS <- subset(predictorsNotDS, has_merge_Conflict == 1 | has_build_conflict == 1 |
                              has_integration_conflict == 1 | has_test_conflict == 1)

predsWithoutConfNonDS <- subset(predictorsNotDS, has_merge_Conflict == 0 & has_build_conflict == 0 &
                                  has_integration_conflict == 0 & has_test_conflict == 0)

confsNonDS <- conflicts[!(conflicts$Conflicting_EditSameMC > 0 & conflicts$Conflicting_EditSameMC -
                            conflicts$Conflicting_EditSameMC_DS == 0),]
confsWithoutPredNonDS <- subset(confsNonDS,  NonConflicting_EditSameMC == 0 & Conflicting_EditSameMC == 0 &
                                  EditDiffMC == 0 & EditDifffMC_EditSameMC == 0)
#precision and recall without ds conflicts
newPrecision <- nrow(predsAndConfNonDS)/nrow(predictorsNotDS)
newRecall <- nrow(predsAndConfNonDS)/nrow(confsNonDS)
newf <- 2 * ((newPrecision * newRecall)/(newPrecision + newRecall))

###### false negative analysis ###### 

mergeConfWithoutPred <- subset(confsWithoutPredNonDS, has_merge_Conflict == 1)

buildConfWithoutPred <- subset(confsWithoutPredNonDS, has_merge_Conflict == 0 &
                                 has_build_conflict == 1 & has_integration_conflict == 0 & has_test_conflict == 0)
integrationConfWithoutPred <- subset(confsWithoutPredNonDS, has_merge_Conflict == 0 &
                                       has_build_conflict == 0 & has_integration_conflict == 1 & has_test_conflict == 0)
testConfWithoutPred <- subset(confsWithoutPredNonDS, has_merge_Conflict == 0 &
                                has_build_conflict == 0 & has_integration_conflict == 0 & has_test_conflict == 1)

###### false positive analysis ###### 
editSameNonDS <- subset(predsWithoutConfNonDS, NonConflicting_EditSameMC > 0)
editDiffNonDS <- subset(predsWithoutConfNonDS, EditDiffMC > 0 | EditDifffMC_EditSameMC > 0)
editDiffAndEditSameNonDS <- subset(predsWithoutConfNonDS, (EditDiffMC > 0 | EditDifffMC_EditSameMC > 0) 
                        & NonConflicting_EditSameMC > 0)
editSameWithoutEditDiff <- subset(editSameNonDS,  EditDiffMC == 0 & EditDifffMC_EditSameMC == 0)
editDiffWithoutEditSame <- subset(editDiffNonDS, NonConflicting_EditSameMC == 0)
write.csv(editDiffAndEditSameNonDS, file = "editDiffAndEditSameNonDS.csv")
write.csv(editSameWithoutEditDiff, file = "editSameWithoutEditDiff.csv")
write.csv(editDiffWithoutEditSame, file = "editDiffWithoutEditSame.csv")