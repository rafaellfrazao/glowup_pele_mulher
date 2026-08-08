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

class Modulo4Page extends StatelessWidget {
  const Modulo4Page({super.key});

  final String moduleId = 'modulo_4';

  // Lista das 5 aulas do módulo sobre Manutenção e Estilo de Vida Feminino.
  static final List<_Aula> _aulas = [
    // Aula 1 - O Estilo de Vida e o Glow de Dentro para Fora
    const _Aula(
      titulo: "01. O Glow Tropical: hidratação, nutrição e energia",
      imagem1:
      "https://images.unsplash.com/photo-1540420773420-3366772f4999?w=1000",
      introducao:
      "O segredo da beleza da mulher brasileira não está em produtos caros, "
          "mas na consistência de hábitos diários. O clima tropical exige foco constante "
          "na hidratação interna e no consumo de alimentos ricos em antioxidantes que refletem "
          "diretamente no brilho da pele, na força dos cabelos e na disposição ao longo do dia.",
      tutorialCasaTitulo: "Faça em casa: Suco Anti-inflamatório do Glow",
      tutorialCasaMateriais: [
        "200ml de água de coco gelada",
        "1 fatia de abacaxi fresca",
        "1/2 cenoura média",
        "1 pedaço pequeno de gengibre (1 cm)",
        "Suco de 1/2 limão",
      ],
      tutorialCasaPassos: [
        "Bata todos os ingredientes no liquidificador por 1 a 2 minutos.",
        "Evite coar para preservar as fibras essenciais para o intestino.",
        "Tome pela manhã em jejum ou no lanche da tarde para desinchamento e energia.",
      ],
    ),

    // Aula 2 - Assinatura Olfativa e Perfumação em Camadas
    const _Aula(
      titulo: "02. Cheiro de Banho Tomado: o segredo da perfumação prolongada",
      imagem1:
      "https://images.unsplash.com/photo-1592945403244-b3fbafd7f539?w=1000",
      introducao:
      "A marca registrada da brasileira é estar sempre cheirosa, independentemente "
          "do calor. A técnica de perfumação em camadas (layering) consiste em combinar "
          "sabonetes perfumados, hidratantes e body splashes para criar uma aura marcante "
          "e duradoura sem pesar no ambiente.",
      imagem2:
      "https://images.unsplash.com/photo-1547887537-6158d64c35b3?w=1000",
      dicaTitulo: "Rotina de fixação de perfume no calor",
      passos: [
        "Aplique o creme corporal perfumado logo após o banho com a pele levemente úmida.",
        "Borrife o Body Splash ou Deo Colônia no corpo ainda sem roupas.",
        "Foque nos pontos de pulsação quentes: atrás das orelhas, sulco do pescoço, dobras dos cotovelos e pulsos.",
        "Aplique uma bruma perfumada suave no cabelo ou nas roupas a uma distância de 20cm.",
      ],
      dicasExtras: [
        "Pele bem hidratada fixa o perfume até 3 vezes mais tempo do que pele seca.",
        "Vaselina sem cheiro nos pontos de pulsação antes do perfume aumenta a durabilidade.",
      ],
      tutorialCasaTitulo: "Faça em casa: bruma corporal e capilar refrescante",
      tutorialCasaMateriais: [
        "100ml de água desmineralizada ou filtrada",
        "1 colher de chá de óleo de rícino ou glicerina vegetal",
        "10 borrifadas do seu body splash favorito",
        "1 frasco borrifador spray de 100ml",
      ],
      tutorialCasaPassos: [
        "Misture a água e a glicerina no frasco borrifador.",
        "Adicione as borrifadas do body splash e agite bem.",
        "Mantenha na bolsa para retocar o frescor e o perfume nas pernas e braços ao longo do dia.",
      ],
    ),

    // Aula 3 - Cronograma de Cuidados Pessoais e Manutenção Semanal
    const _Aula(
      titulo: "03. Mão de Feita e Autocuidado: o cronograma de manutenção",
      imagem1:
      "https://images.unsplash.com/photo-1604654894610-df63bc536371?w=1000",
      introducao:
      "Unhas bem cuidadas, pele sem pelos encravados e cabelos alinhados não "
          "exigem ida diária ao salão. O segredo é um cronograma simples de manutenção "
          "semanal que encaixa na rotina corrida, garantindo uma aparência impecável "
          "sem esforço excessivo.",
      imagem2:
      "https://images.unsplash.com/photo-1519014816548-bf5fe059798b?w=1000",
      dicaTitulo: "Cronograma simples de manutenção feminina",
      passos: [
        "Domingo: Ritual de esfoliação, máscara capilar e tratamento de unhas.",
        "Quarta-feira: Retoque leve de hidratação, remoção de cutículas e reparador de pontas.",
        "Diário: Proteção solar, hidratação de mãos/pés antes de dormir e óleo de cutículas.",
      ],
      dicasExtras: [
        "Empurrar as cutículas com óleo hidratante em vez de fundir com alicate evita inflamações.",
        "Usar luvas ao lavar louça preserva o esmalte e a hidratação das mãos.",
      ],
      tutorialCasaTitulo: "Faça em casa: banho de parafina e nutrição profunda de mãos e pés",
      tutorialCasaMateriais: [
        "2 colheres de sopa de creme hidratante denso ou manteiga corporal",
        "1 colher de chá de óleo de coco ou amêndoas",
        "2 sacos plásticos limpos",
        "1 par de meias ou luvas",
      ],
      tutorialCasaPassos: [
        "Misture o creme denso com o óleo e aplique generosamente nas mãos ou pés.",
        "Envolva a região com o saco plástico e coloque as meias/luvas por cima.",
        "Deixe agir por 20 minutos enquanto relaxa, permitindo que o calor abra os poros.",
        "Remova o plástico e massageie o excesso na pele sem enxaguar.",
      ],
    ),

    // Aula 4 - Cabelos praianos com movimento e brilho
    const _Aula(
      titulo: "04. Cabelo com Efeito Bossa Nova: movimento e brilho tropical",
      imagem1:
      "https://images.unsplash.com/photo-1522337360788-8b13dee7a37e?w=1000",
      introducao:
      "O cabelo com aspecto natural, praiano e com movimento leve é o "
          "desejo de muitas brasileiras. O segredo está em controlar o frizz sem tirar "
          "a leveza dos fios, combinando acidificação, óleos finalizadores e técnicas de "
          "secagem sem fontes excessivas de calor.",
      dicaTitulo: "Técnica de alinhamento e brilho espelhado",
      passos: [
        "Lave os fios com água morna para fria no último enxágue para selar as cutículas.",
        "Aplique protetor térmico ou leave-in leve nos fios ainda bem úmidos.",
        "Penteie sempre das pontas em direção à raiz com escova de cerdas flexíveis.",
        "Finalize com 2 a 3 gotas de óleo reparador focado apenas nas pontas.",
      ],
      dicasExtras: [
        "Usar fronha ou touca de cetim para dormir reduz até 80% do frizz ao acordar.",
        "Nunca durma com os cabelos úmidos para evitar a quebra e fungos no couro cabeludo.",
      ],
      tutorialCasaTitulo: "Faça em casa: acidificação capilar com vinagre de maçã",
      tutorialCasaMateriais: [
        "100ml de água filtrada",
        "2 colheres de sopa de vinagre de maçã orgânico (pH ácido)",
        "Seu condicionador ou máscara favorita",
      ],
      tutorialCasaPassos: [
        "Após lavar o cabelo com shampoo, misture a água com o vinagre em um recipiente.",
        "Alique a mistura nos fios do comprimento às pontas e deixe agir por 3 minutos.",
        "Aplique a máscara ou condicionador por cima sem enxaguar a mistura.",
        "Deixe agir mais 3 minutos e enxágue abundantemente com água fria.",
      ],
    ),

    // Aula 5 - Autoconfiança, Postura e Elegância Descomplicada
    const _Aula(
      titulo: "05. Elegância sem Esforço: postura, presença e mentalidade",
      imagem1:
      "https://images.unsplash.com/photo-1483985988355-763728e1935b?w=1000",
      introducao:
      "O toque final de qualquer rotina de beleza é a atitude. A beleza da "
          "mulher brasileira é reconhecida mundialmente pela energia, sorriso e pela forma "
          "descomplicada e autêntica de se posicionar. Aprenda a alinhar postura física, "
          "linguagem corporal e rotina de autocuidado para transmitir segurança em qualquer ambiente.",
      imagem2:
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=1000",
      dicaTitulo: "Ajuste de presença e postura em 3 passos",
      passos: [
        "Alinhamento dos ombros: gire os ombros para trás e para baixo, relaxando o pescoço.",
        "Contato visual: mantenha o olhar firme e acolhedor durante conversas.",
        "Respiração consciente: faça pausas de 3 respirações profundas em momentos de ansiedade.",
      ],
      dicasExtras: [
        "Visual limpo e alinhado traz mais elegância do que excesso de acessórios.",
        "A autoconfiança é um hábito diário exercitado através do autocuidado constante.",
      ],
      tutorialCasaTitulo: "Faça em casa: ritual noturno de descompressão e preparação",
      tutorialCasaMateriais: [
        "1 xícara de chá morno (camomila, mulungu ou capim-limão)",
        "Hidratante facial ou óleo para massagem rápida",
      ],
      tutorialCasaPassos: [
        "Desconecte de telas 30 minutos antes de ir para a cama.",
        "Tome seu chá morno prestando atenção no momento presente.",
        "Ao aplicar seu creme noturno, faça massagens circulares na mandíbula para aliviar a tensão do dia.",
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
          "Módulo 4 - Manutenção e Estilo de Vida Feminina",
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
                          concluido ? Icons.check_circle : Icons.radio_button_unchecked,
                          color: concluido ? Colors.green : Colors.white,
                        ),
                        label: Text(
                          concluido ? "Módulo Concluído ✔" : "Marcar como Concluído",
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

  // Card de imagem, no mesmo estilo visual dos outros módulos.
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

  // Bloco de dica + tutorial passo a passo (versão curta / rotina).
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
                "Dica",
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

  // Bloco de tutorial caseiro: materiais + modo de preparo.
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
                "Tutorial: faça em casa",
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

          // O que você vai precisar
          Row(
            children: const [
              Icon(Icons.shopping_basket_outlined, color: Colors.orangeAccent, size: 16),
              SizedBox(width: 6),
              Text(
                "O que você vai precisar",
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

          // Modo de preparo
          Row(
            children: const [
              Icon(Icons.checklist, color: Colors.orangeAccent, size: 16),
              SizedBox(width: 6),
              Text(
                "Modo de preparo",
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

  // Bloco de dicas extras.
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
                "Dicas extras",
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