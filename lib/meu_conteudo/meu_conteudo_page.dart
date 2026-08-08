import 'package:flutter/material.dart';

// Imports dos Módulos
import '../modulos/modulo1.dart';
import '../modulos/modulo2.dart';
import '../modulos/modulo3.dart'; // <-- IMPORT MÓDULO 3
import '../modulos/modulo4.dart'; // <-- IMPORT MÓDULO 4

import 'widgets/conteudo_card.dart';
import '../services/user_progress.dart';
import '../services/responsive.dart';

class MeuConteudoPage extends StatelessWidget {
  const MeuConteudoPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobileOrTablet = Responsive.isMobile(context) || Responsive.isTablet(context);

    return SingleChildScrollView(
      padding: EdgeInsets.all(isMobileOrTablet ? 16 : 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título da Página
          Text(
            "Meu Conteúdo",
            style: TextStyle(
              color: Colors.white,
              fontSize: isMobileOrTablet ? 22 : 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "Acesse todos os módulos e continue de onde parou.",
            style: TextStyle(color: Colors.grey[400], fontSize: 13),
          ),
          const SizedBox(height: 24),

          // Lista de módulos dinâmica com ListenableBuilder
          ListenableBuilder(
            listenable: userProgress,
            builder: (context, child) {
              // Status de conclusão individual de cada módulo
              bool isModulo1Concluido = userProgress.isConcluded('modulo_1');
              bool isModulo2Concluido = userProgress.isConcluded('modulo_2');
              bool isModulo3Concluido = userProgress.isConcluded('modulo_3');
              bool isModulo4Concluido = userProgress.isConcluded('modulo_4');

              // Regras de desbloqueio
              bool isModulo3Desbloqueado = isModulo1Concluido && isModulo2Concluido;
              bool isModulo4Desbloqueado = isModulo1Concluido && isModulo2Concluido && isModulo3Concluido;

              return Column(
                children: [
                  // MÓDULO 01
                  ConteudoCard(
                    title: "Módulo 01: Fundamentos da Pele Brasileira",
                    subtitle: isModulo1Concluido
                        ? "4 aulas disponíveis • Concluído"
                        : "4 aulas disponíveis • Em andamento",
                    imageUrl:
                    "https://images.unsplash.com/photo-1670201203116-26644750a726?w=200",
                    statusColor: isModulo1Concluido
                        ? Colors.green
                        : Colors.greenAccent,
                    onAcessarPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Modulo1Page(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),

                  // MÓDULO 02
                  ConteudoCard(
                    title: "Módulo 02: Ritual do Banho e Esfoliação Corporal",
                    subtitle: isModulo2Concluido
                        ? "6 aulas disponíveis • Concluído"
                        : "6 aulas disponíveis • Em andamento",
                    imageUrl:
                    "https://images.unsplash.com/photo-1498843053639-170ff2122f35?w=200",
                    statusColor: isModulo2Concluido
                        ? Colors.green
                        : Colors.greenAccent,
                    onAcessarPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Modulo2Page(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),

                  // MÓDULO 03
                  ConteudoCard(
                    title: "Módulo 03: Glow Natural: Bronze, Brilho e Contorno Corporal",
                    subtitle: !isModulo3Desbloqueado
                        ? "5 aulas disponíveis • Bloqueado"
                        : (isModulo3Concluido
                        ? "5 aulas disponíveis • Concluído"
                        : "5 aulas disponíveis • Em andamento"),
                    imageUrl:
                    "https://images.unsplash.com/photo-1544717304-a2db4a7b16ee?w=200",
                    statusColor: !isModulo3Desbloqueado
                        ? Colors.grey
                        : (isModulo3Concluido ? Colors.green : Colors.greenAccent),
                    onAcessarPressed: () {
                      if (isModulo3Desbloqueado) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Modulo3Page(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Conclua os Módulos 1 e 2 para desbloquear!",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.redAccent,
                            duration: Duration(seconds: 2),
                          ),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 16),

                  // MÓDULO 04
                  ConteudoCard(
                    title: "Módulo 04: Manutenção e Estilo de Vida Feminina",
                    subtitle: !isModulo4Desbloqueado
                        ? "5 aulas disponíveis • Bloqueado"
                        : (isModulo4Concluido
                        ? "5 aulas disponíveis • Concluído"
                        : "5 aulas disponíveis • Em andamento"),
                    imageUrl:
                    "https://images.unsplash.com/photo-1775642545087-315847882556?w=200",
                    statusColor: !isModulo4Desbloqueado
                        ? Colors.grey
                        : (isModulo4Concluido ? Colors.green : Colors.greenAccent),
                    onAcessarPressed: () {
                      if (isModulo4Desbloqueado) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Modulo4Page(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Conclua os Módulos 1, 2 e 3 para desbloquear!",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.redAccent,
                            duration: Duration(seconds: 2),
                          ),
                        );
                      }
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}