import 'package:flutter/material.dart';

import '../../services/user_progress.dart';

/// Simple model representing each lesson inside the module.
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

class Modulo3Page extends StatelessWidget {
  const Modulo3Page({super.key});

  final String moduleId = 'modulo_3';

  // List of the 5 lessons in the Bronze, Glow & Body Contour module.
  static final List<_Aula> _aulas = [
    // Lesson 1 - The Healthy Tan
    const _Aula(
      titulo: "01. The Healthy Tan: a golden glow without damaging your skin",
      imagem1:
      "https://images.unsplash.com/photo-1685979979782-759cbdd528ee?w=1000",
      introducao:
      "A real Brazilian tan is never about lying in the sun until you burn — it's "
          "built gradually, over days, with protection first. Brazilian women rarely skip "
          "sunscreen at the beach; instead, they combine SPF with natural tan-boosting oils "
          "like carrot or annatto (urucum) oil to deepen color while still protecting the "
          "skin barrier. In this lesson, you'll learn how to build a golden, even tone that "
          "actually lasts, instead of one that peels and fades in a week.",
      tutorialCasaTitulo: "Pre-sun skin prep with a natural tan accelerator",
      tutorialCasaMateriais: [
        "Body sunscreen, SPF 30 or higher",
        "1 tablespoon of carrot oil or annatto (urucum) oil",
        "A spray bottle filled with water",
      ],
      tutorialCasaPassos: [
        "Exfoliate your body 24 hours before sun exposure for a more even tone.",
        "Apply sunscreen all over your body 20 minutes before heading outside.",
        "Once the sunscreen has absorbed, add a thin layer of the carrot or annatto oil on exposed areas.",
        "Mist your skin with water every so often and limit direct sun exposure to about 30 minutes per side.",
      ],
    ),

    // Lesson 2 - The Glow Secret
    const _Aula(
      titulo: "02. The Glow Secret: shimmer oils and illuminating creams",
      imagem1:
      "https://images.unsplash.com/photo-1629271920136-ff713a97b447?w=1000",
      introducao:
      "That silky, sun-kissed shimmer you see on Brazilian skin isn't luck — it's "
          "a small trick most women do without even thinking about it: mixing a few drops "
          "of shimmer oil into body lotion before heading out. The goal isn't to look "
          "sparkly, it's to catch the light in exactly the right places to make skin look "
          "healthier and more awake. Here you'll learn where to apply it for the most "
          "natural, expensive-looking effect.",
      imagem2:
      "https://images.unsplash.com/photo-1562261150-0989084c593e?w=1000",
      dicaTitulo: "Strategic highlight points on the body",
      passos: [
        "Apply shimmer oil along the collarbones and the tops of the shoulders.",
        "Sweep a light vertical line down the center of the shins and forearms to elongate the silhouette.",
        "Blend the edges well with your hands so there's no visible line or buildup of shimmer.",
        "Let the product fully dry before getting dressed, so it doesn't transfer onto clothes.",
      ],
      dicasExtras: [
        "Mix a few drops of liquid highlighter into your everyday lotion for a subtle, all-over glow.",
        "Fine-shimmer, gold or bronze formulas tend to look the most natural on warm skin tones.",
      ],
      tutorialCasaTitulo: "Make your own golden shimmer body oil",
      tutorialCasaMateriais: [
        "50ml of a light body oil (almond, grapeseed, or liquid coconut oil)",
        "1/2 teaspoon of finely milled gold or bronze mineral eyeshadow",
        "1 clean pump or dropper bottle",
      ],
      tutorialCasaPassos: [
        "Crush the eyeshadow with the back of a spoon until it's a very fine powder.",
        "Add the powder into the bottle along with the body oil.",
        "Shake well before every use so the shimmer stays evenly distributed.",
        "Apply on shoulders, collarbones, shins and arms before heading out.",
      ],
    ),

    // Lesson 3 - Body Contour
    const _Aula(
      titulo: "03. Body Contour: sculpting curves with light and shadow",
      imagem1:
      "https://images.unsplash.com/photo-1663667858383-b5d5e62d0152?w=1000",
      introducao:
      "The same light-and-shadow logic used in face makeup — shadow to recede, "
          "light to project — works just as well on the body. With the right bronzer and "
          "highlighter placement, you can visually define muscle tone, slim the waistline, "
          "and enhance the shape of your legs, all without any actual change to your body. "
          "It's a technique many Brazilian dancers and influencers use before photoshoots "
          "or beach days.",
      imagem2:
      "https://images.unsplash.com/photo-1558700864-0f4b0b44fd5d?w=1000",
      dicaTitulo: "4-step body contour technique",
      passos: [
        "Identify the natural shadow areas of your legs (inner and outer sides) and stomach.",
        "Using a large brush or sponge, apply a bronzer 2 shades deeper than your skin tone in those hollows.",
        "Apply highlighter down the center of the thighs, shins, and the middle of the arms.",
        "Blend everything in circular motions until there are no visible lines left.",
      ],
      dicasExtras: [
        "Mousse-based body products tend to last longer through the day than powder formulas.",
        "Avoid overly orange contour shades; go for neutral or slightly cool undertones instead.",
      ],
      tutorialCasaTitulo: "Make a washable instant body bronzer",
      tutorialCasaMateriais: [
        "2 tablespoons of your favorite body lotion",
        "1/2 teaspoon of pure, unsweetened cocoa powder",
        "1/4 teaspoon of gold mica powder or shimmer eyeshadow",
      ],
      tutorialCasaPassos: [
        "In a small bowl, mix the lotion with the cocoa powder until you reach an even bronze tone.",
        "Add the gold mica for a glowing finish and mix again.",
        "Apply to the desired areas for instant color; it washes off easily in the shower.",
      ],
    ),

    // Lesson 4 - Flawless Self-Tanner
    const _Aula(
      titulo: "04. Flawless Self-Tanner: streak-free, long-lasting application",
      imagem1:
      "https://images.unsplash.com/photo-1568026530336-f706373e9d78?w=1000",
      introducao:
      "Self-tanner gives you that golden Brazilian glow year-round, with zero sun "
          "exposure — but a rushed application is the most common reason people end up with "
          "orange hands, patchy elbows, or dark ankle creases. In this lesson, you'll learn "
          "the exact method professionals use to apply tanning mousse evenly from head to toe.",
      dicaTitulo: "Step-by-step professional self-tanner routine",
      passos: [
        "Exfoliate and shave 24 hours before applying self-tanner, never on the same day.",
        "Moisturize only the naturally dry areas: feet, heels, knees, elbows and hands.",
        "Using a velvet tanning mitt, blend the mousse in continuous, circular motions.",
        "Use the mitt with barely any product left on it to lightly go over hands and feet last.",
        "Follow the develop time on the label before your first rinse — no soap on that first shower.",
      ],
      dicasExtras: [
        "If you get stained hands, lemon juice or baking soda can help lift the color the same day.",
        "Very hot showers and rough towel-drying both shorten how long a self-tan actually lasts.",
      ],
      tutorialCasaTitulo: "DIY joint and crease protection guide",
      tutorialCasaMateriais: [
        "1 thick moisturizer or a bit of solid petroleum jelly",
        "Cotton pads",
      ],
      tutorialCasaPassos: [
        "Before applying self-tanner, dab a thicker layer of moisturizer on ankles, knees, and knuckle creases.",
        "Let it sit for 5 minutes so it partially absorbs.",
        "Apply your self-tanner normally over the rest of the body as usual.",
      ],
    ),

    // Lesson 5 - Maintaining the Glow
    const _Aula(
      titulo: "05. Maintaining The Glow: after-sun care and long-lasting color",
      imagem1:
      "https://images.unsplash.com/photo-1729091773707-364e080627f2?w=1000",
      introducao:
      "Getting the golden tone is only half the job — keeping it glowing without "
          "peeling or fading takes real after-sun care. Brazilian beach culture treats this "
          "step as non-negotiable: a cool shower right after the beach, a soothing lotion, "
          "and plenty of water. On top of that, many Brazilians lean on beta-carotene-rich "
          "foods, like carrots, pumpkin and papaya, which are believed to support a deeper, "
          "longer-lasting tan from the inside out.",
      imagem2:
      "https://images.unsplash.com/photo-1544717304-a2db4a7b16ee?w=1000",
      dicaTitulo: "Post-sun color maintenance routine",
      passos: [
        "Take a cool or lukewarm shower as soon as you're back from the beach or pool.",
        "Use an ultra-hydrating body wash or bath oil, and skip exfoliating scrubs that day.",
        "Follow up with an after-sun lotion containing aloe vera and chamomile to calm the skin.",
        "Drink at least 2.5 liters (about 85 oz) of water a day to keep skin hydrated from within.",
      ],
      dicasExtras: [
        "Beta-carotene-rich foods like carrots, pumpkin and papaya are a Brazilian staple for supporting tan longevity.",
        "Skip intense body exfoliation for the following 2 weeks to help the color last as long as possible.",
      ],
      tutorialCasaTitulo: "Make a cooling aloe vera & green tea after-sun gel",
      tutorialCasaMateriais: [
        "2 tablespoons of aloe vera gel (fresh or pure store-bought)",
        "50ml of strong, chilled green tea",
        "An ice cube tray or a clean container",
      ],
      tutorialCasaPassos: [
        "Mix the aloe vera gel with the cold green tea until fully combined.",
        "Pour the mixture into an ice cube tray and freeze.",
        "After your post-sun shower, wrap a cube in a thin cloth and gently glide it over any flushed areas.",
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
          "Module 3 - Natural Glow: Bronze, Shine & Body Contour",
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

                // Dynamic "Mark module as complete" button
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
                          concluido ? Icons.check_circle : Icons.radio_button_unchecked,
                          color: concluido ? Colors.green : Colors.white,
                        ),
                        label: Text(
                          concluido ? "Module Completed ✔" : "Mark As Completed",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: concluido ? Colors.green : Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: concluido ? const Color(0xFF1B382B) : const Color(0xFF22252A),
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                              color: concluido ? Colors.green.withOpacity(0.5) : Colors.white.withOpacity(0.1),
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

  // Builds the full content of a lesson (title, images, texts, tutorial and tips).
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

  // Image card, same visual style used across the other modules.
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
        ),
      ),
    );
  }

  // "Tip" block + short step-by-step routine.
  Widget _buildTutorial(String titulo, List<String> passos) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF16181A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.lightbulb, color: Colors.green, size: 20),
              SizedBox(width: 8),
              Text(
                "Tip",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            titulo,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          for (int i = 0; i < passos.length; i++)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1B382B),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "${i + 1}",
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      passos[i],
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  // Home tutorial block: materials + step-by-step preparation.
  Widget _buildTutorialCasa(
      String titulo, List<String> materiais, List<String> passos) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF241A12),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.orange.withOpacity(0.15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.home_repair_service, color: Colors.orange, size: 20),
              SizedBox(width: 8),
              Text(
                "Tutorial: make it at home",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            titulo,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 18),

          // What you'll need
          Row(
            children: const [
              Icon(Icons.shopping_basket_outlined, color: Colors.orangeAccent, size: 16),
              SizedBox(width: 6),
              Text(
                "What you'll need",
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          for (final item in materiais)
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.circle, size: 6, color: Colors.orangeAccent),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      item,
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          const SizedBox(height: 18),

          // How to make it
          Row(
            children: const [
              Icon(Icons.checklist, color: Colors.orangeAccent, size: 16),
              SizedBox(width: 6),
              Text(
                "How to make it",
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          for (int i = 0; i < passos.length; i++)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.15),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "${i + 1}",
                      style: const TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      passos[i],
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  // Extra tips block.
  Widget _buildDicasExtras(List<String> dicas) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF16181A).withOpacity(0.6),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.star, color: Colors.amber, size: 18),
              SizedBox(width: 8),
              Text(
                "Extra tips",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          for (final dica in dicas)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("•  ", style: TextStyle(color: Colors.grey)),
                  Expanded(
                    child: Text(
                      dica,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}