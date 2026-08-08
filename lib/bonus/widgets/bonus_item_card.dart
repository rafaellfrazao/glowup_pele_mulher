import 'package:flutter/material.dart';

class BonusItemCard extends StatelessWidget {
  final String title;
  final String description;
  final String fileSize;
  final VoidCallback onDownload;

  const BonusItemCard({
    super.key,
    required this.title,
    required this.description,
    required this.fileSize,
    required this.onDownload,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF16181A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Row(
        children: [
          // Ícone de PDF
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: const Color(0xFF1B382B),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.picture_as_pdf, color: Colors.green, size: 28),
          ),
          const SizedBox(width: 20),
          
          // Textos
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Tamanho: $fileSize",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          
          // Botão de Download
          OutlinedButton.icon(
            onPressed: onDownload,
            icon: const Icon(Icons.download, size: 16, color: Colors.white),
            label: const Text("Baixar Material", style: TextStyle(color: Colors.white, fontSize: 13)),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.white.withOpacity(0.15)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }
}