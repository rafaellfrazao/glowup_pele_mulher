import 'package:flutter/material.dart';
import 'package:lowpage/tela_inicial/widgets/inicio_page.dart';
import '../meu_conteudo/meu_conteudo_page.dart';
import '../bonus/bonus_page.dart';
import '../minha_conta/minha_conta_page.dart';
import '../services/responsive.dart';

class AppLayout extends StatefulWidget {
  final String userName;
  const AppLayout({super.key, required this.userName});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int _currentIndex = 0;

  List<Widget> get _pages => [
    InicioPage(userName: widget.userName),
    const MeuConteudoPage(),
    const BonusPage(),
    MinhaContaPage(userName: widget.userName),
  ];

  @override
  Widget build(BuildContext context) {
    // Usa a classe Responsive para verificar se é celular/tablet
    bool isMobileOrTablet = Responsive.isMobile(context) || Responsive.isTablet(context);

    return Scaffold(
      backgroundColor: const Color(0xFF0F1112),
      appBar: isMobileOrTablet
          ? AppBar(
        backgroundColor: const Color(0xFF16181A),
        title: const Text(
          "The Brazilian\nBeauty Code",
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      )
          : null,
      drawer: isMobileOrTablet
          ? Drawer(
        backgroundColor: const Color(0xFF16181A),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 30, top: 20),
                child: Text(
                  "The Brazilian\nBeauty Code",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              _buildMenuItem(0, Icons.home, 'Home', isMobile: true),
              _buildMenuItem(1, Icons.grid_view, 'My Content', isMobile: true),
              _buildMenuItem(2, Icons.card_giftcard, 'Bonuses', isMobile: true),
              _buildMenuItem(3, Icons.person_outline, 'My Account', isMobile: true),
              const Spacer(),
              _buildMenuItem(4, Icons.logout, 'Log Out', isLogout: true, isMobile: true),
            ],
          ),
        ),
      )
          : null,
      body: Row(
        children: [
          if (!isMobileOrTablet)
            Container(
              width: 240,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "The Brazilian\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: "Beauty Code",
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _buildMenuItem(0, Icons.home, 'Home'),
                  _buildMenuItem(1, Icons.grid_view, 'My Content'),
                  _buildMenuItem(2, Icons.card_giftcard, 'Bonuses'),
                  _buildMenuItem(3, Icons.person_outline, 'My Account'),
                  const Spacer(),
                  _buildMenuItem(4, Icons.logout, 'Log Out', isLogout: true),
                ],
              ),
            ),

          Expanded(
            child: Container(
              margin: EdgeInsets.all(isMobileOrTablet ? 8 : 20),
              decoration: BoxDecoration(
                color: const Color(0xFF16181A),
                borderRadius: BorderRadius.circular(isMobileOrTablet ? 8 : 16),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(isMobileOrTablet ? 8 : 16),
                child: _currentIndex < _pages.length
                    ? _pages[_currentIndex]
                    : const Center(child: Text('Exiting...', style: TextStyle(color: Colors.white))),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(int index, IconData icon, String title, {bool isLogout = false, bool isMobile = false}) {
    bool isSelected = _currentIndex == index;

    return InkWell(
      onTap: () {
        if (isLogout) return;
        setState(() {
          _currentIndex = index;
        });
        if (isMobile) {
          Navigator.pop(context);
        }
      },
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        margin: const EdgeInsets.only(bottom: 4),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF1B382B) : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isLogout ? Colors.redAccent : (isSelected ? Colors.green : Colors.grey),
              size: 20,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(
                color: isLogout ? Colors.redAccent : (isSelected ? Colors.white : Colors.grey),
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
