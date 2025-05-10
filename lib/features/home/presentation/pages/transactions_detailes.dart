import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/features/home/presentation/widgets/transactions_detailes_body.dart';

class TransactionsDetailes extends StatelessWidget {
  const TransactionsDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ProjectColors.secondaryColor, 
          automaticallyImplyLeading: false,
          actions: [
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.share,color: Colors.black,))
          
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
      
        ), ),
        backgroundColor: ProjectColors.secondaryColor, 
        body: TransactionsDetailesBody(),
      ),
    );
  }
}