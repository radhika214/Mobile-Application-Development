import 'package:emicalculator/widgets/chart.dart';
import 'package:emicalculator/widgets/slider.dart';
import 'package:emicalculator/widgets/textbox.dart';
import 'package:flutter/material.dart';

class emi extends StatefulWidget {
  const emi({ Key? key }) : super(key: key);

  @override
  _emiState createState() => _emiState();
}
  class _emiState extends State<emi>{
    int loanAmount=0;
    double emi=0;
     int _value= 1;
       double total_interest = 0;
     TextEditingController t1=TextEditingController ();
     TextEditingController t2= TextEditingController ();
     TextEditingController t3=TextEditingController ();
   

takesSliderValue(int value){
   _value=value;
  print("Rec Value From SLider $value");
  t3.text=_value.toString();
  setState(() {
    
  });
}
_compute(){
  int loanAmount=int.parse(t1.text);
  int roi=int.parse(t2.text);
  int tenure=int.parse(t3.text);
  total_interest =
        double.parse((loanAmount * roi * tenure / 100).toStringAsFixed(2));
   emi = double.parse(
        ((total_interest + loanAmount) / (12 * tenure)).toStringAsFixed(2));
  double monthlyPr=loanAmount/tenure;
  double monthlyROI=(loanAmount*(roi/100))/tenure;
   emi=monthlyPr+monthlyROI;
  setState(() {
    
  });
}
 _getTextContainer(label, value, devicesize) {
    return Container(
      height: 45,
      width: devicesize.width/2.2,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue), 
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label,style: TextStyle(fontSize: 16)), 
          Text("₹ $value")
          ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
     Size deviceSize=MediaQuery.of (context).size;
      Map<String, double> dataMap = {
      "Interest": total_interest,
      "Principal Amount": loanAmount.toDouble()
    };
     TextBox tb = TextBox(label:'Tenure', iconData:Icons.money_rounded, tc:t3 );
    tb.setFunction(takesSliderValue);
    return Scaffold(
        appBar: AppBar(
        title: Text("EMI Calculator"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
       body:  SingleChildScrollView(
         child: Column(children: [
          TextBox(label:'Loan Amount',iconData: Icons.money, tc: t1 )
          ,TextBox(label:'ROI', iconData:Icons.monetization_on, tc:t2 ),
          tb,
            MySlider(takesSliderValue,_value),
              ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: (){
              _compute();
            }, child: Text('Compute', style: TextStyle(fontSize: 30),)),
            Text('EMI $emi',style: TextStyle(fontSize: 30),), // Pass Fn as an Argument to the Constructor
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                  child: Row(
                children: [
                  Container(
                    child: Expanded(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              _getTextContainer("Loan EMI", emi,deviceSize),
                              SizedBox(height: 10,),
                              _getTextContainer(
                                  "Total Interest Playable", total_interest,deviceSize),
                              SizedBox(height: 10,),    
                              _getTextContainer(
                                  "Total Payment", loanAmount + total_interest,deviceSize)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: chart(dataMap),
                  ),
                ],
              ))),
            
          ],
        ),
      ),
    );
}
  }