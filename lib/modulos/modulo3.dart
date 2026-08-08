
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

class Modulo3Page extends StatelessWidget {
  const Modulo3Page({super.key});

  final String moduleId = 'modulo_3';

  // Lista das 5 aulas do módulo sobre Bronze, Brilho e Contorno Corporal.
  static final List<_Aula> _aulas = [
    // Aula 1 - O Bronze Saudável e Protegido
    const _Aula(
      titulo: "01. O Bronze Saudável: tom dourado sem danificar a pele",
      imagem1:
      "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=1000",
      introducao:
      "O bronzeado brasileiro perfeito é aquele que traz vitalidade sem "
          "comprometer a saúde e a elasticidade da pele. Queimaduras de sol causam "
          "descascamento e manchas. Nesta aula, você vai aprender a construir um bronzeado "
          "gradual, uniforme e duradouro utilizando a proteção solar correta e aceleradores naturais.",
      tutorialCasaTitulo: "Preparo da pele pré-sol com acelerador natural",
      tutorialCasaMateriais: [
        "Protetor solar corporal com FPS 30 ou superior",
        "1 colher de sopa de óleo de urucum ou cenoura",
        "Água potável em borrifador",
      ],
      tutorialCasaPassos: [
        "Esfolie o corpo 24 horas antes da exposição ao sol para garantir tom uniforme.",
        "Aplique o protetor solar em todo o corpo 20 minutos antes de sair de casa.",
        "Após a absorção do protetor, espalhe uma leve camada do óleo de urucum/cenoura nas áreas expostas.",
        "Borrife água na pele periodicamente durante a exposição e limite a sessão a 30 minutos por lado.",
      ],
    ),

    // Aula 2 - Iluminação e Óleos Iluminadores Corporais
    const _Aula(
      titulo: "02. O Segredo do Glow: óleos e cremes iluminadores",
      imagem1:
      "https://images.unsplash.com/photo-1522337360788-8b13dee7a37e?w=1000",
      introducao:
      "O 'efeito pele de seda' com brilho dourado e acetinado é a assinatura do "
          "glow tropical. Aprenda a aplicar iluminadores corporais nos pontos estratégicos "
          "de luz do corpo para destacar suas curvas e criar uma aparência radiante "
          "em eventos, fotos ou no dia a dia.",
      imagem2:
      "https://images.unsplash.com/photo-1596462502278-27bfdc403348?w=1000",
      dicaTitulo: "Pontos estratégicos de iluminação corporal",
      passos: [
        "Aplique o iluminador ao longo dos ossos da saboneteira (clavículas) e ombros.",
        "Trace uma linha vertical no centro das pernas e braços para alongar a silhueta.",
        "Espalhe bem as bordas usando as mãos para evitar acúmulos de pigmento ou divisões marcadas.",
        "Deixe o produto secar completamente antes de se vestir para não manchar o tecido.",
      ],
      dicasExtras: [
        "Misture algumas gotas de iluminador líquido no seu hidratante diário para um brilho sutil.",
        "Iluminadores com partículas finas (douradas ou bronzes) funcionam melhor em peles quentes.",
      ],
      tutorialCasaTitulo: "Faça em casa: óleo corporal iluminador dourado",
      tutorialCasaMateriais: [
        "50ml de óleo corporal leve (amêndoas, semente de uva ou coco líquido)",
        "1/2 colher de chá de sombra iluminadora dourada/bronze mineral em pó",
        "1 frasco dosador limpo com tampa",
      ],
      tutorialCasaPassos: [
        "Raspe um pouco da sombra iluminadora até obter um pó bem fino.",
        "Coloque o pó dentro do frasco contendo o óleo vegetal.",
        "Agite energicamente antes de cada uso até espalhar todo o brilho.",
        "Aplique nos braços, ombros e pernas antes de sair.",
      ],
    ),

    // Aula 3 - Contorno Corporal e Ilusão de Óptica
    const _Aula(
      titulo: "03. Contorno Corporal: definindo curvas com luz e sombra",
      imagem1:
      "https://images.unsplash.com/photo-1519415518370-e45b25144578?w=1000",
      introducao:
      "A técnica de luz e sombra (sombra para rebaixar e luz para projetar) "
          "funciona perfeitamente no corpo. É possível realçar a definição dos músculos, "
          "afinar visualmente a cintura e valorizar as pernas utilizando bronzeadores e "
          "autobronzeadores líquidos ou em pó.",
      imagem2:
      "https://images.unsplash.com/photo-1527799820374-dcf8d9d4a388?w=1000",
      dicaTitulo: "Técnica de contorno em 4 passos",
      passos: [
        "Identifique a sombra natural das pernas (laterais internas e externas) e do abdômen.",
        "Com um pincel grande ou esponja, aplique um bronzer 2 tons acima do seu tom de pele nessas cavidades.",
        "Aplique o iluminador no centro das coxas, canelas e centro dos braços.",
        "Esfume em movimentos circulares até eliminar qualquer linha demarcada.",
      ],
      dicasExtras: [
        "Prefira produtos corporais em mousse para maior durabilidade ao longo do dia.",
        "Evite tons de contorno muito alaranjados; prefira subtons neutros ou frios.",
      ],
      tutorialCasaTitulo: "Faça em casa: bronzer corporal instantâneo lavável",
      tutorialCasaMateriais: [
        "2 colheres de sopa do seu creme hidratante corporal preferido",
        "1/2 colher de chá de cacau em pó puro (sem açúcar)",
        "1/4 de colher de chá de micas ou iluminação dourada",
      ],
      tutorialCasaPassos: [
        "Em um pote, misture o hidratante com o cacau em pó até atingir um tom bronze uniforme.",
        "Adicione a mica dourada para dar o acabamento iluminado.",
        "Aplique nas áreas desejadas para dar cor imediata; o efeito sai facilmente no banho.",
      ],
    ),

    // Aula 4 - Autobronzeamento em Casa sem Manchas
    const _Aula(
      titulo: "04. Autobronzeador Perfeito: aplicação uniforme e duradoura",
      imagem1:
      "https://images.unsplash.com/photo-1560750588-73207b1ef5b8?w=1000",
      introducao:
      "Os autobronzeadores garantem uma pele dourada o ano todo, sem necessidade "
          "de exposição solar. Contudo, falhas na aplicação podem gerar manchas nas mãos, "
          "pés e articulações. Nesta aula, você domina o método definitivo para aplicação de "
          "mousse autobronzeadora sem falhas.",
      dicaTitulo: "Passo a passo do autobronzeamento profissional",
      passos: [
        "Faça a esfoliação e depilação 24 horas antes da aplicação.",
        "Hidrate bem apenas as regiões secas: pés, calcanhares, joelhos, cotovelos e mãos.",
        "Use uma luva aplicadora veludada espalhando a mousse em movimentos circulares contínuos.",
        "Passe a luva 'quase seca' (com o resto de produto) nos pés e mãos por último.",
        "Aguarde o tempo de pausa indicado na embalagem antes do primeiro enxágue sem sabonete.",
      ],
      dicasExtras: [
        "Caso fique com manchas nas mãos, use suco de limão ou bicarbonato para remover no mesmo dia.",
        "Banhos muito quentes e esfregar a toalha forte reduzem a duração do autobronzeador.",
      ],
      tutorialCasaTitulo: "Faça em casa: guia de proteção de articulações",
      tutorialCasaMateriais: [
        "1 hidratante denso ou vaselina sólida",
        "Discos de algodão",
      ],
      tutorialCasaPassos: [
        "Antes do autobronzeador, aplique uma camada reforçada de hidratante nos ossos dos tornozelos, joelhos e dobras das mãos.",
        "Aguarde 5 minutos até absorção parcial.",
        "Proceda com a aplicação do autobronzeador normalmente sobre todo o corpo.",
      ],
    ),

    // Aula 5 - Pós-Bronze e Manutenção do Glow
    const _Aula(
      titulo: "05. Manutenção do Glow: hidratação pós-sol e longa duração",
      imagem1:
      "https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=1000",
      introducao:
      "Conquistar o tom dourado é apenas metade do trabalho; mantê-lo radiante "
          "sem descascar ou desbotar exige cuidados pós-bronze. Aprenda a nutrir a pele com "
          "ingredientes calmantes e umectantes que prolongam a cor e preservam a elasticidade.",
      imagem2:
      "https://images.unsplash.com/photo-1512290900673-3d02710343a4?w=1000",
      dicaTitulo: "Rotina de manutenção da cor pós-sol",
      passos: [
        "Tome banho frio ou morno imediatamente após voltar da praia ou piscina.",
        "Utilize sabonetes ultra-hidratantes ou óleos de banho sem esfoliantes.",
        "Aposte em pós-sol com Aloe Vera (Babosa) e Camomila para acalmar os tecidos.",
        "Beba pelo menos 2,5L de água por dia para manter a derme hidratada de dentro para fora.",
      ],
      dicasExtras: [
        "Alimentos ricos em betacaroteno (cenoura, abóbora, mamão) aceleram a produção de melanina.",
        "Evite esfoliações intensas nas 2 semanas seguintes para prolongar a cor.",
      ],
      tutorialCasaTitulo: "Faça em casa: gel pós-sol refrescante de Aloe Vera e Chá Verde",
      tutorialCasaMateriais: [
        "2 colheres de sopa de gel de Aloe Vera (natural ou industrializado puro)",
        "50ml de chá verde bem concentrado e frio",
        "Forma de gelo ou recipiente limpo",
      ],
      tutorialCasaPassos: [
        "Misture o gel de Aloe Vera com o chá verde frio até homogeneizar.",
        "Despeje a mistura em formas de gelo e leve ao congelador.",
        "Após o banho pós-sol, passe um cubo de gelo envolto em um pano fino sobre as áreas avermelhadas.",
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
          "Módulo 3 - Glow Natural: Bronze, Brilho e Contorno Corporal",
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