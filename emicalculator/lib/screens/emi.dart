import 'package:emicalculator/widgets/slider.dart';
import 'package:emicalculator/widgets/textbox.dart';
import 'package:flutter/material.dart';

class emi extends StatefulWidget {
  const emi({ Key? key }) : super(key: key);

  @override
  _emiState createState() => _emiState();
}
  class _emiState extends State<emi>{
    double emi=0;
     int _value= 1;
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
  double monthlyPr=loanAmount/tenure;
  double monthlyROI=(loanAmount*(roi/100))/tenure;
   emi=monthlyPr+monthlyROI;
  setState(() {
    
  });
}

  @override
  Widget build(BuildContext context) {
     TextBox tb = TextBox(label:'Tenure', iconData:Icons.money_rounded, tc:t3 );
    tb.setFunction(takesSliderValue);
    return Scaffold(
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
            Text('EMI $emi',style: TextStyle(fontSize: 30),) // Pass Fn as an Argument to the Constructor
           
            ],  ),
       ),
   
      appBar: AppBar(title: Text('EMi Calc'),
      backgroundColor: Colors.deepOrangeAccent,),
     
     
    );
  }
}