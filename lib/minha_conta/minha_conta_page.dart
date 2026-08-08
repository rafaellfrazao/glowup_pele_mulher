import 'package:flutter/material.dart';
import '../../services/responsive.dart';
import '../../services/user_progress.dart';
import '../login/login_page.dart';


class MinhaContaPage extends StatelessWidget {
  final String userName;

  const MinhaContaPage({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    bool isMobileOrTablet = Responsive.isMobile(context) || Responsive.isTablet(context);

    return SingleChildScrollView(
      padding: EdgeInsets.all(isMobileOrTablet ? 16 : 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Minha Conta",
            style: TextStyle(
              color: Colors.white,
              fontSize: isMobileOrTablet ? 22 : 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "Gerencie suas informações pessoais e preferências de acesso.",
            style: TextStyle(color: Colors.grey[400], fontSize: 13),
          ),
          const SizedBox(height: 24),

          // Card de Perfil Dinâmico
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF16181A),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white.withOpacity(0.05)),
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 32,
                  backgroundColor: Color(0xFF1B382B),
                  child: Icon(
                    Icons.person,
                    color: Colors.greenAccent,
                    size: 32,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        "Membro Ativo",
                        style: TextStyle(color: Colors.grey[400], fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),
          const Text(
            "Configurações",
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Opções de Conta
          _buildAccountOption(
            context,
            Icons.notifications_outlined,
            "Notificações",
            "Gerencie os avisos por e-mail",
                () {},
          ),
          _buildAccountOption(
            context,
            Icons.headset_mic_outlined,
            "Suporte e Ajuda",
            "Fale com nossa equipe",
                () {},
          ),
          _buildAccountOption(
            context,
            Icons.logout,
            "Sair da Conta",
            "Encerrar sessão atual",
                () => _mostrarDialogoSaida(context),
            isLogout: true,
          ),
        ],
      ),
    );
  }

  Widget _buildAccountOption(
      BuildContext context,
      IconData icon,
      String title,
      String subtitle,
      VoidCallback onTap, {
        bool isLogout = false,
      }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF16181A),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(icon, color: isLogout ? Colors.redAccent : Colors.green),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: isLogout ? Colors.redAccent : Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: TextStyle(color: Colors.grey[500], fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right, color: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _mostrarDialogoSaida(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          backgroundColor: const Color(0xFF16181A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            // CORRIGIDO AQUI: Alterado de Border.all para BorderSide.all
            side: BorderSide(color: Colors.white.withOpacity(0.1)),
          ),
          title: const Text(
            "Deseja realmente sair?",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          content: const Text(
            "Atenção: Se sair da conta, você perderá o seu progresso atual salvo no aplicativo.",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
              child: const Text(
                "Cancelar",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                elevation: 0,
              ),
              onPressed: () {
                userProgress.resetProgress();
                Navigator.of(dialogContext).pop();

                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                      (route) => false,
                );
              },
              child: const Text("Sim, Sair"),
            ),
          ],
        );
      },
    );
  }
}