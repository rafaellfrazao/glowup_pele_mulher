import 'package:flutter/material.dart';

// Card de Citação
class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF16181A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("“", style: TextStyle(color: Colors.green, fontSize: 32, height: 0.8)),
          const SizedBox(height: 8),
          const Text(
            "Disciplina hoje,\ntransformação amanhã.",
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, height: 1.3),
          ),
          const SizedBox(height: 16),
          Text(
            "— The Brazilian Beauty Code",
            style: TextStyle(color: Colors.grey[500], fontSize: 12),
          ),
        ],
      ),
    );
  }
}

// Card de Acesso Rápido
class QuickAccessCard extends StatelessWidget {
  const QuickAccessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF16181A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "⚡ Acesso rápido",
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          _buildItem(Icons.playlist_play, "Meu Conteúdo"),
          _buildItem(Icons.card_giftcard, "Meus Bônus"),
          _buildItem(Icons.person_outline, "Minha Conta"),
          _buildItem(Icons.headset_mic_outlined, "Suporte"),
        ],
      ),
    );
  }

  Widget _buildItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.green, size: 20),
          const SizedBox(width: 12),
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 14)),
          const Spacer(),
          const Icon(Icons.chevron_right, color: Colors.grey, size: 18),
        ],
      ),
    );
  }
}

// Card de Suporte
class SupportCard extends StatelessWidget {
  final VoidCallback onSupportPressed;

  const SupportCard({super.key, required this.onSupportPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF16181A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Precisa de ajuda?",
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            "Fale com nosso suporte sempre que precisar.",
            style: TextStyle(color: Colors.grey[400], fontSize: 13),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: onSupportPressed,
              icon: const Icon(Icons.chat_bubble_outline, size: 18, color: Colors.white),
              label: const Text("Abrir Suporte", style: TextStyle(color: Colors.white, fontSize: 14)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}