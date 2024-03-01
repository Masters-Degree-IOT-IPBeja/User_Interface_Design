import 'package:flutter/material.dart';
import 'text_format.dart';
import 'styles.dart';

class HelpDialogTexts {
  static const TextAlign _textAlign = TextAlign.left;

  static List<Widget> initialHelpTexts() {
    return [
      TextFormat.formatBold(
        text: 'Bem-vindo ao Localizador de Vagas de Estacionamento Inteligente!\n\n',
        fontSize: Styles.xLarge,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'O Localizador de Vagas de Estacionamento Inteligente é uma solução avançada que utiliza câmeras '
            'e inteligência artificial para detectar a disponibilidade de vagas de estacionamento em '
            'tempo real. Com nosso sistema, você pode:\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Encontrar Vagas Disponíveis Rapidamente: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Não perca tempo procurando vagas de estacionamento. Nosso sistema identifica automaticamente vagas '
            'livres e mostra sua localização em um mapa intuitivo.\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Receber Notificações de Vagas Disponíveis: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Configure alertas personalizados para receber notificações sempre que uma vaga estiver disponível em '
            'áreas de interesse para você. Seja notificado instantaneamente, mesmo enquanto estiver em movimento!\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Ativar o Perímetro de Alerta: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Mantenha-se informado sobre vagas disponíveis à medida que você se desloca. Nosso sistema pode detectar '
            'automaticamente quando você entra no perímetro de um estacionamento e enviar notificações relevantes.\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Obrigado por escolher o Localizador de Vagas de Estacionamento Inteligente!',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
    ];
  }

  static List<Widget> parkingPageHelpTexts() {
    return [
      TextFormat.formatBold(
        text: 'Página de visualização em tempo real dos lugares de Estacionamento!\n\n',
        fontSize: Styles.xLarge,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Esta página exibe informações em tempo real sobre o estacionamento, incluindo a ocupação de vagas e a '
            'localização das vagas disponíveis. Aqui está o que você pode esperar encontrar:\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Mapa do Estacionamento: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'A imagem exibida representa o estacionamento em tempo real, mostrando a localização das vagas disponíveis e ocupadas.\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Indicação de Vagas Disponíveis: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'O mapa do estacionamento destaca as vagas disponíveis onde não há veículos. Isso permite que você identifique facilmente '
            'onde estão as vagas livres.\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Informações sobre Vagas Disponíveis: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Abaixo do mapa do estacionamento, você encontrará um texto que lista as fileiras ou áreas do estacionamento e a quantidade '
            'de vagas disponíveis em cada uma delas. Essas informações são atualizadas em tempo real para refletir a situação atual '
            'do estacionamento.\n\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: 'Como Usar:\n',
        fontSize: Styles.xLarge,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Visualize o Mapa: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Analise o mapa do estacionamento para identificar rapidamente as áreas com vagas disponíveis.\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Obtenha Detalhes: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Leia o texto abaixo do mapa para obter informações específicas sobre as vagas disponíveis em cada '
            'área do estacionamento.\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Receba Notificações: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Se necessário, ative notificações para ser alertado quando novas vagas estiverem disponíveis ou '
            'quando você estiver dentro do perímetro de alerta.\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Esperamos que esta página facilite sua experiência de estacionamento e ajude você a encontrar vagas '
            'disponíveis de forma rápida e eficiente!\n\n'
            'Obrigado por usar nosso sistema de Localização de Vagas de Estacionamento em Tempo Real!',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
    ];
  }

  static List<Widget> notificationSettingsHelpTexts() {
    return [
      TextFormat.formatBold(
        text: 'Configurações de Notificação:\n\n',
        fontSize: Styles.xLarge,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Notificações: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Ative esta opção se deseja receber notificações sobre a disponibilidade de vagas.\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Notificação apenas texto: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Se ativado, você receberá apenas notificações de texto. Caso contrário, também receberá notificações de áudio com a informação.\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Ativar Notificação ao se Aproximar do Estacionamento: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Ao entrar no raio desejado (máximo de 500 metros), você receberá automaticamente a informação se há ou não lugares disponíveis.\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Quantidade de Lugares Disponíveis por Linha: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Ative esta opção se deseja que a notificação inclua informações sobre quais linhas têm e não têm lugares disponíveis.\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Localização dos Lugares Disponíveis por linha: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Esta opção só é possível se "Quantidade de Lugares Disponíveis por Linha" estiver ativado. Essa notificação inclui na informação a localização '
            'do lugar disponivel, até um máximo de 3 lugares por linha. Por exemplo, se a linha A possui 2 lugares disponíveis, a informação incluirá A1 e A5, se possuisse mais de 3 irá ser informado mais de 3 lugares disponiveis.\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Número Mínimo de Vagas para Receber as Notificações: ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Defina o número mínimo de vagas para receber notificações. O mínimo é 3.\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatBold(
        text: '- Qual a distancia do parque que deseja receber notificação (metros): ',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
      TextFormat.formatRegular(
        text: 'Defina a distância desejada para receber notificações ao se aproximar do estacionamento.\n\n',
        fontSize: Styles.medium,
        align: _textAlign,
      ),
    ];
  }
}
