import 'package:flutter/material.dart';
import 'package:moneymateapp/constants/images.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';
import 'package:moneymateapp/features/auth/login/presentation/pages/login_view.dart';

class BottomNaviationBar extends StatefulWidget {
  const BottomNaviationBar({super.key});

  @override
  State<BottomNaviationBar> createState() => _MainAppState();
}

class _MainAppState extends State<BottomNaviationBar> {
  int _selectedIndex = 0;
  
  // PageController لتمكين التنقل بالسحب بين الصفحات مع تأثيرات انتقال سلسة
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // قائمة الصفحات التي يتم استيرادها من الخارج
  final List<Widget> _pages = const [
    LoginView(),
    LoginView(),
    LoginView(),
    LoginView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // التنقل إلى الصفحة المطلوبة مع تأثير انتقال سلس
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // تحديد ألوان الخط والأيقونات
    final Color activeColor = ProjectColors.primaryColor;
    final Color inactiveColor = ProjectColors.greyColor;
    
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _pages,
        physics: const BouncingScrollPhysics(), // للحصول على تأثير ارتداد عند السحب
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: activeColor,
          unselectedItemColor: inactiveColor,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: activeColor, // لون النص عند التحديد
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: inactiveColor, // لون النص عند عدم التحديد
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 0
                  ? Assets.imagesOvervirebottomitemblue
                  : Assets.imagesOvervirebottomitemgrey,
                width: 24,
                height: 24,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 1
                  ? Assets.imagesHistorybottomitemblue
                  : Assets.imagesHistorybottomitemgrey,
                width: 24,
                height: 24,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 2
                  ? Assets.imagesReportsbottomitemblue
                  : Assets.imagesReportsbottomitemgrey,
                width: 24,
                height: 24,
              ),
              label: 'Reports',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 3
                  ? Assets.imagesUserbottomitemblue
                  : Assets.imagesUserbottomitemgrey,
                width: 24,
                height: 24,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}