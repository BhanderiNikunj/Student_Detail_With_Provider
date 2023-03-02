import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_detail_with_provider/Screen/HomeScreen/Model/ModelClass.dart';
import 'package:student_detail_with_provider/Screen/HomeScreen/Provider/StudentDetailProvider.dart';

class Student_Detail extends StatefulWidget {
  const Student_Detail({Key? key}) : super(key: key);

  @override
  State<Student_Detail> createState() => _Student_DetailState();
}

class _Student_DetailState extends State<Student_Detail> {
  TextEditingController txtGRId = TextEditingController();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtStd = TextEditingController();
  TextEditingController ntxtGRId = TextEditingController();
  TextEditingController ntxtName = TextEditingController();
  TextEditingController ntxtStd = TextEditingController();

  DetailProvider? detailProvider;

  @override
  Widget build(BuildContext context) {
    detailProvider = Provider.of<DetailProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Student Detail"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: txtGRId,
                decoration: InputDecoration(
                  label: Text(
                    "Enter GRId",
                    style: TextStyle(color: Colors.black54),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: txtName,
                decoration: InputDecoration(
                  label: Text(
                    "Enter Name",
                    style: TextStyle(color: Colors.black54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: txtStd,
                decoration: InputDecoration(
                  label: Text(
                    "Enter Std",
                    style: TextStyle(color: Colors.black54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.black12),
                        child: Text("GRID"),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.black12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Name"),
                            Text("Std"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.black12),
                        child: Text("Delete"),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.black12),
                        child: Text("Edit"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Consumer<DetailProvider>(
                  builder: (context, value, child) => ListView.builder(
                    itemCount: detailProvider!.StudentDetail.length,
                    itemBuilder: (context, index) => Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 50,
                                alignment: Alignment.center,
                                child: Text(
                                    "${detailProvider!.StudentDetail[index].GRId}"),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 40,
                                width: 100,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        "${detailProvider!.StudentDetail[index].Name}"),
                                    Text(
                                        "${detailProvider!.StudentDetail[index].Std}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 50,
                                alignment: Alignment.center,
                                child: IconButton(
                                  onPressed: () {
                                    detailProvider!.DeletData(index);
                                  },
                                  icon: Icon(Icons.delete),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 40,
                                width: 50,
                                alignment: Alignment.center,
                                child: IconButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            TextField(
                                              controller: ntxtGRId,
                                              decoration: InputDecoration(
                                                label: Text(
                                                  "Enter GRId",
                                                  style: TextStyle(color: Colors.black54),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            TextField(
                                              controller: ntxtName,
                                              decoration: InputDecoration(
                                                label: Text(
                                                  "Enter Name",
                                                  style: TextStyle(color: Colors.black54),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            TextField(
                                              controller: ntxtStd,
                                              decoration: InputDecoration(
                                                label: Text(
                                                  "Enter Std",
                                                  style: TextStyle(color: Colors.black54),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Model m1 = Model(Name: ntxtName.text,GRId: ntxtGRId.text,Std: ntxtStd.text);
                                                detailProvider!.UpdateData(index, m1);
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                height: 40,
                                                width: 80,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Colors.black12,
                                                  borderRadius: BorderRadius.circular(15),
                                                  border: Border.all(color: Colors.black),
                                                ),
                                                child: Text("Update",style: TextStyle(fontSize: 15),),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  icon: Icon(Icons.edit),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: () {
              Model m1 = Model(
                  GRId: txtGRId.text, Std: txtStd.text, Name: txtName.text);
              detailProvider!.AddData(m1);
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(color: Colors.black),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }
}
