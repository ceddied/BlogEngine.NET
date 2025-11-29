function respiratoryCalcs(form){clearOut();height=form.txtHeight.value;if(validNum(height)){gender=form.ddGender.value;units=form.ddUnits.value;min=48;max=84;factor=2.54;if(units=="cms"){min=(min*factor).toFixed(0);max=(max*factor).toFixed(0);}
if(height>=min&&height<=max){predBodyWeight=calcIBW(gender,units,height);outputString="<p>For a "+gender+" "+height+" "+units+" tall</p>"+"<p>Predicted Ideal Body Weight = "+predBodyWeight+" kilos</p>";for(i=4;i<9;i++){mlsperKilo=calcVt(i,predBodyWeight);outputString+="<p>"+i+" mls/kilo = "+mlsperKilo+" mls</p>";}
outputString+="<input id = 'print' type = 'button' value = 'Print' onclick='window.print()'>";}
else{outputString="<p class='error'>Height must be between "+min+" and "+max+" or select different unit.</p>";}}
else{outputString="<p class='error'>Height is a required field and must be numeric!</p>";form.txtHeight.value="";}
writeOutPut(outputString);document.getElementById("txtHeight").select();}
function calcIBW(g,u,h){conversionFactor=0;switch(g){case"male":conversionFactor=50;break;case"female":conversionFactor=45.5;break;default:break;}
if(u=="cms"){h=h/2.54;}
return(conversionFactor+2.3*(h-60)).toFixed(1);}
function calcVt(i,PBW){return(i*PBW).toFixed(0)}
function calc_aARatio(form){clearOut();FIO2=form.txtFIO2.value;PaCO2=form.txtPaCO2.value;PaO2=form.txtPaO2.value;if(validNum(FIO2)&&validNum(PaCO2)&&validNum(PaO2)){FIO2=convertFIO2(FIO2);if(validFIO2(FIO2)){PAO2=(((760-47)*FIO2)-(PaCO2/0.8)).toFixed(2);aaRatio=(PaO2/PAO2).toFixed(2);outputString="<p>PAO<sub>2</sub> = "+PAO2+"</p>";outputString+="<p>"+PaO2+" / "+PAO2+" = "+aaRatio+"</p>";}}
writeOutPut(outputString);}
function calcDesiredPaCO2(form){clearOut();currentCO2=form.txtCurrentCO2.value;desiredCO2=form.txtDesiredCO2.value;currentVe=form.txtMV.value;if(validNum(currentCO2)&&validNum(desiredCO2)&&validNum(currentVe)){newVe=(currentVe*(currentCO2/desiredCO2)).toFixed(1);outputString="<p>To achieve a PaCO2 = "+desiredCO2+"</p>"+"<p>Minute Ventilation must be changed from "+currentVe+" to "+newVe+" </p>"}
writeOutPut(outputString);}
function calcPFRatio(form){clearOut();PaO2=form.txtPaO2.value;FIO2=form.txtFIO2.value;if(validNum(PaO2)&&validNum(FIO2)){FIO2=convertFIO2(FIO2);if(validFIO2(FIO2)){PFRatio=PaO2/FIO2;outputString="PaO2 / FIO2 = "+PFRatio.toFixed(0);}}
writeOutPut(outputString);}
function validNum(checkVal){if(checkVal!=""&&checkVal!=null&&!isNaN(checkVal)&&checkVal>0){return true;}
else{outputString=errNumString();return false;}}
function convertFIO2(FiO2){if(FiO2>1){FiO2=FiO2/100;}
return FiO2;}
function validFIO2(valFIO2){min=.21;max=1.0;if(valFIO2>=min&&valFIO2<=max){return true;}
else{outputString=errFIO2String();return false}}
function writeOutPut(s){document.getElementById("outPut").innerHTML=s;}
function clearOut(){document.getElementById("outPut").innerHTML="";}
function errNumString(){errNum="<p class='error'>Required field is missing and/or must be numeric and greater than 0!</p>";return errNum;}
function errFIO2String(){errFIO2="<p class='error'>FIO2 must be between "+min+" and "+max+".</p>";return errFIO2;}