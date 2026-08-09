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

  // List of the 9 lessons in the Bronze, Glow & Body Contour module.
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

    // Lesson 6 - Anti-Cellulite Ritual
    const _Aula(
      titulo: "06. Anti-Cellulite Ritual: dry brushing & guaraná scrub",
      imagem1:
      "https://images.unsplash.com/photo-1533228705496-072ca298b122?w=1000",
      introducao:
      "Before any cream goes on the skin, Brazilian beauty rituals start with "
          "movement: dry brushing stimulates circulation and lymphatic flow, prepping the "
          "skin to actually absorb what comes next. Paired with guaraná — a caffeine-rich "
          "Amazonian seed found in almost every Brazilian firming product — this combination "
          "is one of the most requested rituals before beach season. It won't erase cellulite "
          "overnight, but consistent use noticeably smooths and firms the skin's texture "
          "over time.",
      dicaTitulo: "Dry brushing technique before the shower",
      passos: [
        "Use a natural-bristle dry brush on completely dry skin, before wetting the body.",
        "Always brush in long strokes toward the heart, starting at the ankles and moving up.",
        "Spend extra time circling the thighs, hips, and back of the arms, the most common cellulite areas.",
        "Keep pressure firm but comfortable, never so hard that it irritates or reddens the skin.",
        "Shower right after to rinse off the loosened dead skin cells.",
      ],
      dicasExtras: [
        "Dry brush 3 to 4 times a week for best results, always before, never after, the shower.",
        "Replace your brush every few months, worn bristles lose their stimulating effect.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Guaraná & Coffee Firming Scrub",
      tutorialCasaMateriais: [
        "2 tablespoons of ground coffee",
        "1 teaspoon of guaraná powder (a caffeine-rich Amazonian seed, a staple in Brazilian firming products)",
        "2 tablespoons of coconut oil",
      ],
      tutorialCasaPassos: [
        "Mix the coffee grounds, guaraná powder, and coconut oil into a thick paste.",
        "After dry brushing, apply to damp thighs and hips in the shower.",
        "Massage in circular motions for 3 minutes, focusing on problem areas.",
        "Rinse thoroughly with lukewarm water and follow with a firming lotion.",
      ],
    ),

    // Lesson 7 - Clay Body Wrap
    const _Aula(
      titulo: "07. Clay Body Wrap: firming and detoxifying with Brazilian clay",
      imagem1:
      "https://images.unsplash.com/photo-1498843053639-170ff2122f35?w=1000",
      introducao:
      "Clay body wraps are a spa staple across Brazil, prized for their ability "
          "to tighten skin, draw out excess fluid, and leave the body feeling noticeably "
          "firmer after just one session. Green and white clays, both mined in Brazil, are "
          "rich in minerals that help temporarily tone the skin's surface while you relax. "
          "This is the kind of ritual many Brazilian women do the week before a big beach "
          "trip or event.",
      imagem2:
      "https://images.unsplash.com/photo-1650543679723-de88854178c4?w=1000",
      dicaTitulo: "How to apply a body wrap correctly",
      passos: [
        "Start with clean, dry skin — take a shower before applying the clay.",
        "Mix the clay according to package instructions, or follow the homemade recipe below.",
        "Apply a thick, even layer to the target area (stomach, thighs, or arms).",
        "Wrap loosely with plastic wrap or a cotton cloth to retain heat while the clay works.",
        "Leave on for 20 to 30 minutes, resting, before rinsing off completely.",
      ],
      dicasExtras: [
        "Never leave clay on until it's fully dry and cracking, this over-dries the skin.",
        "Follow up with a rich body moisturizer immediately after rinsing to replace lost hydration.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Green Clay Firming Wrap",
      tutorialCasaMateriais: [
        "4 tablespoons of green or white cosmetic clay (argila, widely used in Brazilian spas)",
        "Warm water, enough to form a paste",
        "1 tablespoon of honey",
      ],
      tutorialCasaPassos: [
        "Mix the clay with warm water gradually until you get a smooth, spreadable paste.",
        "Stir in the honey for extra softness.",
        "Apply to the target area and wrap loosely with plastic wrap or a cloth.",
        "Rest for 20 to 30 minutes, then rinse off with warm water.",
      ],
    ),

    // Lesson 8 - Lymphatic Drainage Self-Massage
    const _Aula(
      titulo: "08. Lymphatic Drainage Self-Massage: reducing puffiness",
      imagem1:
      "https://images.unsplash.com/photo-1587023705112-34a9b4fe8317?w=1000",
      introducao:
      "Lymphatic drainage massage is practically a national ritual in Brazil, "
          "especially in the days before beach season or a big event, because it helps "
          "reduce fluid retention and leaves the body looking less puffy and more sculpted. "
          "You don't need a professional every time: a simple self-massage routine with the "
          "right oil, done consistently, brings visible results in how light and toned the "
          "legs feel.",
      dicaTitulo: "Self-massage routine for legs and abdomen",
      passos: [
        "Always massage in the direction of the lymphatic flow: from the feet up toward the thighs, and from the abdomen toward the sides.",
        "Use light, sweeping pressure, never deep or painful, this is not the same as a firm sports massage.",
        "Spend about 5 minutes on each leg, and 3 minutes on the abdomen.",
        "Finish by resting for a few minutes with your legs elevated against a wall, if possible.",
      ],
      dicasExtras: [
        "Do this massage 3 to 4 times a week, ideally at night before bed.",
        "Drink plenty of water on massage days to help the body flush out fluids.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Citrus & Rosemary Draining Oil",
      tutorialCasaMateriais: [
        "3 tablespoons of sweet almond oil or grape seed oil",
        "5 drops of rosemary essential oil",
        "Zest of 1 orange or tangerine (a nod to Brazil's abundant citrus groves)",
      ],
      tutorialCasaPassos: [
        "Combine the almond oil, rosemary oil, and citrus zest in a small jar.",
        "Let it sit for at least 2 hours so the oil absorbs the citrus aroma, then strain out the zest if desired.",
        "Warm a small amount between your palms before massaging into legs and abdomen.",
      ],
    ),

    // Lesson 9 - The Complete Toning Ritual
    const _Aula(
      titulo: "09. The Complete Toning Ritual: your weekly beach-ready routine",
      imagem1:
      "https://images.unsplash.com/photo-1676192651289-92ddbb55c26b?w=1000",
      introducao:
      "This final lesson brings everything from the module together into one "
          "complete weekly ritual: brushing, scrubbing, wrapping, and massaging, finished "
          "with a rich toning cream. It's the same sequence many Brazilian women follow "
          "religiously the week leading up to a beach trip, and it works best as a "
          "repeatable Sunday habit rather than a one-time treatment.",
      imagem2:
      "https://images.unsplash.com/photo-1544717304-a2db4a7b16ee?w=1000",
      dicaTitulo: "The full weekly sequence, step by step",
      passos: [
        "Start with 3 minutes of dry brushing over legs, hips, and arms.",
        "Apply the guaraná and coffee scrub in the shower, rinsing thoroughly.",
        "Once out of the shower, apply the clay wrap to your problem area and rest for 20 minutes.",
        "Rinse off the clay, then finish with the citrus and rosemary massage oil using the lymphatic drainage technique.",
        "Close the ritual with a generous layer of toning body cream, recipe below.",
      ],
      dicasExtras: [
        "Reserve about 1 hour once a week for this full ritual, ideally on a quiet Sunday.",
        "Results build over weeks of consistency, not overnight.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Cupuaçu Toning Body Butter",
      tutorialCasaMateriais: [
        "3 tablespoons of cupuaçu butter (a rich Amazonian butter known for improving skin elasticity)",
        "1 tablespoon of coconut oil",
        "5 drops of orange essential oil",
      ],
      tutorialCasaPassos: [
        "Gently melt the cupuaçu butter and coconut oil together in a double boiler or microwave in short bursts.",
        "Let cool slightly, then whip with a hand mixer until light and fluffy.",
        "Stir in the orange essential oil once cooled.",
        "Store in a sealed jar and apply generously after your weekly ritual, or as your daily body moisturizer.",
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