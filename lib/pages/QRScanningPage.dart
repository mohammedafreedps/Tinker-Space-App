import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tinkerspace/consts/Colors.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:tinkerspace/widgets/Alertbox.dart';
import 'package:tinkerspace/widgets/cusText.dart';

class QRScannerPage extends StatefulWidget {
  const QRScannerPage({super.key});

  @override
  State<QRScannerPage> createState() => _QRScannerPageState();
}

class _QRScannerPageState extends State<QRScannerPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        if (result == null) {
          result = scanData;
          showAlertDialog(context, 'Launch or Save', result!.code.toString(),'Save','Launch');
        }
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: PrimaryColor,
          child: Stack(
            children: [
              QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
                overlay: QrScannerOverlayShape(
                    borderWidth: 10,
                    borderRadius: 30,
                    borderColor: SecondaryColor,
                    cutOutSize: MediaQuery.of(context).size.width * 0.8),
              ),
              Positioned(
                bottom: 50,
                child: result !=null ? Center(child: cusText(result!.code.toString(),color: SecondaryColor,)):Center(child: cusText('NO Date',color: SecondaryColor,))
                )
            ],
          )),
    );
  }
}
