%compute the kfoldsvm test accuracy

falseNegatives = 0;
falsePositives = 0;
trueNegatives = 0;
truePositives = 0;
positives = 0;
negatives = 0;
for i = 1:length(actualDiagnosis)
    if (actualDiagnosis(i) == 1) & (kfoldtestLabels(i) == 1)
        truePositives = truePositives + 1;
        positives = positives + 1;
    elseif (actualDiagnosis(i) == 1) & (kfoldtestLabels(i) == 0)
        falseNegatives = falseNegatives + 1;
        negatives = negatives + 1;
    elseif (actualDiagnosis(i) == 0) & (kfoldtestLabels(i) == 0)
        trueNegatives = trueNegatives + 1;
        negatives = negatives + 1;
    elseif (actualDiagnosis(i) == 0) & (kfoldtestLabels(i) == 1)
        falsePositives = falsePositives + 1;
        positives = positives + 1;
    end
end
accuracy = (truePositives+trueNegatives)/(truePositives+falsePositives+trueNegatives+falseNegatives);
sensitivity = truePositives/(truePositives+falseNegatives);
specificity = trueNegatives/(trueNegatives+falsePositives);
precision = truePositives/(truePositives+falsePositives);

xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\kfoldAccuracy.xlsx', accuracy, 'Sheet1', 'A2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\kfoldAccuracy.xlsx', sensitivity, 'Sheet1', 'B2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\kfoldAccuracy.xlsx', specificity, 'Sheet1', 'C2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\kfoldAccuracy.xlsx', precision, 'Sheet1', 'D2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\kfoldAccuracy.xlsx', positives, 'Sheet1', 'E2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\kfoldAccuracy.xlsx', negatives, 'Sheet1', 'F2')

%compute the holdoutSvm test accuracy

falseNegatives = 0;
falsePositives = 0;
trueNegatives = 0;
truePositives = 0;
positives = 0;
negatives = 0;
for i = 1:length(actualDiagnosis)
    if (actualDiagnosis(i) == 1) & (holdouttestLabels(i) == 1)
        truePositives = truePositives + 1;
        positives = positives + 1;
    elseif (actualDiagnosis(i) == 1) & (holdouttestLabels(i) == 0)
        falseNegatives = falseNegatives + 1;
        negatives = negatives + 1;
    elseif (actualDiagnosis(i) == 0) & (holdouttestLabels(i) == 0)
        trueNegatives = trueNegatives + 1;
        negatives = negatives + 1;
    elseif (actualDiagnosis(i) == 0) & (holdouttestLabels(i) == 1)
        falsePositives = falsePositives + 1;
        positives = positives + 1;
    end
end
accuracy = (truePositives+trueNegatives)/(truePositives+falsePositives+trueNegatives+falseNegatives);
sensitivity = truePositives/(truePositives+falseNegatives);
specificity = trueNegatives/(trueNegatives+falsePositives);
precision = truePositives/(truePositives+falsePositives);

xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\holdOutAccuracy.xlsx', accuracy, 'Sheet1', 'A2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\holdOutAccuracy.xlsx', sensitivity, 'Sheet1', 'B2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\holdOutAccuracy.xlsx', specificity, 'Sheet1', 'C2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\holdOutAccuracy.xlsx', precision, 'Sheet1', 'D2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\holdOutAccuracy.xlsx', positives, 'Sheet1', 'E2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\holdOutAccuracy.xlsx', negatives, 'Sheet1', 'F2')

%compute the leaveOutsvm test accuracy

falseNegatives = 0;
falsePositives = 0;
trueNegatives = 0;
truePositives = 0;
positives = 0;
negatives = 0;
for i = 1:length(actualDiagnosis)
    if (actualDiagnosis(i) == 1) & (leaveouttestLabels(i) == 1)
        truePositives = truePositives + 1;
        positives = positives + 1;
    elseif (actualDiagnosis(i) == 1) & (leaveouttestLabels(i) == 0)
        falseNegatives = falseNegatives + 1;
        negatives = negatives + 1;
    elseif (actualDiagnosis(i) == 0) & (leaveouttestLabels(i) == 0)
        trueNegatives = trueNegatives + 1;
        negatives = negatives + 1;
    elseif (actualDiagnosis(i) == 0) & (leaveouttestLabels(i) == 1)
        falsePositives = falsePositives + 1;
        positives = positives + 1;
    end
end
accuracy = (truePositives+trueNegatives)/(truePositives+falsePositives+trueNegatives+falseNegatives);
sensitivity = truePositives/(truePositives+falseNegatives);
specificity = trueNegatives/(trueNegatives+falsePositives);
precision = truePositives/(truePositives+falsePositives);

xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\leaveOutAccuracy.xlsx', accuracy, 'Sheet1', 'A2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\leaveOutAccuracy.xlsx', sensitivity, 'Sheet1', 'B2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\leaveOutAccuracy.xlsx', specificity, 'Sheet1', 'C2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\leaveOutAccuracy.xlsx', precision, 'Sheet1', 'D2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\leaveOutAccuracy.xlsx', positives, 'Sheet1', 'E2')
xlswrite('C:\Git\SVM\ENPH459_Concussion_SVM\New_Code\leaveOutAccuracy.xlsx', negatives, 'Sheet1', 'F2')