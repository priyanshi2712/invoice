import 'package:flutter/material.dart';
import 'package:invoice_generator/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    data pri = ModalRoute.of(context)!.settings.arguments as data;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("INVOICE GENERATOR"),
        centerTitle: true,
        actions: [
          TextButton(
            style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
            onPressed: (){
              pdfGon().genrator(pri);
            },
            child: Text("Save",style: TextStyle(color: Colors.white,),),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white,
            boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ]
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(5),
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Company Details",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Company Name :",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "${pri.Company_Name}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Company Address :",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "${pri.Company_Address}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 30,
                width: double.infinity,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Email : ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "${pri.Email}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Number : ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "${pri.Number}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(5),
                color: Colors.blue,
                child: Center(
                    child: Text(
                      "Invoice",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "invoice : ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "${pri.invoice}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "invoice Date : ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "${pri.invoice_Date}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Due Date :",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "${pri.Due_Date}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),

              Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Item Details",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 30,
                width: double.infinity,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Name : ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "${pri.Product_Name}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Price :",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "${pri.Product_Price}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Products :",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "${pri.i}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Gst :",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      " ${pri.dropdownValue}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total :",
                      style: TextStyle(fontSize: 20),
                    ),
                    // Text(
                    //   " ${pri.Product_Price}*${pri.i}",
                    //   style: TextStyle(fontSize: 20),
                    // ),
                    Text(
                      "${int.parse(pri.Product_Price)*pri.i*int.parse(pri.dropdownValue)/100+int.parse(pri.Product_Price)}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}


// onTap: (){
// int z=add(int.parse(Value1.text),int.parse(Value2.text),int.parse(Value3.text),);
// setState((){
// answer=z;
// });
// print("${answer}");
