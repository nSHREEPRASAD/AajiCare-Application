import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:flutter/material.dart';

class ownerViewResume extends StatefulWidget {
  var Name;
  var Pdfurl;

  ownerViewResume(
    this.Name,
    this.Pdfurl
  );

  @override
  State<ownerViewResume> createState() => _ownerViewResumeState(Name,Pdfurl);
}

class _ownerViewResumeState extends State<ownerViewResume> {
  var Name;
  var Pdfurl;

  _ownerViewResumeState(
    this.Name,
    this.Pdfurl
  );

  PDFDocument? document;
  void initializePdf()async{
    document = await PDFDocument.fromURL(Pdfurl);
    setState(() {
      
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializePdf();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${Name}'s Resume"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: 
      document!=null?
      PDFViewer(document: document!):
      Center(child: CircularProgressIndicator(),)
    );
  }
}