import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:flutter/material.dart';

class userPdfViewer extends StatefulWidget {
  var Url;
  userPdfViewer(
    this.Url,
  );

  @override
  State<userPdfViewer> createState() => _userPdfViewerState(Url);
}

class _userPdfViewerState extends State<userPdfViewer> {
  PDFDocument? document;

  void initializePdf()async{
    document = await PDFDocument.fromURL(Url);
    setState(() {
      
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializePdf();
  }
  var Url;
  _userPdfViewerState(
    this.Url,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      document!=null?
      PDFViewer(document: document!):
      Center(child: CircularProgressIndicator(),),
    ); 
  }
}