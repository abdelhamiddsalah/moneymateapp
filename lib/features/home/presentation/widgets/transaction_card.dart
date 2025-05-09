import 'package:flutter/material.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';

class TransactionCard extends StatelessWidget {
  final String merchantName;
  final String date;
  final String time;
  final double amount;
  final IconData icon;
  final bool isPositive;

  const TransactionCard({
    super.key,
    required this.merchantName,
    required this.date,
    required this.time,
    required this.amount,
    required this.icon,
    this.isPositive = false,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for responsive layout
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Container(
      padding: EdgeInsets.all(screenWidth * 0.035),
      decoration: BoxDecoration(
        color: ProjectColors.cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Icon containe
          SizedBox(width: screenWidth * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  merchantName,
                  style: Textstyles.textbutton.copyWith(
                    fontSize: screenWidth * 0.042,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff000000),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: screenWidth * 0.01),
                Row(
                  children: [
                    Text(
                      '$date $time',
                      style: Textstyles.textbutton.copyWith(
                        fontSize: screenWidth * 0.032,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff666666),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.05),
                      Icon(
            icon,
            color: Colors.blue,
            size: screenWidth * 0.045,
          ),
          
                  ],
                ),
              ],
            ),
          ),
          
          // Amount
          Text(
            '-169 EGP',
            style: Textstyles.textbutton.copyWith(
              fontSize: screenWidth * 0.042,
              fontWeight: FontWeight.w600,
              color:ProjectColors.redColor,
            ),
          ),
        ],
      ),
    );
  }
}