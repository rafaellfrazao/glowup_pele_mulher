import 'package:flutter/material.dart';
import '../services/user_progress.dart';

/// Modelo simples para representar cada aula dentro do módulo.
class _Aula {
  final String titulo;
  final String imagem1;
  final String introducao;
  final String? imagem2;
  final String? dicaTitulo;
  final List<String>? passos;
  final List<String>? dicasExtras;
  final String? tutorialCasaTitulo;
  final List<String>? tutorialCasaMateriais;
  final List<String>? tutorialCasaPassos;

  const _Aula({
    required this.titulo,
    required this.imagem1,
    required this.introducao,
    this.imagem2,
    this.dicaTitulo,
    this.passos,
    this.dicasExtras,
    this.tutorialCasaTitulo,
    this.tutorialCasaMateriais,
    this.tutorialCasaPassos,
  });
}

class Modulo1Page extends StatelessWidget {
  const Modulo1Page({super.key});

  final String moduleId = 'modulo_1';

  List<_Aula> get _aulas => const [
        // Aula 1
        const _Aula(
          titulo: "01. Welcome: Understanding Your Skin",
          imagem1:
              'https://images.unsplash.com/photo-1544717304-a2db4a7b16ee?w=1000',
          introducao:
              'Welcome to Module 1! Before any product or recipe, the Brazilian glow starts with one key step: understanding your skin type. In this lesson, you will learn how to identify whether your skin is oily, dry, combination, or sensitive, and why this completely transforms how you clean, hydrate, and care for it daily.',
          tutorialCasaTitulo: "Home Test: Discover Your Skin Type in 5 Minutes",
          tutorialCasaMateriais: [
            '1 clean paper tissue or towel',
            'Lukewarm water',
            'Clean face towel',
          ],
          tutorialCasaPassos: [
            'Wash your face normally with a mild cleanser and pat dry.',
            'Wait 30 minutes without applying any products to your skin.',
            'Gently press the tissue onto your forehead, nose, and chin (T-zone).',
            'Press the tissue onto your cheeks.',
            'Check results: oily everywhere = oily skin; oily T-zone only = combination; dry tissue and tight skin = dry skin; red or easily irritated = sensitive skin.',
          ],
        ),

        // Aula 2
        const _Aula(
          titulo: "02. Facial Cleansing: The Glow Foundation",
          imagem1:
              'https://images.unsplash.com/photo-1731514771613-991a02407132?w=1000',
          introducao:
              'Cleansing is the most underrated step in skincare. Dirty or poorly cleansed skin prevents any moisturizer or serum from working properly. Here you will learn the double cleansing method used in top Brazilian routines.',
          imagem2:
              'https://images.unsplash.com/photo-1629380108599-ea06489d66f5?w=1000',
          dicaTitulo: "How to Perform Perfect Facial Cleansing",
          passos: [
            'Remove makeup and sunscreen with a cleansing oil or balm.',
            'Perform a second cleanse with a facial cleanser suitable for your skin type.',
            'Gently massage for 60 seconds without rubbing hard.',
            'Rinse with lukewarm water, never hot, to avoid drying out the skin.',
            'Pat dry gently with a clean, soft towel.',
          ],
          dicasExtras: [
            'Never sleep with makeup on.',
            'Change your face towel frequently to prevent bacteria.',
            'Oily skin also needs hydration after cleansing.',
          ],
          tutorialCasaTitulo: "DIY: Double Cleansing with Simple Items",
          tutorialCasaMateriais: [
            'Neutral oil (coconut, sunflower, or olive) for first cleanse',
            'Neutral facial cleanser or specific for your skin type',
            '2 clean face towels',
            'Lukewarm water',
          ],
          tutorialCasaPassos: [
            'With dry hands, apply a teaspoon of oil to dry face and massage for 1 minute to dissolve makeup and sunscreen.',
            'Wet a towel with lukewarm water, wring well, and pass over face to remove oil without rubbing hard.',
            'Wet face again and apply the facial cleanser, massaging for 60 seconds.',
            'Rinse well with lukewarm water.',
            'Dry face gently with the second clean towel.',
          ],
        ),

        // Aula 3
        const _Aula(
          titulo: "03. Layered Hydration: The Brazilian Secret",
          imagem1:
              'https://images.unsplash.com/photo-1693004927824-f2623bbedc8b?w=1000',
          introducao:
              'Layered hydration consists of applying products from lightest to densest.',
          imagem2:
              'https://images.unsplash.com/photo-1670201203208-055d6d79db4a?w=1000',
          dicaTitulo: "Layered Hydration Routine",
          passos: [
            'Apply toner to damp skin.',
            'Add hyaluronic acid serum.',
            'Wait 2 to 3 minutes for absorption.',
            'Finish with moisturizer.',
            'Apply sunscreen during the day.',
          ],
          dicasExtras: [
            'Apply products with slightly damp skin.',
            'Less product, more layers.',
            'Drink enough water daily.',
          ],
          tutorialCasaTitulo: "DIY: Hydrating Homemade Mask",
          tutorialCasaMateriais: [
            '1 tablespoon of oatmeal',
            '1 tablespoon of honey',
            '1 tablespoon of natural yogurt',
          ],
          tutorialCasaPassos: [
            'Mix ingredients in a bowl.',
            'Apply to clean face.',
            'Leave on for 15 minutes.',
            'Rinse with lukewarm water.',
            'Dry and hydrate your skin.',
            'Use 1 to 2 times per week.',
          ],
        ),

        // Aula 4
        const _Aula(
          titulo: "04. Exfoliation and Complete Routine",
          imagem1:
              'https://images.unsplash.com/photo-1648203276014-20f97ba1f817?w=1000',
          introducao:
              'Exfoliation removes dead cells to restore luminosity.',
          imagem2:
              'https://images.unsplash.com/photo-1629198688000-71f23e745b6e?w=1000',
          dicaTitulo: "Your Complete Routine Step by Step",
          passos: [
            'Exfoliate 1 to 2 times per week.',
            'Morning routine: gentle cleansing, hydration, sunscreen.',
            'Night routine: double cleansing, exfoliation, and moisturizer.',
            'Wait for skin to dry between products.',
            'Maintain consistency week by week.',
          ],
          dicasExtras: [
            'Over-exfoliation damages the skin barrier.',
            'Prefer gentle exfoliants.',
            'Take weekly photos to see your progress.',
          ],
          tutorialCasaTitulo: "DIY: Gentle Facial Exfoliant",
          tutorialCasaMateriais: [
            '1 tablespoon of fine sugar',
            '1 tablespoon of coconut oil',
            'Optional: 1 teaspoon of honey',
          ],
          tutorialCasaPassos: [
            'Mix sugar with coconut oil.',
            'Add honey if desired.',
            'Apply to damp face gently.',
            'Massage for 30-60 seconds.',
            'Rinse with lukewarm water.',
            'Finish with moisturizer.',
            'Use maximum 1 to 2 times per week.',
          ],
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1112),
      appBar: AppBar(
        backgroundColor: const Color(0xFF16181A),
        title: const Text(
          "Module 1 - Fundamentals of Brazilian Skin",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < _aulas.length; i++) ...[
                  _buildAula(_aulas[i]),
                  const SizedBox(height: 48),
                  if (i != _aulas.length - 1)
                    Divider(color: Colors.white.withOpacity(0.08), height: 1),
                  if (i != _aulas.length - 1) const SizedBox(height: 48),
                ],

                // Botão Dinâmico de Concluir Módulo
                ListenableBuilder(
                  listenable: userProgress,
                  builder: (context, child) {
                    bool concluido = userProgress.isConcluded(moduleId);

                    return SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          userProgress.toggleModule(moduleId);
                        },
                        icon: Icon(
                          concluido
                              ? Icons.check_circle
                              : Icons.radio_button_unchecked,
                          color: concluido ? Colors.green : Colors.white,
                        ),
                        label: Text(
                          concluido
                              ? "Module Completed ✔"
                              : "Mark as Completed",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: concluido ? Colors.green : Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: concluido
                              ? const Color(0xFF1B382B)
                              : const Color(0xFF22252A),
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                              color: concluido
                                  ? Colors.green.withOpacity(0.5)
                                  : Colors.white.withOpacity(0.1),
                            ),
                          ),
                          elevation: 0,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Constrói o conteúdo completo de uma aula (título, imagens, textos, tutorial e dicas).
  Widget _buildAula(_Aula aula) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          aula.titulo,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),

        _buildImagem(aula.imagem1),
        const SizedBox(height: 20),

        Text(
          aula.introducao,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 15,
            height: 1.5,
          ),
        ),

