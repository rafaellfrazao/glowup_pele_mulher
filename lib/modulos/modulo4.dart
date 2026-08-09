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

class Modulo4Page extends StatelessWidget {
  const Modulo4Page({super.key});

  final String moduleId = 'modulo_4';

  // List of the 9 lessons in the Maintenance & Women's Lifestyle module.
  static final List<_Aula> _aulas = [
    // Lesson 1 - Hydration From The Inside Out
    const _Aula(
      titulo: "01. Hydration From The Inside Out",
      imagem1:
      "https://images.unsplash.com/photo-1628692945318-f44a3c346afb?w=1000",
      introducao:
      "No amount of lotion can fully replace what your skin needs from the "
          "inside. Brazilian women rarely go anywhere without a water bottle, and "
          "coconut water (água de coco) is practically a daily ritual, not just a "
          "beach treat — it's seen as one of the simplest ways to stay hydrated and "
          "replenish electrolytes in a hot climate. In this lesson, you'll build a "
          "realistic daily hydration habit instead of just remembering to drink water "
          "when you're already thirsty.",
      imagem2:
      "https://images.unsplash.com/photo-1620752420341-4cd7642568dd?w=1000",
      dicaTitulo: "A simple daily hydration routine",
      passos: [
        "Start your day with a full glass of water before coffee or anything else.",
        "Keep a water bottle somewhere visible — on your desk, your bag, your nightstand.",
        "Aim for about 2 to 2.5 liters (roughly 8-10 cups) of fluids a day, more if it's hot or you're active.",
        "Add coconut water or an herbal tea in the afternoon instead of another sugary drink.",
        "Notice the color of your urine as a rough hydration check — pale yellow is the goal.",
      ],
      dicasExtras: [
        "Watermelon, cucumber and oranges are high water-content snacks that support hydration too.",
        "Caffeine and alcohol both increase fluid loss, so add an extra glass of water alongside them.",
        "Dry lips and dull-looking skin are often early signs of low hydration, not just a skincare issue.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Lime & Mint Infused Water",
      tutorialCasaMateriais: [
        "1 liter of cold water",
        "1/2 lime or lemon, sliced",
        "A handful of fresh mint leaves",
        "A few slices of cucumber (optional)",
      ],
      tutorialCasaPassos: [
        "Add the lime, mint and cucumber slices to a pitcher of cold water.",
        "Let it sit in the fridge for at least 1 hour so the flavors infuse.",
        "Drink throughout the day instead of plain water for a refreshing, flavorful boost.",
        "Refill the same fruit and mint with fresh water once or twice before replacing them.",
      ],
    ),

    // Lesson 2 - Sleep & Skin Recovery
    const _Aula(
      titulo: "02. Sleep & Skin Recovery: your nighttime reset",
      imagem1:
      "https://images.unsplash.com/photo-1584100936595-c0654b55a2e2?w=1000",
      introducao:
      "Skin genuinely repairs and produces collagen while you sleep, which is "
          "why consistent, quality sleep does more for your glow than most products "
          "ever will. Many Brazilian women treat the shower before bed as a wind-down "
          "ritual rather than a chore, using it to physically signal to the body that "
          "the day is over. Pair that with a few small nighttime habits, and you get "
          "noticeably better skin recovery without changing a single product.",
      imagem2:
      "https://images.unsplash.com/photo-1687435703153-88f6bc0cdcff?w=1000",
      dicaTitulo: "Building a real wind-down routine",
      passos: [
        "Pick a consistent bedtime and wake-up time, even on weekends, to regulate your body clock.",
        "Take your evening shower or skincare routine as the official 'day is over' signal.",
        "Dim the lights and put screens away at least 20-30 minutes before bed.",
        "Sleep on a silk or satin pillowcase if you can — it reduces friction on skin and hair overnight.",
        "Try to sleep on your back occasionally to reduce the sleep lines that can form on the face over time.",
      ],
      dicasExtras: [
        "Most adults need 7 to 9 hours of sleep for the body to properly complete its repair cycles.",
        "A cool, dark room generally supports deeper sleep than a warm, bright one.",
        "Consistent poor sleep shows up on skin as dullness and puffiness faster than most people expect.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Lavender & Chamomile Pillow Mist",
      tutorialCasaMateriais: [
        "100ml of distilled or boiled-and-cooled water",
        "1 tablespoon of witch hazel or vodka (helps the oils mix with the water)",
        "8-10 drops of lavender essential oil",
        "A small spray bottle",
      ],
      tutorialCasaPassos: [
        "Add the witch hazel or vodka to the spray bottle first, then the essential oil.",
        "Shake well, then top up with the water and shake again.",
        "Lightly mist your pillow a few minutes before bed, so the fabric isn't damp when you lie down.",
        "Shake the bottle before each use, since the oil naturally separates over time.",
      ],
    ),

    // Lesson 3 - Daily Sun Protection Habits
    const _Aula(
      titulo: "03. Daily Sun Protection: the non-negotiable habit",
      imagem1:
      "https://images.unsplash.com/photo-1562261150-0989084c593e?w=1000",
      introducao:
      "In Brazil, sunscreen isn't something you only think about at the beach — "
          "it's the final step of the morning skincare routine, every single day, "
          "sun or clouds. This one habit alone does more for long-term skin tone, "
          "texture and youthfulness than almost any other product on the market. "
          "This lesson is about making SPF an automatic part of your morning, not an "
          "occasional afterthought.",
      dicaTitulo: "Making sunscreen an actual daily habit",
      passos: [
        "Apply sunscreen as the very last step of your morning skincare, after moisturizer.",
        "Use about a nickel-sized amount for the face alone — most people apply far too little.",
        "Don't forget the ears, the back of the neck, and the hands, which age visibly if skipped.",
        "Reapply every 2 hours if you're outdoors for extended periods, not just once in the morning.",
        "Keep a small SPF stick or compact sunscreen in your bag for easy reapplication during the day.",
      ],
      dicasExtras: [
        "UV rays pass through clouds and windows, so 'it's not sunny today' isn't a reason to skip SPF.",
        "A wide-brim hat and sunglasses add real extra protection on top of sunscreen, not instead of it.",
        "Be skeptical of homemade 'natural sunscreen' recipes online — they don't reliably block UV rays.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Coconut Water After-Sun Cooling Mist",
      tutorialCasaMateriais: [
        "100ml of coconut water (água de coco), a Brazilian staple for cooling down after sun exposure",
        "2 tablespoons of pure aloe vera gel",
        "A small spray bottle",
      ],
      tutorialCasaPassos: [
        "Combine the coconut water and aloe vera gel in the spray bottle and shake well.",
        "Chill in the refrigerator for at least 30 minutes before your first use.",
        "Mist generously over sun-exposed skin throughout the day for an instant, refreshing cooldown.",
        "Keep refrigerated and use within 3 days for the best cooling effect.",
      ],
    ),

    // Lesson 4 - Fabric & Clothing Choices
    const _Aula(
      titulo: "04. Fabric & Clothing Choices That Protect Your Skin",
      imagem1:
      "https://images.unsplash.com/photo-1713881587420-113c1c43e28a?w=1000",
      introducao:
      "What you wear right after a shower, a workout, or a day at the beach "
          "matters more than most people realize. In hot, humid climates, tight "
          "synthetic fabrics trap heat and moisture against the skin, which can lead "
          "to irritation, breakouts on the body, and worsened keratosis pilaris. "
          "Brazilian women tend to favor breathable natural fabrics like cotton and "
          "linen, especially for anything worn close to freshly-moisturized skin.",
      imagem2:
      "https://images.unsplash.com/photo-1596433904500-97b901c5d274?w=1000",
      dicaTitulo: "Choosing fabric with your skin in mind",
      passos: [
        "Let your skin air-dry for a few minutes after a shower before putting on tight clothing.",
        "Choose cotton or linen over synthetic fabrics for everyday wear in hot or humid weather.",
        "Avoid tight leggings or jeans right after exfoliating or shaving to reduce irritation.",
        "Wash new clothes before the first wear to remove any residue that can irritate the skin.",
        "Change out of sweaty workout clothes as soon as possible instead of lounging in them.",
      ],
      dicasExtras: [
        "Breathable fabrics are especially worth prioritizing for underwear and anything worn overnight.",
        "Rough seams and tags rubbing against freshly exfoliated skin are a common, overlooked irritant.",
        "Natural fibers tend to hold onto self-tanner and body oils less than synthetic ones do.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Gentle Skin-Friendly Fabric Rinse",
      tutorialCasaMateriais: [
        "1/2 cup of white vinegar",
        "5-6 drops of a gentle essential oil, like lavender (optional, for scent)",
      ],
      tutorialCasaPassos: [
        "Add the vinegar (and essential oil, if using) to your washing machine's fabric softener compartment.",
        "Wash as usual — the vinegar helps rinse out detergent residue that can irritate sensitive skin.",
        "Use this in place of commercial fabric softener for towels, sheets, and underwear.",
      ],
    ),

    // Lesson 5 - Building A Routine That Sticks
    const _Aula(
      titulo: "05. Building A Routine That Actually Sticks",
      imagem1:
      "https://images.unsplash.com/photo-1544717304-a2db4a7b16ee?w=1000",
      introducao:
      "You now have skin, body, glow, sleep, sun and fabric habits — the real "
          "challenge isn't learning them, it's keeping them going once the initial "
          "motivation fades. In this lesson, you'll pull everything from the program "
          "into one simple, realistic routine, using habit-stacking so new habits "
          "attach themselves to things you already do every day.",
      imagem2:
      "https://images.unsplash.com/photo-1698746043955-42b03ddedfcb?w=1000",
      dicaTitulo: "How to make it stick long-term",
      passos: [
        "Pick one anchor habit you already do daily without fail, like brushing your teeth.",
        "Attach one new habit directly before or after that anchor, instead of adding it randomly.",
        "Start with just 2-3 habits at once instead of trying to do everything from every lesson right away.",
        "Do a quick weekly check-in: what stuck, what didn't, and why.",
        "Add one new habit only once the current ones feel automatic, not effortful.",
      ],
      dicasExtras: [
        "Missing one day isn't failure — the habit only really breaks after several days in a row.",
        "Visual progress (photos every few weeks) tends to keep motivation higher than the mirror alone.",
        "The goal isn't a perfect routine, it's a routine you'll still be doing in six months.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Rosewater & Glycerin Refreshing Mist",
      tutorialCasaMateriais: [
        "100ml of pure rosewater",
        "1 teaspoon of vegetable glycerin",
        "A small spray bottle",
      ],
      tutorialCasaPassos: [
        "Combine the rosewater and glycerin in the spray bottle and shake gently.",
        "Store in the refrigerator for a cooling effect on hot days.",
        "Use it as the closing step of your routine — morning, night, or anytime you need a quick refresh.",
        "Shake lightly before each use, since glycerin can settle over time.",
      ],
    ),

    // Lesson 6 - Skin-Nourishing Foods
    const _Aula(
      titulo: "06. Skin-Nourishing Foods: eating for glow",
      imagem1:
      "https://images.unsplash.com/photo-1490474418585-ba9bad8fd0ea?w=1000",
      introducao:
      "What you eat shows up on your skin just as much as what you apply to "
          "it. Açaí, one of Brazil's most iconic superfoods, is loaded with "
          "antioxidants that help fight the everyday oxidative stress that dulls "
          "skin over time. It's such a staple in Brazil that açaí bowls are a "
          "normal breakfast, not a trend — and it happens to be one of the easiest "
          "beauty-from-within habits you can add to your week.",
      dicaTitulo: "Building a skin-friendly plate",
      passos: [
        "Add one antioxidant-rich fruit to your day, like berries, açaí, or papaya.",
        "Include a source of healthy fats daily, such as avocado, olive oil, or nuts, to support skin elasticity.",
        "Prioritize vitamin C-rich foods like citrus and bell peppers, which support collagen production.",
        "Limit ultra-processed, high-sugar snacks, which are linked to faster visible skin aging.",
        "Treat this as an 80/20 habit, not a strict diet — consistency matters more than perfection.",
      ],
      dicasExtras: [
        "Omega-3 rich foods like flaxseed and walnuts help support the skin's natural barrier.",
        "Green tea is another antioxidant-rich swap for your daily coffee or soda.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Açaí & Berry Glow Bowl",
      tutorialCasaMateriais: [
        "1 packet (100g) of frozen unsweetened açaí pulp",
        "1/2 banana",
        "A handful of mixed berries",
        "2 tablespoons of granola and a drizzle of honey, to top",
      ],
      tutorialCasaPassos: [
        "Blend the frozen açaí pulp with the banana and a splash of water until thick and smooth.",
        "Pour into a bowl.",
        "Top with the mixed berries, granola, and a drizzle of honey.",
        "Enjoy immediately, while the açaí base is still cold and thick.",
      ],
    ),

    // Lesson 7 - Stress & Skin Connection
    const _Aula(
      titulo: "07. Stress & Skin: the mind-body connection",
      imagem1:
      "https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=1000",
      introducao:
      "Chronic stress raises cortisol, and elevated cortisol is directly "
          "linked to breakouts, slower skin healing, and a duller overall "
          "complexion. In Brazil, a warm homemade tea (chá caseiro) is the "
          "go-to remedy for winding down, using herbs passed down through "
          "generations rather than reaching for something artificial. Building a "
          "small daily stress-reset habit does as much for your skin as most "
          "topical products.",
      dicaTitulo: "Quick daily stress-reset habits",
      passos: [
        "Take 5 slow, deep breaths before checking your phone in the morning.",
        "Step outside for a few minutes of natural light and fresh air once a day.",
        "Set a specific time in the evening to make and slowly drink a calming tea.",
        "Notice which moments of your day spike your stress, and build in a 2-minute pause around them.",
      ],
      dicasExtras: [
        "Journaling for even 5 minutes a day is linked to measurably lower stress levels.",
        "Chronic stress and poor sleep tend to amplify each other — Lesson 2's wind-down routine helps here too.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Fennel & Lemongrass Calming Tea",
      tutorialCasaMateriais: [
        "1 teaspoon of fennel seeds (erva-doce)",
        "A handful of fresh lemongrass leaves (capim-santo), a classic Brazilian home-remedy tea",
        "1 teaspoon of honey (optional)",
        "250ml of boiling water",
      ],
      tutorialCasaPassos: [
        "Pour the boiling water over the fennel seeds and lemongrass in a mug or teapot.",
        "Cover and let it steep for 5 to 8 minutes.",
        "Strain into a cup and stir in honey, if using.",
        "Drink warm, ideally as part of your evening wind-down routine.",
      ],
    ),

    // Lesson 8 - Movement & Circulation
    const _Aula(
      titulo: "08. Movement & Circulation: exercise for glowing skin",
      imagem1:
      "https://images.unsplash.com/photo-1518611012118-696072aa579a?w=1000",
      introducao:
      "Beyond fitness goals, movement boosts blood flow, which delivers more "
          "oxygen and nutrients to skin cells and helps carry away toxins. "
          "Brazil's beach culture makes this almost effortless: a walk on the "
          "sand, a beach volleyball game, or a simple functional training "
          "session outdoors are all normal parts of the week. You don't need an "
          "intense gym routine — consistent, light movement is what actually "
          "supports skin over time.",
      dicaTitulo: "Simple ways to move for better circulation",
      passos: [
        "Aim for at least 20-30 minutes of movement most days, even if it's just a brisk walk.",
        "Take short standing or stretching breaks every hour if you sit for long stretches.",
        "Try alternating hot and cold water at the end of your shower to stimulate circulation.",
        "Prioritize consistency over intensity — daily light movement beats occasional intense workouts.",
      ],
      dicasExtras: [
        "Sweating during exercise is a normal, healthy process — just remember to cleanse your skin afterward.",
        "Outdoor movement adds the bonus of natural light exposure, which also supports better sleep.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Mint & Cucumber Cooling Post-Workout Spray",
      tutorialCasaMateriais: [
        "1/2 cucumber, chopped",
        "A handful of fresh mint leaves",
        "200ml of cold water",
        "A small spray bottle",
      ],
      tutorialCasaPassos: [
        "Blend the cucumber, mint, and water together until smooth.",
        "Strain through a fine sieve or cloth to remove the pulp.",
        "Pour the liquid into the spray bottle and chill in the fridge.",
        "Mist over your face and body right after a workout for an instant, cooling refresh.",
      ],
    ),

    // Lesson 9 - Your Complete Self-Care Toolkit
    const _Aula(
      titulo: "09. Your Complete Self-Care Toolkit: putting it all together",
      imagem1:
      "https://images.unsplash.com/photo-1596178060810-72178c5f1c04?w=1000",
      introducao:
      "You've now covered every layer of the Brazilian body care approach: "
          "skin fundamentals, bathing rituals, glow and toning, and the daily "
          "lifestyle habits that support it all. This final lesson brings "
          "everything together into one simple map you can return to anytime, "
          "plus a signature recipe to close out your routine — the kind of "
          "all-purpose cream many Brazilian women keep on their nightstand for "
          "daily use.",
      dicaTitulo: "Your simplified daily and weekly self-care map",
      passos: [
        "Daily: cleansing and hydration (Module 1), sunscreen (Module 4), and water intake (Module 4).",
        "A few times a week: body exfoliation (Module 2) and dry brushing or massage (Module 3).",
        "Weekly: the full home spa bath ritual (Module 2) and the complete toning ritual (Module 3).",
        "Ongoing: sleep, stress, and movement habits running quietly in the background (Module 4).",
      ],
      dicasExtras: [
        "You don't need to do every single recipe every week — pick the ones that fit your life and stay consistent.",
        "Revisit this module anytime your routine starts slipping, it's designed to be your reset point.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Babassu & Coconut Silk Body Cream",
      tutorialCasaMateriais: [
        "4 tablespoons of babassu oil (a lightweight Amazonian oil, prized in Brazil for silky, fast-absorbing hydration)",
        "2 tablespoons of coconut oil",
        "1 teaspoon of cornstarch, for a silkier finish",
        "5 drops of orange or vanilla essential oil (optional)",
      ],
      tutorialCasaPassos: [
        "Gently melt the babassu and coconut oils together in a double boiler or microwave in short bursts.",
        "Let cool slightly, then whisk in the cornstarch until fully combined.",
        "Whip with a hand mixer for 3 to 5 minutes until light and fluffy.",
        "Stir in the essential oil once cooled, and store in a sealed jar as your everyday signature cream.",
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
          "Module 4 - Maintenance & Women's Lifestyle",
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