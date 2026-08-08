import 'package:flutter/material.dart';
import 'widgets/bonus_item_card.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Meus Bônus",
            style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            "Materiais exclusivos para acelerar sua transformação.",
            style: TextStyle(color: Colors.grey[400], fontSize: 14),
          ),
          const SizedBox(height: 32),
          
          // Lista de Bônus
          BonusItemCard(
            title: "Guia Rápido de Estilo",
            description: "Dicas práticas para elevar seu estilo e presença.",
            fileSize: "2.4 MB",
            onDownload: () {},
          ),
          BonusItemCard(
            title: "Checklist de Grooming",
            description: "Rotina completa de cuidados diários.",
            fileSize: "1.8 MB",
            onDownload: () {},
          ),
          BonusItemCard(
            title: "Planilha de Rotina Semanal",
            description: "Organize seus hábitos de alto valor.",
            fileSize: "500 KB",
            onDownload: () {},
          ),
        ],
      ),
    );
  }
}