        if (aula.imagem2 != null) ...[
          const SizedBox(height: 24),
          _buildImagem(aula.imagem2!),
        ],

        if (aula.dicaTitulo != null && aula.passos != null) ...[
          const SizedBox(height: 28),
          _buildTutorial(aula.dicaTitulo!, aula.passos!),
        ],

        if (aula.tutorialCasaTitulo != null &&
            aula.tutorialCasaMateriais != null &&
            aula.tutorialCasaPassos != null) ...[
          const SizedBox(height: 24),
          _buildTutorialCasa(
            aula.tutorialCasaTitulo!,
            aula.tutorialCasaMateriais!,
            aula.tutorialCasaPassos!,
          ),
        ],

        if (aula.dicasExtras != null) ...[
          const SizedBox(height: 24),
          _buildDicasExtras(aula.dicasExtras!),
        ],
      ],
    );
  }

  // Card de imagem, no mesmo estilo visual do player de vídeo original.
  Widget _buildImagem(String url) {
    return Container(
      width: double.infinity,
      height: 320,
      decoration: BoxDecoration(
        color: const Color(0xFF16181A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          url,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: const Color(0xFF16181A),
              child: const Center(
                child: Icon(Icons.broken_image, color: Colors.grey, size: 48),
              ),
            );
          },
        ),
      ),
    );
  }

  // Card de "Dica" com passos numerados
  Widget _buildTutorial(String titulo, List<String> passos) {
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
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  "Tip",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  titulo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ...passos.asMap().entries.map((entry) {
            int index = entry.key;
            String passo = entry.value;
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      passo,
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }

  // Card de "Tutorial: faça em casa" com materiais e passos
  Widget _buildTutorialCasa(
    String titulo,
    List<String> materiais,
    List<String> passos,
  ) {
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
          Row(
            children: [
              const Icon(
                Icons.home_work_outlined,
                color: Colors.green,
                size: 20,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  titulo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            "What you will need",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ...materiais.map((material) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                children: [
                  const Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                    size: 14,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      material,
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
          const SizedBox(height: 16),
          const Text(
            "Preparation steps",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ...passos.asMap().entries.map((entry) {
            int index = entry.key;
            String passo = entry.value;
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      passo,
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }

  // Card de "Dicas extras"
  Widget _buildDicasExtras(List<String> dicas) {
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
            "Extra tips",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          ...dicas.map((dica) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.lightbulb_outline,
                    color: Colors.green,
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      dica,
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 13,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
