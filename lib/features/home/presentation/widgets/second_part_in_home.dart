import 'package:flutter/material.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';
import 'package:moneymateapp/features/home/presentation/widgets/transaction_card.dart';

class SecondPartInHome extends StatelessWidget {
  const SecondPartInHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for responsive layout
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    // Calculate appropriate heights based on screen size
    final listViewHeight = screenHeight * 0.35; // Adjust this percentage as needed
    
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.04, // Responsive horizontal padding
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row with "Recent transactions" and "See all"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'Recent transactions',
                  style: Textstyles.textbutton.copyWith(
                    fontSize: screenWidth * 0.045, // Responsive font size
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff222222),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Add navigation to transactions history page
                },
                child: Text(
                  'See all',
                  style: Textstyles.textbutton.copyWith(
                    fontSize: screenWidth * 0.035, // Responsive font size
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff666666),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02), // Responsive spacing
          
          // Transaction list with fixed height
          SizedBox(
            height: listViewHeight,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(bottom: screenHeight * 0.012),
                child: TransactionCard(
                  merchantName: 'Fathalla Market',
                  date: 'Today 8:00',
                  time: 'AM',
                  amount: 2,
                  icon: Icons.wallet_giftcard,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}