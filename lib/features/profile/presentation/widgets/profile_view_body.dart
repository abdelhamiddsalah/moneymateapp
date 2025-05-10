import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymateapp/constants/images.dart';
import 'package:moneymateapp/core/routing/routes.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/styles/textstyles.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for responsive design
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 360;
    
    return Scaffold(
      backgroundColor: const Color(0xFFF1F0F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
              vertical: size.height * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Row(
                    children: [
                      // Profile avatar
                      CircleAvatar(
                        radius: isSmallScreen ? 20 : 25,
                        backgroundColor: Colors.brown.shade200,
                        backgroundImage: const AssetImage(Assets.imagesOneprofile),
                        onBackgroundImageError: (exception, stackTrace) {},
                      ),
                      SizedBox(width: size.width * 0.02),
                      
                      // Username text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Username',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: isSmallScreen ? 12 : 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: size.height * 0.002),
                          
                          // Full name
                          Text(
                            'Yousseff Mohamed',
                            style: Textstyles.textbutton.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: ProjectColors.thirdColor
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                
                SizedBox(height: size.height * 0.03),
                
                // New Features heading - aligned to the left
                const Text(
                  'New Futures!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                
                SizedBox(height: size.height * 0.015),
                
                // Auto Card Transaction Detection card - light green
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.04,
                    vertical: size.height * 0.018,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFD1F1D7),
                  ),
                  child: Row(
                    children: [
                      // Credit card icon
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(
                          Assets.imagesCridt,
                          width: 30,
                          height: 30,
                          errorBuilder: (context, error, stackTrace) => const Icon(
                            Icons.credit_card,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                      
                      SizedBox(width: size.width * 0.035),
                      
                      // Feature title
                      const Expanded(
                        child: Text(
                          'Auto Card Transaction Detection',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      
                      // Arrow icon
                      const Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 22,
                      ),
                    ],
                  ),
                ),
                
                SizedBox(height: size.height * 0.04),
                
                // Account options container - white background with rounded corners
                Container(
                  padding: EdgeInsets.all(size.width * 0.025),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      // Account option
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
                        child: GestureDetector(
                          onTap: () {
                            GoRouter.of(context).push(Routes.editaccount);
                          },
                          child: Row(
                            children: [
                              // Account icon - blue square
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.blue.shade700,
                                ),
                                child: const Icon(
                                  Icons.account_balance_wallet,
                                  color: Colors.white,
                                  size: 22,
                                ),
                              ),
                              SizedBox(width: size.width * 0.03),
                              
                              // Account text
                              const Text(
                                'Account',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      const Divider(color: Color.fromARGB(255, 198, 198, 198), height: 1),
                      
                      // Logout option
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
                        child: GestureDetector(
                          onTap: () {
                            // Handle logout
                          },
                          child: Row(
                            children: [
                              // Logout icon - light red square
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.red.shade50,
                                ),
                                child: const Icon(
                                  Icons.logout,
                                  color: Colors.red,
                                  size: 22,
                                ),
                              ),
                              SizedBox(width: size.width * 0.03),
                              
                              // Logout text
                              const Text(
                                'Logout',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}