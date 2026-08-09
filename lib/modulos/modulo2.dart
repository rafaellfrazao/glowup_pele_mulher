import 'package:flutter/material.dart';
import '../../services/user_progress.dart';

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

class Modulo2Page extends StatelessWidget {
  const Modulo2Page({super.key});

  final String moduleId = 'modulo_2';

  // Lista das 8 aulas do módulo sobre Banho e Esfoliação Corporal.
  static final List<_Aula> _aulas = [
    // Aula 1 - O Banho Restaurador
    const _Aula(
      titulo: "01. The Restorative Bath: temperature and preparation",
      imagem1:
          "https://images.unsplash.com/photo-1508759073847-9ca702cec7d2?w=1000",
      introducao:
          "Everything starts before the soap even touches your skin. Very hot water dissolves the lipid layer that protects your skin, leaving it dry, sensitive, and more prone to itching hours after the bath, even though it may seem relaxing at the moment. In this lesson, you will learn the ideal temperature, the right exposure time to water, and how to prepare your body to better absorb everything that comes next: exfoliation, hydration, and oils.",
      tutorialCasaTitulo: "Adjust your temperature and bath rhythm",
      tutorialCasaMateriais: [
        "1 moisturizing liquid soap or neutral bar soap (alcohol-free formula)",
        "1 soft and absorbent body towel",
      ],
      tutorialCasaPassos: [
        "Adjust the shower to lukewarm water, never hot enough to fog up the mirror.",
        "Time it: the ideal bath to preserve your skin lasts between 5 and 10 minutes.",
        "Apply the soap with your hands, prioritizing armpits, groin, and feet, without scrubbing the whole body with force.",
        "When exiting, pat the skin dry with gentle taps, leaving it slightly damp for the next step.",
      ],
    ),

    // Aula 2 - Esfoliação Corporal
    const _Aula(
      titulo: "02. Body Exfoliation: body skin renewal",
      imagem1:
          "https://images.unsplash.com/photo-1533228705496-072ca298b122?w=1000",
      introducao:
          "Body skin is up to 4 times thicker than facial skin, which is why it accumulates many more dead cells in areas like elbows, knees, and heels. Exfoliating correctly unclogs pores, stimulates circulation, and is one of the main factors that differentiates dull skin from skin with a velvety touch and uniform appearance.",
      imagem2:
          "https://images.unsplash.com/photo-1650543679723-de88854178c4?w=1000",
      dicaTitulo: "How to perform correct body exfoliation",
      passos: [
        "Thoroughly wet the body with lukewarm water before applying the exfoliant, this softens the skin.",
        "Apply in circular motions, always from bottom to top, towards the heart.",
        "Spend more time and apply slightly more pressure on knees, elbows, and heels.",
        "Avoid recently shaved areas, sunburned areas, or any open wounds.",
        "Rinse completely until you no longer feel any granules on the skin.",
      ],
      dicasExtras: [
        "Exfoliate the body 1 to 2 times per week; every day attacks the skin's protective barrier.",
        "Never use body exfoliant (coarse grains) on the face, the skin there is much thinner.",
        "Apply moisturizer within 3 minutes after rinsing, that's when the skin absorbs best.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Coffee & Coconut Body Scrub",
      tutorialCasaMateriais: [
        "2 tablespoons of coffee grounds (Brazil is the world's top coffee producer, and coffee grounds are a classic in Brazilian body scrubs)",
        "2 tablespoons of coconut oil or olive oil",
        "1 tablespoon of brown or refined sugar",
      ],
      tutorialCasaPassos: [
        "Mix the coffee grounds, oil, and sugar in a jar until forming a uniform paste.",
        "In the shower, with the body already wet, apply the mixture to legs, arms, and torso.",
        "Massage with circular motions and gentle pressure for 2 to 3 minutes.",
        "Rinse with lukewarm water until removing all coffee and sugar residues.",
        "Store the rest in a closed jar in the refrigerator for up to 5 days.",
      ],
    ),

    // Aula 3 - Selagem da Pele
    const _Aula(
      titulo: "03. Skin Sealing: oils and post-bath moisturizers",
      imagem1:
          "https://images.unsplash.com/photo-1498843053639-170ff2122f35?w=1000",
      introducao:
          "Cleansing and exfoliating are not enough if the skin loses water immediately after. The true secret of luminous skin lies in sealing: the moisturizer replenishes water in the skin, while body oil creates a film that prevents this water from evaporating throughout the day. Using both together, in the right order, is what makes the difference between skin that hydrates for 1 hour and skin that hydrates all day.",
      imagem2:
          "https://images.unsplash.com/photo-1642505173080-94af65712218?w=1000",
      dicaTitulo: "3-minute sealing technique",
      passos: [
        "Turn off the shower and remove only the excess water with your hands, without drying completely.",
        "With skin still damp, apply a generous layer of cream or body lotion.",
        "For extra shine, finish with a few drops of body oil on top of the moisturizer.",
        "Let the product absorb for about 2 minutes before getting dressed.",
      ],
      dicasExtras: [
        "Rinse-free bath oils should be applied directly to clean and still wet skin.",
        "Lotions with urea or shea butter hold more water in very dry skin.",
        "If your skin is oily, prefer lighter oils (like grape seed) in smaller amounts.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Post-Bath Buriti Oil Blend",
      tutorialCasaMateriais: [
        "3 tablespoons of buriti oil (a traditional Brazilian Amazonian oil, rich in vitamin A and natural antioxidants)",
        "1 tablespoon of grape seed oil or sunflower oil",
        "3 drops of lavender or chamomile essential oil (optional)",
      ],
      tutorialCasaPassos: [
        "Mix the oils in a clean, dry jar, shaking well before use.",
        "Immediately after turning off the shower, spread a few drops on legs and arms still damp.",
        "Massage gently and finish drying the body with gentle towel touches.",
      ],
    ),

    // Aula 4 - Cuidados Especiais
    const _Aula(
      titulo: "04. Special Care: roughness and ingrown hairs",
      imagem1:
          "https://images.unsplash.com/photo-1673847401550-fd92f05614b9?w=1000",
      introducao:
          "Rough bumps on the arms (keratosis pilaris) and ingrown hairs on the legs and groin are among the most common complaints about body skin. The good news is that most of these cases improve significantly just by adjusting the bath and shaving routine, without needing any expensive products. In this lesson, you learn to combine physical exfoliation with small habit adjustments to unclog follicles without irritating the skin.",
      dicaTitulo: "Prevention routine in the bath",
      passos: [
        "Never shave dry skin; always use soap, oil, or foam before the blade.",
        "Change the blade frequently: dull blades increase friction and irritation significantly.",
        "Exfoliate the body 24 hours before shaving, never in the same bath as shaving.",
        "Always apply soothing moisturizer immediately after drying the skin, even on non-shaving days.",
        "Prefer to shave in the direction of hair growth to reduce ingrown hairs.",
      ],
      dicasExtras: [
        "Never squeeze or pick at bumps and ingrown hairs, this worsens inflammation.",
        "Very tight clothes immediately after the bath favor ingrown hairs.",
        "Mild acids (like lactic acid) in body lotions help significantly with keratosis pilaris.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Chamomile Soothing Compress",
      tutorialCasaMateriais: [
        "1 sachet or 2 tablespoons of chamomile flowers",
        "200ml of boiling water",
        "1 cotton pad or clean cloth",
      ],
      tutorialCasaPassos: [
        "Prepare a concentrated chamomile tea and let it cool completely in the refrigerator.",
        "After the bath, soak the cotton in the iced tea and apply to irritated areas.",
        "Let it act for 10 minutes to calm redness before putting on any clothes.",
      ],
    ),

    // Aula 5 - Escolha certa de produtos
    const _Aula(
      titulo: "05. Right Choice: soap, shower gel, or bar?",
      imagem1:
          "https://images.unsplash.com/photo-1700107650111-86f1b672ee35?w=1000",
      introducao:
          "Not every soap works for every skin type, and this is the number one cause of dryness that many people don't even notice. Traditional bar soaps usually have a more alkaline pH, which attacks the skin's natural protection; gentle shower gels and syndet soaps (soap-free formula) preserve this barrier better. In this lesson, you learn to choose the right product for your skin type, instead of using the same soap out of habit.",
      imagem2:
          "https://images.unsplash.com/photo-1700107648901-02970a78a2cc?w=1000",
      dicaTitulo: "How to choose your ideal bath product",
      passos: [
        "Dry skin: prefer creamy gels or bath oils, with ingredients like oatmeal or shea butter.",
        "Oily skin: opt for light shower gels that clean without leaving a heavy feeling.",
        "Sensitive skin: look for formulas without strong fragrance and without alcohol in the ingredient list.",
        "Avoid very perfumed soaps in daily use; save them for special occasions.",
        "Test a new product for 1 week before switching permanently, to notice if your skin reacted well.",
      ],
      dicasExtras: [
        "Very foamy soaps don't always clean better; excess foam can dry out more.",
        "Keep bar soap out of direct contact with water between uses, to make it last longer.",
        "If the skin itches or feels tight right after the bath, it's a sign to change products.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Simple pH Test of Your Soap",
      tutorialCasaMateriais: [
        "Your current soap or shower gel",
        "1 pH indicator paper strip (found in pharmacies)",
        "A little water",
      ],
      tutorialCasaPassos: [
        "Dilute a small amount of the product in water until forming a light foam.",
        "Moisten the pH indicator paper strip in this mixture for a few seconds.",
        "Compare the strip color with the pH scale: the closer to 5.5, the gentler for the skin.",
        "If the result is very alkaline (above 8), consider switching to a gentler product.",
      ],
    ),

    // Aula 6 - Cuidado com áreas específicas
    const _Aula(
      titulo: "06. Care with Specific Areas: armpits, groin, and décolletage",
      imagem1:
          "https://images.unsplash.com/photo-1587023705112-34a9b4fe8317?w=1000",
      introducao:
          "Some body regions require different attention than the rest: armpits and groin have skin folds that retain more friction and moisture, which can cause darkening and irritation; the décolletage is one of the first areas to show signs of sun and dryness. In this lesson, you learn specific care for these regions, which are often forgotten in the standard bath routine.",
      dicaTitulo: "Routine for fold and friction areas",
      passos: [
        "Dry armpits and groin very well after the bath, standing moisture favors irritations.",
        "Avoid changing deodorant too frequently; armpit skin sensitizes easily.",
        "Exfoliate these areas more gently and less frequently than the rest of the body.",
        "Treat the décolletage as an extension of the face: apply sunscreen there too, every day.",
        "Prefer clothes in natural fabrics in hotter body areas to reduce friction.",
      ],
      dicasExtras: [
        "Darkening in armpits and groin usually comes from friction and shaving, not lack of hygiene.",
        "Mild acids at night (like low-concentration glycolic acid) help uniformize these areas.",
        "Avoid shaving and exfoliating the same area on the same day, this adds irritation.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Papaya Brightening Scrub",
      tutorialCasaMateriais: [
        "2 tablespoons of mashed ripe papaya (a Brazilian home-remedy classic, its natural enzymes gently brighten skin)",
        "1 tablespoon of unsweetened natural yogurt",
        "1 teaspoon of honey",
      ],
      tutorialCasaPassos: [
        "Mix the ingredients until forming a homogeneous and not too thick paste.",
        "Apply with fingertips to armpits, groin, or décolletage, without pressing hard.",
        "Massage for 30 seconds in light circular motions.",
        "Rinse with lukewarm water and finish with a moisturizer specific for sensitive skin.",
      ],
    ),

    // Aula 7 - Rotina pós-praia e pós-sol
    const _Aula(
      titulo: "07. Post-Beach and Post-Sun Routine: repairing the skin",
      imagem1:
          "https://images.unsplash.com/photo-1669212408959-fdde3b2ed6a2?w=1000",
      introducao:
          "After a day of sun, salt, and sand, the skin becomes drier, more sensitive, and needs different care than a regular bath. Quick rinsing and applying any moisturizer is not enough: the priority at this moment is to soothe, replenish water, and protect the skin barrier before it peels or irritates.",
      imagem2:
          "https://images.unsplash.com/photo-1681091611608-b5e6136f1a5d?w=1000",
      dicaTitulo: "Post-sun bath, step by step",
      passos: [
        "Take a lukewarm (never hot) bath as soon as possible to remove salt, sand, and sunscreen.",
        "Use a very mild soap, without scrubbing the skin with force at this moment.",
        "Avoid exfoliating on the same day of intense sun; wait at least 24 to 48 hours.",
        "Apply a moisturizer with aloe vera or panthenol while the skin is still damp.",
        "Drink plenty of water throughout the day to help replenish the skin's fluids.",
      ],
      dicasExtras: [
        "If the skin is very red or hot to the touch, prioritize cold compresses before moisturizer.",
        "Avoid products with alcohol or strong fragrance on newly sun-exposed skin.",
        "Reinforce moisturizer at night in the following days, the skin continues recovering for several days.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Babosa (Aloe Vera) Soothing Gel",
      tutorialCasaMateriais: [
        "1 fresh aloe vera leaf (called babosa in Brazil, a staple in every beach house after a day in the sun), or 3 tablespoons of pure aloe vera gel",
        "1 teaspoon of coconut oil (optional, for very dry skin)",
      ],
      tutorialCasaPassos: [
        "If using the fresh leaf, cut it in half and remove the transparent pulp with a spoon.",
        "Blend the pulp in a blender until it becomes a homogeneous gel (skip this step if using ready-made gel).",
        "Mix the coconut oil, if using, until well incorporated.",
        "Apply generously to the most sun-exposed areas and let it act without rinsing.",
        "Store the rest in the refrigerator for up to 3 days.",
      ],
    ),

    // Aula 8 - Ritual Spa em Casa
    const _Aula(
      titulo: "08. Home Spa Ritual: the complete self-care bath",
      imagem1:
          "https://images.unsplash.com/photo-1544717304-a2db4a7b16ee?w=1000",
      introducao:
          "It's time to bring together everything you learned in the module into a complete ritual, spa-style, to do once a week. Combining environment, aroma, and all stages of cleansing, exfoliation, and deep hydration in a single session is what guarantees visibly renewed skin, and it's also one of the most effective self-care moments for relaxing the mind.",
      imagem2:
          "https://images.unsplash.com/photo-1676192651289-92ddbb55c26b?w=1000",
      dicaTitulo: "Step by step of the complete weekly ritual",
      passos: [
        "Prepare the environment: dim the lights, play calm music, and separate all products before starting.",
        "Start with body cleansing in lukewarm water, without rushing.",
        "Apply the body exfoliant all over the body, with circular motions and calm.",
        "Rinse completely and perform nutrition with oil or body mask on the driest areas.",
        "Finish with a relaxing self-massage when applying the post-bath cream, shoulders and legs included.",
      ],
      dicasExtras: [
        "Reserve 20 to 30 minutes, once a week, just for this complete ritual.",
        "Avoid the cell phone or any screen during this moment, it's part of the relaxing effect.",
        "Do this ritual always on the same day of the week until it becomes an automatic habit.",
      ],
      tutorialCasaTitulo: "Brazilian Recipe: Coarse Sea Salt & Bay Leaf Foot Bath",
      tutorialCasaMateriais: [
        "1 basin with lukewarm water",
        "2 tablespoons of coarse Brazilian sea salt",
        "2 to 3 bay leaves (louro), a classic ingredient in traditional Brazilian herbal baths (banho de ervas)",
        "1 teaspoon of vegetable oil or 3 drops of essential oil",
      ],
      tutorialCasaPassos: [
        "After the bath, fill the basin with lukewarm water and add the coarse salt, bay leaves, and oil.",
        "Soak your feet and relax for 15 minutes, taking the opportunity to breathe deeply.",
        "Dry your feet well, especially between the toes, and finish with a denser cream.",
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
          "Module 2 - Bath Ritual & Body Exfoliation",
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

  // Card de "Receita: faça em casa" com ingredientes e passos
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
                Icons.spa_outlined,
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
            "Ingredients",
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
            "Recipe Steps",
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
