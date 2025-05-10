import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymateapp/constants/images.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/core/widgets/custom_button.dart';

class EditAccountViewBody extends StatefulWidget {
  const EditAccountViewBody({super.key});

  @override
  _EditAccountViewBodyState createState() => _EditAccountViewBodyState();
}

class _EditAccountViewBodyState extends State<EditAccountViewBody> {
  // Sample data
  final TextEditingController _firstNameController = TextEditingController(text: "Yousseff");
  final TextEditingController _lastNameController = TextEditingController(text: "Mohamed");
  final TextEditingController _phoneController = TextEditingController(text: "01060142403");
  final TextEditingController _passwordController = TextEditingController(text: "••••••••");

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isLargeScreen = screenWidth > 600;
    
    // Calculate responsive values
    final double avatarRadius = isLargeScreen ? 40.0 : screenWidth * 0.08;
    final double topCurveHeight = screenHeight * 0.15;
    final double contentPadding = screenWidth * 0.06;
    final double textFieldSpacing = screenHeight * 0.02;
    final double buttonHeight = screenHeight * 0.06;
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ProjectColors.primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            GoRouter.of(context).pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // Top blue curve with avatar
          Container(
            height: topCurveHeight,
            decoration: BoxDecoration(
              color: ProjectColors.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Center(
              child: CircleAvatar(
                radius: avatarRadius,
                backgroundColor: Colors.white.withOpacity(0.9),
                backgroundImage: const AssetImage(Assets.imagesOneprofile),
              ),
            ),
          ),
          
          // Form content
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(contentPadding),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SizedBox(
                      width: constraints.maxWidth > 500 ? 500 : constraints.maxWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // First Name
                          _buildInputField(
                            label: "First name",
                            controller: _firstNameController,
                            spacing: textFieldSpacing,
                          ),
                  
                          // Last Name
                          _buildInputField(
                            label: "Last name",
                            controller: _lastNameController,
                            spacing: textFieldSpacing,
                          ),
                          
                          // Phone Number
                          _buildInputField(
                            label: "Phone number:",
                            controller: _phoneController,
                            spacing: textFieldSpacing,
                          ),
                          
                          // Password
                          _buildInputField(
                            label: "Password:",
                            controller: _passwordController,
                            isPassword: true,
                            spacing: textFieldSpacing,
                          ),
                          
                          SizedBox(height: textFieldSpacing * 2),
                          
                          // Update Button
                         SizedBox(
                          height:  buttonHeight,
                          child: CustomButton(text: 'Update')),
                        ],
                      ),
                    );
                  }
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputField({
    required String label, 
    required TextEditingController controller,
    bool isPassword = false,
    required double spacing,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
            ),
            suffixIcon: IconButton(
              icon: const Icon(Icons.edit, size: 18),
              onPressed: () {
                // Handle edit action
              },
            ),
          ),
        ),
        SizedBox(height: spacing),
      ],
    );
  }
}