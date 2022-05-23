import 'package:flutter/material.dart';
import 'package:invoice_generator/model.dart';

class InvoiceGenerator extends StatefulWidget {
  const InvoiceGenerator({Key? key}) : super(key: key);

  @override
  _InvoiceGeneratorState createState() => _InvoiceGeneratorState();
}

class _InvoiceGeneratorState extends State<InvoiceGenerator> {
  int i = 0;
  String dropdownValue = '18';

  TextEditingController Company_Name = TextEditingController();
  TextEditingController Company_Address = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Number = TextEditingController();
  TextEditingController invoice = TextEditingController();
  TextEditingController invoice_Date = TextEditingController();
  TextEditingController Due_Date = TextEditingController();
  TextEditingController Product_Name = TextEditingController();
  TextEditingController Product_Price = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("INVOICE GENERATOR"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 2,
                        blurRadius: 5,
                      )
                    ]),
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
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        controller: Company_Name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Company Name"),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        controller: Company_Address,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Company Address"),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        controller: Email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Email"),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        controller: Number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Number"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 2,
                        blurRadius: 5,
                      )
                    ]),
                child: Column(
                  children: [
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
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        controller: invoice,
                        decoration: InputDecoration(
                          label: Text("Invoice #"),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 150,
                          margin: EdgeInsets.all(10),
                          child: TextField(
                            controller: invoice_Date,
                            decoration: InputDecoration(
                              label: Text("Invoice Date"),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 150,
                          child: TextField(
                            controller: Due_Date,
                            decoration: InputDecoration(
                              label: Text("Due Date"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 2,
                        blurRadius: 5,
                      )
                    ]),
                child: Column(
                  children: [
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
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        controller: Product_Name,
                        decoration: InputDecoration(
                          label: Text("Product Name"),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        controller: Product_Price,
                        decoration: InputDecoration(
                          label: Text("Product price"),
                        ),
                      ),
                    ),
                    Container(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(10),
                            height: 40,
                            color: Colors.blue,
                            width: double.infinity,
                            child: Text(
                              "products",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "${i}",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        i--;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      height: 60,
                                      width: 60,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        i++;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      height: 60,
                                      width: 60,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(5),
                          height: 50,
                          width: double.infinity,
                          // color: Colors.grey.shade200,
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            isExpanded: true,
                            icon: Icon(Icons.keyboard_arrow_down),
                            elevation: 16,
                            style: TextStyle(color: Colors.black),
                            underline: Container(
                              height: 2,
                              color: Colors.black,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: ['3', '5', '12', '18', '28']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'HomePage',
                                    arguments: data(
                                      Company_Name.text,
                                      Company_Address.text,
                                      Email.text,
                                      Number.text,
                                      invoice.text,
                                      invoice_Date.text,
                                      Due_Date.text,
                                      Product_Name.text,
                                      Product_Price.text,
                                      i,
                                      dropdownValue,
                                    ));
                              },
                              child: Text("SUBMIT"),
                            ),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
