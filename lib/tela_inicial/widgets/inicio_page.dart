import 'package:flutter/material.dart';
import '../../modulos/modulo1.dart';
import '../../modulos/modulo2.dart';
import '../../services/user_progress.dart';
import '../../services/responsive.dart';

import 'module_card.dart';
import 'bonus_card.dart';
import 'sidebar_widgets.dart';

class InicioPage extends StatelessWidget {
  final String userName;

  const InicioPage({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    bool isMobileOrTablet = Responsive.isMobile(context) || Responsive.isTablet(context);

    return SingleChildScrollView(
      padding: EdgeInsets.all(isMobileOrTablet ? 16 : 32),
      child: isMobileOrTablet
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildConteudoPrincipal(context, isMobile: true),
          const SizedBox(height: 32),
          _buildColunaLateral(),
        ],
      )
          : Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 3, child: _buildConteudoPrincipal(context, isMobile: false)),
          const SizedBox(width: 24),
          Expanded(flex: 1, child: _buildColunaLateral()),
        ],
      ),
    );
  }

  Widget _buildConteudoPrincipal(BuildContext context, {required bool isMobile}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bem-vindo, $userName! 👋",
          style: TextStyle(color: Colors.white, fontSize: isMobile ? 22 : 26, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Text(
          "É hora de investir em você e se tornar sua melhor versão.",
          style: TextStyle(color: Colors.grey[400], fontSize: 13),
        ),
        const SizedBox(height: 24),

        // 1. CARD DE PROGRESSO
        ListenableBuilder(
          listenable: userProgress,
          builder: (context, child) {
            double porcentagem = userProgress.progressPercentage;
            int porcentagemInt = (porcentagem * 100).toInt();

            return Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF16181A),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white.withOpacity(0.05)),
                gradient: const LinearGradient(
                  colors: [Color(0xFF16181A), Color(0xFF1A2621)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: isMobile
                  ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Seu progresso", style: TextStyle(color: Colors.grey[400], fontSize: 13)),
                  const SizedBox(height: 4),
                  Text(
                    "$porcentagemInt% concluído",
                    style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  LinearProgressIndicator(
                    value: porcentagem,
                    backgroundColor: Colors.white.withOpacity(0.1),
                    color: Colors.green,
                    minHeight: 6,
                  ),
                ],
              )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Seu progresso", style: TextStyle(color: Colors.grey[400], fontSize: 13)),
                      const SizedBox(height: 4),
                      Text(
                        "$porcentagemInt% concluído",
                        style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: 220,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 220 * porcentagem,
                            height: 6,
                            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(3)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Consistência é o que\nte leva ao próximo nível.",
                    style: TextStyle(color: Colors.white, fontSize: 13, height: 1.4),
                  ),
                ],
              ),
            );
          },
        ),

        const SizedBox(height: 32),
        const Text(
          "Seus módulos",
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),

        // 2. LISTA DE MÓDULOS (Agora com atualização em tempo real)
        ListenableBuilder(
          listenable: userProgress,
          builder: (context, child) {
            bool isM1Concluido = userProgress.isConcluded('modulo_1');
            bool isM2Concluido = userProgress.isConcluded('modulo_2');
            bool isModulosAnterioresConcluidos = isM1Concluido && isM2Concluido;

            return Column(
              children: [
                ModuleCard(
                  title: "01. Fundamentos da Pele Brasileira",
                  subtitle: "Desenvolva uma mentalidade de alto valor.",
                  statusText: isM1Concluido ? "Concluído" : "Começar",
                  imagePath: "https://images.unsplash.com/photo-1670201203116-26644750a726?w=200",
                  statusColor: isM1Concluido ? Colors.green : Colors.greenAccent,
                  statusBgColor: const Color(0xFF1B382B),
                  statusIcon: isM1Concluido ? Icons.check : Icons.play_arrow,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Modulo1Page()));
                  },
                ),
                ModuleCard(
                  title: "02. Ritual do Banho e Esfoliação Corporal",
                  subtitle: "Aprenda a se vestir com propósito e atrair olhares.",
                  statusText: isM2Concluido ? "Concluído" : "Começar",
                  imagePath: "https://images.unsplash.com/photo-1498843053639-170ff2122f35?w=200",
                  statusColor: isM2Concluido ? Colors.green : Colors.greenAccent,
                  statusBgColor: const Color(0xFF1B382B),
                  statusIcon: isM2Concluido ? Icons.check : Icons.play_arrow,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Modulo2Page()));
                  },
                ),
                ModuleCard(
                  title: "03. Glow Natural: Bronze, Brilho e Contorno Corporal",
                  subtitle: "Cuidados essenciais para elevar sua aparência.",
                  statusText: isModulosAnterioresConcluidos ? "Começar" : "Bloqueado",
                  imagePath: "https://images.unsplash.com/photo-1544717304-a2db4a7b16ee?w=200",
                  statusColor: isModulosAnterioresConcluidos ? Colors.greenAccent : Colors.grey,
                  statusBgColor: isModulosAnterioresConcluidos ? const Color(0xFF1B382B) : const Color(0xFF22252A),
                  statusIcon: isModulosAnterioresConcluidos ? Icons.play_arrow : Icons.lock_outline,
                  isLocked: !isModulosAnterioresConcluidos,
                  onTap: () {
                    if (!isModulosAnterioresConcluidos) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Conclua os Módulos 1 e 2 para desbloquear!",style: TextStyle(color: Colors.white),), backgroundColor: Colors.redAccent),
                      );
                    }
                  },
                ),
                ModuleCard(
                  title: "04. Manutenção e Estilo de Vida",
                  subtitle: "Seja lembrado pela forma como fala e se comporta.",
                  statusText: isModulosAnterioresConcluidos ? "Começar" : "Bloqueado",
                  imagePath: "https://images.unsplash.com/photo-1775642545087-315847882556?w=200",
                  statusColor: isModulosAnterioresConcluidos ? Colors.greenAccent : Colors.grey,
                  statusBgColor: isModulosAnterioresConcluidos ? const Color(0xFF1B382B) : const Color(0xFF22252A),
                  statusIcon: isModulosAnterioresConcluidos ? Icons.play_arrow : Icons.lock_outline,
                  isLocked: !isModulosAnterioresConcluidos,
                  onTap: () {
                    if (!isModulosAnterioresConcluidos) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Conclua os Módulos 1 e 2 para desbloquear!",style: TextStyle(color: Colors.white),), backgroundColor: Colors.redAccent),
                      );
                    }
                  },
                ),
              ],
            );
          },
        ),

        const SizedBox(height: 24),
        const Text(
          "Bônus exclusivos",
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),

        isMobile
            ? Column(
          children: [
            BonusCard(title: "Guia Rápido de Estilo", description: "Dicas práticas para elevar seu estilo.", onDownload: () {}),
            const SizedBox(height: 16),
            BonusCard(title: "Checklist de Grooming", description: "Checklist completo de cuidados.", onDownload: () {}),
          ],
        )
            : Row(
          children: [
            Expanded(child: BonusCard(title: "Guia Rápido de Estilo", description: "Dicas práticas para elevar seu estilo.", onDownload: () {})),
            const SizedBox(width: 16),
            Expanded(child: BonusCard(title: "Checklist de Grooming", description: "Checklist completo de cuidados.", onDownload: () {})),
          ],
        ),
      ],
    );
  }

  Widget _buildColunaLateral() {
    return Column(
      children: [
        const QuoteCard(),
        const SizedBox(height: 20),
        const QuickAccessCard(),
        const SizedBox(height: 20),
        SupportCard(onSupportPressed: () {}),
      ],
    );
  }
}