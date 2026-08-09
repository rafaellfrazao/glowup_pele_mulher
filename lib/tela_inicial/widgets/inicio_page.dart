import 'package:flutter/material.dart';
import '../../modulos/modulo1.dart';
import '../../modulos/modulo2.dart';
import '../../modulos/modulo3.dart';
import '../../modulos/modulo4.dart';
import '../../services/user_progress.dart';
import '../../services/responsive.dart';

import 'module_card.dart';
import 'bonus_card.dart';

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
          "Welcome, $userName! 👋",
          style: TextStyle(color: Colors.white, fontSize: isMobile ? 22 : 26, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Text(
          'It\'s time to invest in yourself and become your best version.',
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
                        Text('Your progress', style: TextStyle(color: Colors.grey[400], fontSize: 13)),
                        const SizedBox(height: 4),
                        Text(
                          "$porcentagemInt% completed",
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
                            Text('Your progress', style: TextStyle(color: Colors.grey[400], fontSize: 13)),
                            const SizedBox(height: 4),
                            Text(
                              "$porcentagemInt% completed",
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
                          'Consistency is what\ntakes you to the next level.',
                          style: TextStyle(color: Colors.white, fontSize: 13, height: 1.4),
                        ),
                      ],
                    ),
            );
          },
        ),

        const SizedBox(height: 32),
        const Text(
          'Your modules',
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),

        // 2. LISTA DE MÓDULOS
        ListenableBuilder(
          listenable: userProgress,
          builder: (context, child) {
            bool isM1Concluido = userProgress.isConcluded('modulo_1');
            bool isM2Concluido = userProgress.isConcluded('modulo_2');
            bool isM3Concluido = userProgress.isConcluded('modulo_3');
            bool isM4Concluido = userProgress.isConcluded('modulo_4');

            bool canUnlockM3 = isM1Concluido && isM2Concluido;
            bool canUnlockM4 = canUnlockM3 && isM3Concluido;

            return Column(
              children: [
                // MÓDULO 1
                ModuleCard(
                  title: '01. Fundamentals of Brazilian Skin',
                  subtitle: 'Develop a high-value mindset.',
                  statusText: isM1Concluido ? 'Completed' : 'Start',
                  imagePath: "https://images.unsplash.com/photo-1670201203116-26644750a726?w=200",
                  statusColor: isM1Concluido ? Colors.green : Colors.greenAccent,
                  statusBgColor: const Color(0xFF1B382B),
                  statusIcon: isM1Concluido ? Icons.check : Icons.play_arrow,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Modulo1Page()));
                  },
                ),

                // MÓDULO 2
                ModuleCard(
                  title: '02. Bath Ritual & Body Exfoliation',
                  subtitle: 'Learn to dress with purpose and attract attention.',
                  statusText: isM2Concluido ? 'Completed' : 'Start',
                  imagePath: "https://images.unsplash.com/photo-1498843053639-170ff2122f35?w=200",
                  statusColor: isM2Concluido ? Colors.green : Colors.greenAccent,
                  statusBgColor: const Color(0xFF1B382B),
                  statusIcon: isM2Concluido ? Icons.check : Icons.play_arrow,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Modulo2Page()));
                  },
                ),

                // MÓDULO 3
                ModuleCard(
                  title: '03. Natural Glow: Tan, Shine, and Body Contour',
                  subtitle: 'Essential care to elevate your appearance.',
                  statusText: isM3Concluido
                      ? 'Completed'
                      : (canUnlockM3 ? 'Start' : 'Locked'),
                  imagePath: "https://images.unsplash.com/photo-1544717304-a2db4a7b16ee?w=200",
                  statusColor: isM3Concluido
                      ? Colors.green
                      : (canUnlockM3 ? Colors.greenAccent : Colors.grey),
                  statusBgColor: (isM3Concluido || canUnlockM3)
                      ? const Color(0xFF1B382B)
                      : const Color(0xFF22252A),
                  statusIcon: isM3Concluido
                      ? Icons.check
                      : (canUnlockM3 ? Icons.play_arrow : Icons.lock_outline),
                  isLocked: !isM3Concluido && !canUnlockM3,
                  onTap: (isM3Concluido || canUnlockM3)
                      ? () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Modulo3Page()));
                        }
                      : null,
                ),

                // MÓDULO 4
                ModuleCard(
                  title: '04. Maintenance and Women\'s Lifestyle',
                  subtitle: 'Maintain your results and evolve continuously.',
                  statusText: isM4Concluido
                      ? 'Completed'
                      : (canUnlockM4 ? 'Start' : 'Locked'),
                  imagePath: "https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=200",
                  statusColor: isM4Concluido
                      ? Colors.green
                      : (canUnlockM4 ? Colors.greenAccent : Colors.grey),
                  statusBgColor: (isM4Concluido || canUnlockM4)
                      ? const Color(0xFF1B382B)
                      : const Color(0xFF22252A),
                  statusIcon: isM4Concluido
                      ? Icons.check
                      : (canUnlockM4 ? Icons.play_arrow : Icons.lock_outline),
                  isLocked: !isM4Concluido && !canUnlockM4,
                  onTap: (isM4Concluido || canUnlockM4)
                      ? () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Modulo4Page()));
                        }
                      : null,
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildColunaLateral() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Your Bonuses',
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          'Exclusive materials to accelerate your transformation.',
          style: TextStyle(color: Colors.grey[400], fontSize: 13),
        ),
        const SizedBox(height: 16),
        BonusCard(
          title: 'Quick Style Guide',
          description: 'Practical tips to elevate your style and presence.',
          onDownload: () {},
        ),
        const SizedBox(height: 12),
        BonusCard(
          title: 'Personal Care Checklist',
          description: 'Complete daily self-care routine.',
          onDownload: () {},
        ),
        const SizedBox(height: 12),
        BonusCard(
          title: 'Weekly Routine Sheet',
          description: 'Organize your high-value habits.',
          onDownload: () {},
        ),
      ],
    );
  }
}