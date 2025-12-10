import "package:flutter/material.dart";

class ccmp extends StatefulWidget{
  const ccmp({super.key});

  @override
  State<ccmp> createState() =>_ccmps();
}


class _ccmps extends State<ccmp>{
//ccmp is short form of currency_converter_meterial_pages

  double result=0;
  final TextEditingController textEditingController = TextEditingController();
  
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar:AppBar(
        elevation: 15,
        backgroundColor: const Color.fromARGB(255, 139, 165, 177),
        title: Text("Currency Counter",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(25),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(color: Colors.amber),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in USD :",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(146, 255, 255, 255),
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: const Color.fromARGB(146, 255, 255, 255),
                  filled: true,
                  fillColor: Colors.black38,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: const Color.fromARGB(123, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(60),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: const Color.fromARGB(123, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true,
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                result = double.parse(textEditingController.text)*89.89;
              });
            },
            style:ElevatedButton.styleFrom(
              elevation:(15),
              backgroundColor: (Colors.white12),
              foregroundColor: (Colors.black),
              fixedSize: (Size(300,60))
              ) ,
            child:Text("Convert in rupees",
              style: TextStyle(
                // color: Colors.black,
                fontSize:20,
                )
              )
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              color: const Color.fromARGB(255, 0, 0, 0),

              child: Text(
                result.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 181, 63, 63),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
