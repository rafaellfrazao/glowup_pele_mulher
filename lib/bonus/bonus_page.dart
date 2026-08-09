import 'package:flutter/material.dart';
import 'widgets/bonus_item_card.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  void _showDownloadAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF16181A),
          title: const Text(
            'Download Unavailable',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          content: Text(
            'The download is temporarily unavailable. Our support team has been notified and is working on it.',
            style: TextStyle(color: Colors.grey[300]),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'OK',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Identifica se a tela é mobile
    bool isMobile = MediaQuery.of(context).size.width < 600;

    return SingleChildScrollView(
      // Reduz o padding de 32 para 16 no mobile para dar mais espaço aos textos
      padding: EdgeInsets.all(isMobile ? 16 : 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Bonuses',
            style: TextStyle(
              color: Colors.white,
              fontSize: isMobile ? 22 : 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Exclusive materials to accelerate your transformation.',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: isMobile ? 13 : 14,
            ),
          ),
          SizedBox(height: isMobile ? 20 : 32),

          // Lista de Bônus com espaçamento entre os itens
          BonusItemCard(
            title: 'Quick Style Guide',
            description: 'Practical tips to elevate your style and presence.',
            fileSize: "2.4 MB",
            onDownload: () => _showDownloadAlert(context),
          ),
          const SizedBox(height: 12),
          BonusItemCard(
            title: 'Personal Care Checklist',
            description: 'Complete daily self-care routine.',
            fileSize: "1.8 MB",
            onDownload: () => _showDownloadAlert(context),
          ),
          const SizedBox(height: 12),
          BonusItemCard(
            title: 'Weekly Routine Sheet',
            description: 'Organize your high-value habits.',
            fileSize: "500 KB",
            onDownload: () => _showDownloadAlert(context),
          ),
        ],
      ),
    );
  }
}