import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ja'),
    Locale('ko'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ru'),
    Locale('zh'),
  ];

  /// No description provided for @home.
  ///
  /// In pt_BR, this message translates to:
  /// **'Início'**
  String get home;

  /// No description provided for @settings.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações'**
  String get settings;

  /// No description provided for @resolution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Resolução'**
  String get resolution;

  /// No description provided for @displayMagnification.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ampliação da área de trabalho'**
  String get displayMagnification;

  /// No description provided for @displayMagnificationDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aumenta toda a área de trabalho para facilitar a leitura. Valores maiores deixam menos espaço livre.'**
  String get displayMagnificationDescription;

  /// No description provided for @magnifyWindowsWithDisplay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aplicar escala às janelas'**
  String get magnifyWindowsWithDisplay;

  /// No description provided for @magnifyWindowsWithDisplayDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Também amplia janelas, texto e controles de acordo com a escala da tela.'**
  String get magnifyWindowsWithDisplayDescription;

  /// No description provided for @theme.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tema'**
  String get theme;

  /// No description provided for @system.
  ///
  /// In pt_BR, this message translates to:
  /// **'Sistema'**
  String get system;

  /// No description provided for @light.
  ///
  /// In pt_BR, this message translates to:
  /// **'Claro'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In pt_BR, this message translates to:
  /// **'Escuro'**
  String get dark;

  /// No description provided for @display.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tela'**
  String get display;

  /// No description provided for @secureDisplay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tela segura'**
  String get secureDisplay;

  /// No description provided for @secureDisplayDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Permitir que conteúdo protegido seja exibido'**
  String get secureDisplayDescription;

  /// No description provided for @mirrorBackend.
  ///
  /// In pt_BR, this message translates to:
  /// **'Método de espelhamento da tela'**
  String get mirrorBackend;

  /// No description provided for @mirrorBackendAuto.
  ///
  /// In pt_BR, this message translates to:
  /// **'Automático (compatibilidade)'**
  String get mirrorBackendAuto;

  /// No description provided for @mirrorBackendAutoDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Usar o melhor método disponível para este dispositivo'**
  String get mirrorBackendAutoDescription;

  /// No description provided for @mirrorBackendWindowManager.
  ///
  /// In pt_BR, this message translates to:
  /// **'WindowManager'**
  String get mirrorBackendWindowManager;

  /// No description provided for @mirrorBackendSurfaceControl.
  ///
  /// In pt_BR, this message translates to:
  /// **'SurfaceControl'**
  String get mirrorBackendSurfaceControl;

  /// No description provided for @mirrorBackendVirtualDisplay.
  ///
  /// In pt_BR, this message translates to:
  /// **'VirtualDisplay'**
  String get mirrorBackendVirtualDisplay;

  /// No description provided for @castMode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Método Google Cast'**
  String get castMode;

  /// No description provided for @castModeSimple.
  ///
  /// In pt_BR, this message translates to:
  /// **'Compatibilidade'**
  String get castModeSimple;

  /// No description provided for @castModeSimpleDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Prioriza a estabilidade da conexão e a compatibilidade com mais telas'**
  String get castModeSimpleDescription;

  /// No description provided for @castModeReceiver.
  ///
  /// In pt_BR, this message translates to:
  /// **'Baixa latência'**
  String get castModeReceiver;

  /// No description provided for @castModeReceiverDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Prioriza controles ágeis durante a transmissão da tela'**
  String get castModeReceiverDescription;

  /// No description provided for @updateAvailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Atualização disponível'**
  String get updateAvailable;

  /// No description provided for @updateAvailableTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Uma nova versão está disponível no GitHub!'**
  String get updateAvailableTitle;

  /// No description provided for @playUpdateAvailableTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Uma atualização está disponível no Google Play'**
  String get playUpdateAvailableTitle;

  /// No description provided for @playUpdateAvailableDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Você pode atualizar para a versão mais recente através do Google Play.'**
  String get playUpdateAvailableDescription;

  /// No description provided for @updateNow.
  ///
  /// In pt_BR, this message translates to:
  /// **'Atualizar agora'**
  String get updateNow;

  /// No description provided for @checkForUpdates.
  ///
  /// In pt_BR, this message translates to:
  /// **'Verificar atualizações'**
  String get checkForUpdates;

  /// No description provided for @checkingForUpdates.
  ///
  /// In pt_BR, this message translates to:
  /// **'Obtendo informações de atualização'**
  String get checkingForUpdates;

  /// No description provided for @updateNotChecked.
  ///
  /// In pt_BR, this message translates to:
  /// **'As informações de atualização ainda não foram obtidas'**
  String get updateNotChecked;

  /// No description provided for @upToDate.
  ///
  /// In pt_BR, this message translates to:
  /// **'Você está com a versão mais recente'**
  String get upToDate;

  /// No description provided for @updateCheckFailed.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível obter as informações de atualização'**
  String get updateCheckFailed;

  /// No description provided for @currentVersion.
  ///
  /// In pt_BR, this message translates to:
  /// **'Atual'**
  String get currentVersion;

  /// No description provided for @latestVersion.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mais recente'**
  String get latestVersion;

  /// No description provided for @openOnGitHub.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abrir no GitHub'**
  String get openOnGitHub;

  /// No description provided for @close.
  ///
  /// In pt_BR, this message translates to:
  /// **'Fechar'**
  String get close;

  /// No description provided for @deviceInfo.
  ///
  /// In pt_BR, this message translates to:
  /// **'Informações do dispositivo'**
  String get deviceInfo;

  /// No description provided for @desktopMode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Modo desktop em uso'**
  String get desktopMode;

  /// No description provided for @accessibilitySettings.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações de acessibilidade'**
  String get accessibilitySettings;

  /// No description provided for @accessibilityDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abrir as configurações do serviço da Área de Trabalho Móvel'**
  String get accessibilityDescription;

  /// No description provided for @appInfo.
  ///
  /// In pt_BR, this message translates to:
  /// **'Informações do app'**
  String get appInfo;

  /// No description provided for @appInfoEmbeddedBinder.
  ///
  /// In pt_BR, this message translates to:
  /// **'Binder embutido'**
  String get appInfoEmbeddedBinder;

  /// No description provided for @appInfoEmbeddedBinderIncluded.
  ///
  /// In pt_BR, this message translates to:
  /// **'Incluído nesta compilação'**
  String get appInfoEmbeddedBinderIncluded;

  /// No description provided for @appInfoEmbeddedBinderNotIncluded.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não incluído nesta compilação'**
  String get appInfoEmbeddedBinderNotIncluded;

  /// No description provided for @appInfoEmbeddedBinderProvider.
  ///
  /// In pt_BR, this message translates to:
  /// **'Status de uso'**
  String get appInfoEmbeddedBinderProvider;

  /// No description provided for @appInfoEmbeddedBinderSelected.
  ///
  /// In pt_BR, this message translates to:
  /// **'Em uso'**
  String get appInfoEmbeddedBinderSelected;

  /// No description provided for @appInfoEmbeddedBinderStandby.
  ///
  /// In pt_BR, this message translates to:
  /// **'Usando um provedor externo'**
  String get appInfoEmbeddedBinderStandby;

  /// No description provided for @appInfoEmbeddedBinderConnection.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conexão com o binder'**
  String get appInfoEmbeddedBinderConnection;

  /// No description provided for @appInfoEmbeddedBinderPermission.
  ///
  /// In pt_BR, this message translates to:
  /// **'Permissão da Área de Trabalho Móvel'**
  String get appInfoEmbeddedBinderPermission;

  /// No description provided for @appInfoEmbeddedBinderNotifications.
  ///
  /// In pt_BR, this message translates to:
  /// **'Permissão de notificação'**
  String get appInfoEmbeddedBinderNotifications;

  /// No description provided for @appInfoStatusConnected.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conectado'**
  String get appInfoStatusConnected;

  /// No description provided for @appInfoStatusDisconnected.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desconectado'**
  String get appInfoStatusDisconnected;

  /// No description provided for @appInfoStatusGranted.
  ///
  /// In pt_BR, this message translates to:
  /// **'Concedido'**
  String get appInfoStatusGranted;

  /// No description provided for @appInfoStatusNotGranted.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não concedido'**
  String get appInfoStatusNotGranted;

  /// No description provided for @licenses.
  ///
  /// In pt_BR, this message translates to:
  /// **'Licenças de código aberto'**
  String get licenses;

  /// No description provided for @licensesDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ver as licenças do Flutter e das dependências'**
  String get licensesDescription;

  /// No description provided for @landscape.
  ///
  /// In pt_BR, this message translates to:
  /// **'Paisagem'**
  String get landscape;

  /// No description provided for @portrait.
  ///
  /// In pt_BR, this message translates to:
  /// **'Retrato'**
  String get portrait;

  /// No description provided for @stopped.
  ///
  /// In pt_BR, this message translates to:
  /// **'Parado'**
  String get stopped;

  /// No description provided for @running.
  ///
  /// In pt_BR, this message translates to:
  /// **'Em execução'**
  String get running;

  /// No description provided for @start.
  ///
  /// In pt_BR, this message translates to:
  /// **'Iniciar'**
  String get start;

  /// No description provided for @stop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Parar'**
  String get stop;

  /// No description provided for @customAdd.
  ///
  /// In pt_BR, this message translates to:
  /// **'Adicionar resolução personalizada'**
  String get customAdd;

  /// No description provided for @editResolution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Editar resolução'**
  String get editResolution;

  /// No description provided for @add.
  ///
  /// In pt_BR, this message translates to:
  /// **'Adicionar'**
  String get add;

  /// No description provided for @save.
  ///
  /// In pt_BR, this message translates to:
  /// **'Salvar'**
  String get save;

  /// No description provided for @deleteResolution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Excluir esta resolução'**
  String get deleteResolution;

  /// No description provided for @width.
  ///
  /// In pt_BR, this message translates to:
  /// **'Largura'**
  String get width;

  /// No description provided for @height.
  ///
  /// In pt_BR, this message translates to:
  /// **'Altura'**
  String get height;

  /// No description provided for @protectedContent.
  ///
  /// In pt_BR, this message translates to:
  /// **'Permitir que conteúdo protegido seja exibido'**
  String get protectedContent;

  /// No description provided for @version.
  ///
  /// In pt_BR, this message translates to:
  /// **'Versão 1.0.0'**
  String get version;

  /// No description provided for @setupWelcome.
  ///
  /// In pt_BR, this message translates to:
  /// **'Boas-vindas à Área de Trabalho Móvel.'**
  String get setupWelcome;

  /// No description provided for @setupTagline.
  ///
  /// In pt_BR, this message translates to:
  /// **'Um ambiente de desktop completo no seu celular.'**
  String get setupTagline;

  /// No description provided for @setupBegin.
  ///
  /// In pt_BR, this message translates to:
  /// **'Iniciar'**
  String get setupBegin;

  /// No description provided for @setupPhaseTerms.
  ///
  /// In pt_BR, this message translates to:
  /// **'Termos de uso'**
  String get setupPhaseTerms;

  /// No description provided for @setupPhaseDriver.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conectar a Área de Trabalho Móvel'**
  String get setupPhaseDriver;

  /// No description provided for @setupTutorialTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Visão geral da configuração'**
  String get setupTutorialTitle;

  /// No description provided for @setupPhaseAccessibility.
  ///
  /// In pt_BR, this message translates to:
  /// **'Acessibilidade'**
  String get setupPhaseAccessibility;

  /// No description provided for @setupPhaseReady.
  ///
  /// In pt_BR, this message translates to:
  /// **'Pronto'**
  String get setupPhaseReady;

  /// No description provided for @setupPhaseShizuku.
  ///
  /// In pt_BR, this message translates to:
  /// **'Shizuku'**
  String get setupPhaseShizuku;

  /// No description provided for @setupPhaseDevice.
  ///
  /// In pt_BR, this message translates to:
  /// **'Verificar o dispositivo'**
  String get setupPhaseDevice;

  /// No description provided for @setupPhaseDemo.
  ///
  /// In pt_BR, this message translates to:
  /// **'Experimente os controles'**
  String get setupPhaseDemo;

  /// No description provided for @back.
  ///
  /// In pt_BR, this message translates to:
  /// **'Voltar'**
  String get back;

  /// No description provided for @review.
  ///
  /// In pt_BR, this message translates to:
  /// **'Revisar'**
  String get review;

  /// No description provided for @reviewThreeFingerGesture.
  ///
  /// In pt_BR, this message translates to:
  /// **'Revisar o gesto de três dedos'**
  String get reviewThreeFingerGesture;

  /// No description provided for @continueLabel.
  ///
  /// In pt_BR, this message translates to:
  /// **'Continuar'**
  String get continueLabel;

  /// No description provided for @done.
  ///
  /// In pt_BR, this message translates to:
  /// **'Concluído'**
  String get done;

  /// No description provided for @incomplete.
  ///
  /// In pt_BR, this message translates to:
  /// **'Incompleto'**
  String get incomplete;

  /// No description provided for @setupSystemTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Usa recursos do sistema'**
  String get setupSystemTitle;

  /// No description provided for @setupSystemDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'A Área de Trabalho Móvel usa o Shizuku e o ADB para controlar telas virtuais, orientação da tela, entrada e a interface do sistema. A API AccessibilityService exibe e opera a sobreposição da área de trabalho, encaminha toques, ponteiro e navegação solicitados por você e restaura a interface do aparelho ao fim da sessão. Nenhum dado de acessibilidade é coletado, armazenado ou compartilhado.'**
  String get setupSystemDescription;

  /// No description provided for @setupTutorialDriverTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conecte a Área de Trabalho Móvel ao serviço de acesso'**
  String get setupTutorialDriverTitle;

  /// No description provided for @setupTutorialDriverDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'O pareamento é necessário apenas na primeira vez. Vamos orientar você nas etapas necessárias.'**
  String get setupTutorialDriverDescription;

  /// No description provided for @setupTutorialAccessibilityTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ative a acessibilidade'**
  String get setupTutorialAccessibilityTitle;

  /// No description provided for @setupTutorialAccessibilityDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'A Área de Trabalho Móvel usa a acessibilidade para exibir e controlar o ambiente de desktop. Na tela de configurações, abra Apps instalados e ative a Área de Trabalho Móvel.'**
  String get setupTutorialAccessibilityDescription;

  /// No description provided for @setupTutorialAccessibilityButton.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abrir configurações de acessibilidade'**
  String get setupTutorialAccessibilityButton;

  /// No description provided for @setupTutorialAccessibilityEnabled.
  ///
  /// In pt_BR, this message translates to:
  /// **'Permissão de acessibilidade'**
  String get setupTutorialAccessibilityEnabled;

  /// No description provided for @accessibilityDisclosureTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aviso sobre o serviço de acessibilidade'**
  String get accessibilityDisclosureTitle;

  /// No description provided for @accessibilityDisclosureBody.
  ///
  /// In pt_BR, this message translates to:
  /// **'A Área de Trabalho Móvel usa o Serviço de Acessibilidade para exibir e controlar a área de trabalho, detectar o campo de entrada ativo, mover apps abertos pelas notificações e oferecer controle por teclado e mouse.\n\nO serviço pode acessar os apps e janelas exibidos na tela, eventos de interação, o campo de texto em foco e seu conteúdo, além das entradas de teclado e mouse. Essas informações são processadas somente no seu aparelho para oferecer os recursos do app. A Área de Trabalho Móvel não coleta, armazena, transmite nem compartilha essas informações com terceiros.'**
  String get accessibilityDisclosureBody;

  /// No description provided for @accessibilityDisclosureAgree.
  ///
  /// In pt_BR, this message translates to:
  /// **'Concordar e abrir configurações'**
  String get accessibilityDisclosureAgree;

  /// No description provided for @accessibilityDisclosureDecline.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não concordo'**
  String get accessibilityDisclosureDecline;

  /// No description provided for @setupTutorialReadyTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tudo pronto para usar a Área de Trabalho Móvel'**
  String get setupTutorialReadyTitle;

  /// No description provided for @setupTutorialReadyDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Depois de concluir essas duas etapas, é só começar a usar a Área de Trabalho Móvel.'**
  String get setupTutorialReadyDescription;

  /// No description provided for @setupDisclaimer.
  ///
  /// In pt_BR, this message translates to:
  /// **'O desenvolvedor não se responsabiliza por defeitos, perda de dados ou impactos no funcionamento do aparelho causados por diferenças de implementação do aparelho ou do sistema, atualizações do sistema, conflitos com outros apps etc. Leia e entenda este aviso antes de usar.'**
  String get setupDisclaimer;

  /// No description provided for @setupShizukuTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Preparar o Shizuku'**
  String get setupShizukuTitle;

  /// No description provided for @setupShizukuDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'A Área de Trabalho Móvel usa o Shizuku para acessar funções do sistema com segurança.'**
  String get setupShizukuDescription;

  /// No description provided for @setupInstallShizuku.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instalar o Shizuku'**
  String get setupInstallShizuku;

  /// No description provided for @setupConfigureShizuku.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurar o Shizuku'**
  String get setupConfigureShizuku;

  /// No description provided for @setupShizukuHint.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abra o Shizuku, siga na ordem os passos em \"Pareamento\" e depois inicie o Shizuku.'**
  String get setupShizukuHint;

  /// No description provided for @setupOpenShizuku.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abrir o Shizuku'**
  String get setupOpenShizuku;

  /// No description provided for @setupValidate.
  ///
  /// In pt_BR, this message translates to:
  /// **'Terminou a configuração? Verifique agora'**
  String get setupValidate;

  /// No description provided for @setupDextopPermission.
  ///
  /// In pt_BR, this message translates to:
  /// **'Permissão da Área de Trabalho Móvel'**
  String get setupDextopPermission;

  /// No description provided for @setupInstallPlay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instalar pelo Google Play'**
  String get setupInstallPlay;

  /// No description provided for @setupAllowPermission.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conceder permissão'**
  String get setupAllowPermission;

  /// No description provided for @setupProviderChoiceTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Escolha um serviço de privilégio'**
  String get setupProviderChoiceTitle;

  /// No description provided for @setupProviderChoiceDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Há mais de um serviço compatível com o Shizuku instalado. Escolha qual deles a Área de Trabalho Móvel deve usar.'**
  String get setupProviderChoiceDescription;

  /// No description provided for @setupUseStellar.
  ///
  /// In pt_BR, this message translates to:
  /// **'Stellar (recomendado)'**
  String get setupUseStellar;

  /// No description provided for @setupUseShizuku.
  ///
  /// In pt_BR, this message translates to:
  /// **'Shizuku'**
  String get setupUseShizuku;

  /// No description provided for @setupRunningAsRoot.
  ///
  /// In pt_BR, this message translates to:
  /// **'O serviço está em execução como root'**
  String get setupRunningAsRoot;

  /// No description provided for @setupRootVerified.
  ///
  /// In pt_BR, this message translates to:
  /// **'Confirmamos que o Shizuku está rodando com privilégios de root. Agora conceda a permissão à Área de Trabalho Móvel.'**
  String get setupRootVerified;

  /// No description provided for @setupRootNotRunning.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível confirmar que o Shizuku está rodando com privilégios de root. Inicie-o como root e tente novamente.'**
  String get setupRootNotRunning;

  /// No description provided for @setupQuestionOpen.
  ///
  /// In pt_BR, this message translates to:
  /// **'Você já abriu o Shizuku?'**
  String get setupQuestionOpen;

  /// No description provided for @setupQuestionPair.
  ///
  /// In pt_BR, this message translates to:
  /// **'Você concluiu todos os passos listados em \"Pareamento\"?'**
  String get setupQuestionPair;

  /// No description provided for @setupQuestionStart.
  ///
  /// In pt_BR, this message translates to:
  /// **'Você tocou em \"Iniciar\" no Shizuku e confirmou que aparece \"O Shizuku está em execução\"?'**
  String get setupQuestionStart;

  /// No description provided for @yes.
  ///
  /// In pt_BR, this message translates to:
  /// **'Sim'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não'**
  String get no;

  /// No description provided for @setupVerified.
  ///
  /// In pt_BR, this message translates to:
  /// **'A configuração do Shizuku foi verificada'**
  String get setupVerified;

  /// No description provided for @setupAccessVerified.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configuração da permissão de acesso verificada'**
  String get setupAccessVerified;

  /// No description provided for @setupVerificationFailed.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível confirmar que o Shizuku está configurado e em execução. Conclua os passos no Shizuku e tente novamente.'**
  String get setupVerificationFailed;

  /// No description provided for @setupPermissionCheckFailed.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível verificar as permissões para o Shizuku'**
  String get setupPermissionCheckFailed;

  /// No description provided for @setupDeviceTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configuração neste dispositivo'**
  String get setupDeviceTitle;

  /// No description provided for @model.
  ///
  /// In pt_BR, this message translates to:
  /// **'Modelo'**
  String get model;

  /// No description provided for @vendor.
  ///
  /// In pt_BR, this message translates to:
  /// **'Fabricante'**
  String get vendor;

  /// No description provided for @desktopUi.
  ///
  /// In pt_BR, this message translates to:
  /// **'Interface de área de trabalho'**
  String get desktopUi;

  /// No description provided for @detectedResolution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Resolução detectada automaticamente'**
  String get detectedResolution;

  /// No description provided for @automaticResolution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Automático'**
  String get automaticResolution;

  /// No description provided for @loadingLabel.
  ///
  /// In pt_BR, this message translates to:
  /// **'Carregando...'**
  String get loadingLabel;

  /// No description provided for @setupDeviceDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Essas informações são usadas para definir a resolução inicial e os controles de desktop específicos do aparelho.'**
  String get setupDeviceDescription;

  /// No description provided for @setupGestureTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abra o painel de controle com um gesto'**
  String get setupGestureTitle;

  /// No description provided for @setupGestureDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Coloque três dedos nos três círculos abaixo ao mesmo tempo.'**
  String get setupGestureDescription;

  /// No description provided for @setupInstallGitHub.
  ///
  /// In pt_BR, this message translates to:
  /// **'Baixar do GitHub'**
  String get setupInstallGitHub;

  /// No description provided for @setupGestureReviewed.
  ///
  /// In pt_BR, this message translates to:
  /// **'Você já conferiu os novos gestos.'**
  String get setupGestureReviewed;

  /// No description provided for @setupGestureReview.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ver a demonstração de novo'**
  String get setupGestureReview;

  /// No description provided for @setupGestureStart.
  ///
  /// In pt_BR, this message translates to:
  /// **'Iniciar demonstração'**
  String get setupGestureStart;

  /// No description provided for @setupGestureLandscape.
  ///
  /// In pt_BR, this message translates to:
  /// **'Paisagem\nDeslize três dedos para a direita a partir da borda esquerda'**
  String get setupGestureLandscape;

  /// No description provided for @setupGesturePortrait.
  ///
  /// In pt_BR, this message translates to:
  /// **'Retrato\nDeslize três dedos para baixo a partir da borda superior'**
  String get setupGesturePortrait;

  /// No description provided for @setupGestureNext.
  ///
  /// In pt_BR, this message translates to:
  /// **'Próximo'**
  String get setupGestureNext;

  /// No description provided for @uiTwoFingerTap.
  ///
  /// In pt_BR, this message translates to:
  /// **'Toque com dois dedos'**
  String get uiTwoFingerTap;

  /// No description provided for @ui3FingerTap.
  ///
  /// In pt_BR, this message translates to:
  /// **'Toque com três dedos'**
  String get ui3FingerTap;

  /// No description provided for @ui4Divisions.
  ///
  /// In pt_BR, this message translates to:
  /// **'Dividir em quatro'**
  String get ui4Divisions;

  /// No description provided for @uiDextopIsReady.
  ///
  /// In pt_BR, this message translates to:
  /// **'A Área de Trabalho Móvel está pronta'**
  String get uiDextopIsReady;

  /// No description provided for @uiDextopStopping.
  ///
  /// In pt_BR, this message translates to:
  /// **'Encerrando a Área de Trabalho Móvel'**
  String get uiDextopStopping;

  /// No description provided for @uiStopDextop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Parar a Área de Trabalho Móvel'**
  String get uiStopDextop;

  /// No description provided for @uiDextopCanBeRestarted.
  ///
  /// In pt_BR, this message translates to:
  /// **'A Área de Trabalho Móvel pode ser retomada'**
  String get uiDextopCanBeRestarted;

  /// No description provided for @uiOpenDextop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abrir a Área de Trabalho Móvel'**
  String get uiOpenDextop;

  /// No description provided for @uiCreateADextopSession.
  ///
  /// In pt_BR, this message translates to:
  /// **'Criar uma sessão da Área de Trabalho Móvel'**
  String get uiCreateADextopSession;

  /// No description provided for @uiDextopWorkspaceJson.
  ///
  /// In pt_BR, this message translates to:
  /// **'JSON do espaço de trabalho'**
  String get uiDextopWorkspaceJson;

  /// No description provided for @uiPerformanceDisplayOnDextop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostrar sobreposição de desempenho na Área de Trabalho Móvel'**
  String get uiPerformanceDisplayOnDextop;

  /// No description provided for @uiDoNotSleepWhileRunningDextop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Manter a tela ligada enquanto a Área de Trabalho Móvel estiver em execução'**
  String get uiDoNotSleepWhileRunningDextop;

  /// No description provided for @uiRealTimeDisplayOfFpsMemoryPower.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostrar FPS, memória, uso de energia e bateria em tempo real'**
  String get uiRealTimeDisplayOfFpsMemoryPower;

  /// No description provided for @uiCouldNotLoadJson.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível carregar o JSON'**
  String get uiCouldNotLoadJson;

  /// No description provided for @uiSecureSettingsPermission.
  ///
  /// In pt_BR, this message translates to:
  /// **'Permissão de configurações seguras'**
  String get uiSecureSettingsPermission;

  /// No description provided for @uiAllowShizukuPermissions.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conceder permissões do Shizuku'**
  String get uiAllowShizukuPermissions;

  /// No description provided for @uiInstallShizuku.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instalar o Shizuku'**
  String get uiInstallShizuku;

  /// No description provided for @uiCheckingShizukuConnection.
  ///
  /// In pt_BR, this message translates to:
  /// **'Verificando a conexão com o Shizuku'**
  String get uiCheckingShizukuConnection;

  /// No description provided for @uiShizukuConnection.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conexão com o Shizuku'**
  String get uiShizukuConnection;

  /// No description provided for @uiCopy.
  ///
  /// In pt_BR, this message translates to:
  /// **' (cópia)'**
  String get uiCopy;

  /// No description provided for @uiOthers.
  ///
  /// In pt_BR, this message translates to:
  /// **'Outros'**
  String get uiOthers;

  /// No description provided for @uiAccessibilityOverlay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Sobreposição de acessibilidade'**
  String get uiAccessibilityOverlay;

  /// No description provided for @uiAccessibilityServices.
  ///
  /// In pt_BR, this message translates to:
  /// **'Serviço de acessibilidade'**
  String get uiAccessibilityServices;

  /// No description provided for @uiAppNotFound.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aplicativo não encontrado'**
  String get uiAppNotFound;

  /// No description provided for @uiAppsAndWorkspace.
  ///
  /// In pt_BR, this message translates to:
  /// **'Apps e espaços de trabalho'**
  String get uiAppsAndWorkspace;

  /// No description provided for @uiLaunchTheAppAndConfigureYourWorkspace.
  ///
  /// In pt_BR, this message translates to:
  /// **'Inicie aplicativos e configure espaços de trabalho'**
  String get uiLaunchTheAppAndConfigureYourWorkspace;

  /// No description provided for @uiRestartTheApp.
  ///
  /// In pt_BR, this message translates to:
  /// **'Reiniciar o app'**
  String get uiRestartTheApp;

  /// No description provided for @uiSearchApp.
  ///
  /// In pt_BR, this message translates to:
  /// **'Pesquisar apps'**
  String get uiSearchApp;

  /// No description provided for @uiAppMemory.
  ///
  /// In pt_BR, this message translates to:
  /// **'Memória do app'**
  String get uiAppMemory;

  /// No description provided for @uiAppLauncher.
  ///
  /// In pt_BR, this message translates to:
  /// **'Menu de apps'**
  String get uiAppLauncher;

  /// No description provided for @uiAppLauncherSettings.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações do menu de apps'**
  String get uiAppLauncherSettings;

  /// No description provided for @uiAppLaunchFunction.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abertura de apps'**
  String get uiAppLaunchFunction;

  /// No description provided for @uiImport.
  ///
  /// In pt_BR, this message translates to:
  /// **'Importar'**
  String get uiImport;

  /// No description provided for @uiExport.
  ///
  /// In pt_BR, this message translates to:
  /// **'Exportar'**
  String get uiExport;

  /// No description provided for @uiCursor.
  ///
  /// In pt_BR, this message translates to:
  /// **'Cursor'**
  String get uiCursor;

  /// No description provided for @uiCancel.
  ///
  /// In pt_BR, this message translates to:
  /// **'Cancelar'**
  String get uiCancel;

  /// No description provided for @uiQuickSettingsTile.
  ///
  /// In pt_BR, this message translates to:
  /// **'Bloco de Configurações rápidas'**
  String get uiQuickSettingsTile;

  /// No description provided for @uiGesture.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gesto'**
  String get uiGesture;

  /// No description provided for @uiSecondaryIme.
  ///
  /// In pt_BR, this message translates to:
  /// **'Teclado (IME) secundário'**
  String get uiSecondaryIme;

  /// No description provided for @uiSecureDisplayFoldable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tela segura, método de espelhamento, dobráveis'**
  String get uiSecureDisplayFoldable;

  /// No description provided for @uiSecurity.
  ///
  /// In pt_BR, this message translates to:
  /// **'Segurança'**
  String get uiSecurity;

  /// No description provided for @topologyTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Disposição das telas'**
  String get topologyTitle;

  /// No description provided for @topologyArrangeDisplays.
  ///
  /// In pt_BR, this message translates to:
  /// **'Disposição das telas'**
  String get topologyArrangeDisplays;

  /// No description provided for @topologySummary.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ajuste a disposição de acordo com a posição física dos monitores'**
  String get topologySummary;

  /// No description provided for @topologyDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Arraste as telas para reorganizá-las. Posicione cada uma de forma que o ponteiro passe de uma tela para outra do mesmo jeito que elas estão na mesa.'**
  String get topologyDescription;

  /// No description provided for @topologyApply.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aplicar'**
  String get topologyApply;

  /// No description provided for @topologyApplied.
  ///
  /// In pt_BR, this message translates to:
  /// **'Disposição das telas aplicada'**
  String get topologyApplied;

  /// No description provided for @topologyIdentify.
  ///
  /// In pt_BR, this message translates to:
  /// **'Identificar'**
  String get topologyIdentify;

  /// No description provided for @topologyRefresh.
  ///
  /// In pt_BR, this message translates to:
  /// **'Atualizar'**
  String get topologyRefresh;

  /// No description provided for @topologyReset.
  ///
  /// In pt_BR, this message translates to:
  /// **'Redefinir'**
  String get topologyReset;

  /// No description provided for @topologyBuiltInScreen.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tela do aparelho'**
  String get topologyBuiltInScreen;

  /// No description provided for @displayIncludePhoneSummary.
  ///
  /// In pt_BR, this message translates to:
  /// **'Permite mover apps e o ponteiro do mouse entre as telas'**
  String get displayIncludePhoneSummary;

  /// No description provided for @displayAutoHideTaskbarSummary.
  ///
  /// In pt_BR, this message translates to:
  /// **'Esconder automaticamente a barra de tarefas da área de trabalho quando não estiver em uso'**
  String get displayAutoHideTaskbarSummary;

  /// No description provided for @displayForceInternal120Hz.
  ///
  /// In pt_BR, this message translates to:
  /// **'Saída na taxa de atualização máxima'**
  String get displayForceInternal120Hz;

  /// No description provided for @displayForceInternal120HzSummary.
  ///
  /// In pt_BR, this message translates to:
  /// **'Cria o espelho na taxa de atualização máxima fornecida pelo sistema operacional'**
  String get displayForceInternal120HzSummary;

  /// No description provided for @displaySoftwareCursorFallback.
  ///
  /// In pt_BR, this message translates to:
  /// **'Usar cursor por software'**
  String get displaySoftwareCursorFallback;

  /// No description provided for @displaySoftwareCursorFallbackSummary.
  ///
  /// In pt_BR, this message translates to:
  /// **'Quando ativado, usa o cursor por software anterior'**
  String get displaySoftwareCursorFallbackSummary;

  /// No description provided for @mouseSettingsTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mouse'**
  String get mouseSettingsTitle;

  /// No description provided for @mouseSettingsDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configure a entrada do mouse virtual e o comportamento do cursor'**
  String get mouseSettingsDescription;

  /// No description provided for @virtualPointerProfile.
  ///
  /// In pt_BR, this message translates to:
  /// **'Dispositivo de entrada'**
  String get virtualPointerProfile;

  /// No description provided for @virtualTouchpad.
  ///
  /// In pt_BR, this message translates to:
  /// **'Touchpad'**
  String get virtualTouchpad;

  /// No description provided for @virtualTouchpadDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Registrar como touchpad virtual'**
  String get virtualTouchpadDescription;

  /// No description provided for @virtualPointerMouse.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mouse virtual'**
  String get virtualPointerMouse;

  /// No description provided for @virtualPointerMouseDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Registrar como mouse de movimento relativo'**
  String get virtualPointerMouseDescription;

  /// No description provided for @virtualPointerSoftware.
  ///
  /// In pt_BR, this message translates to:
  /// **'Cursor por software'**
  String get virtualPointerSoftware;

  /// No description provided for @virtualPointerSoftwareDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Usar o cursor por software próprio do app'**
  String get virtualPointerSoftwareDescription;

  /// No description provided for @virtualMouseScrollDirection.
  ///
  /// In pt_BR, this message translates to:
  /// **'Direção de rolagem'**
  String get virtualMouseScrollDirection;

  /// No description provided for @virtualMouseNaturalScroll.
  ///
  /// In pt_BR, this message translates to:
  /// **'Natural (Mac)'**
  String get virtualMouseNaturalScroll;

  /// No description provided for @virtualMouseStandardScroll.
  ///
  /// In pt_BR, this message translates to:
  /// **'Padrão (Windows)'**
  String get virtualMouseStandardScroll;

  /// No description provided for @uiConvenience.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conveniência'**
  String get uiConvenience;

  /// No description provided for @uiDisplayCategory.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tela'**
  String get uiDisplayCategory;

  /// No description provided for @foldableLaptopMode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Detectar o modo notebook automaticamente'**
  String get foldableLaptopMode;

  /// No description provided for @foldableLaptopModeDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ativa o modo notebook automaticamente quando um ângulo de dobra compatível é detectado'**
  String get foldableLaptopModeDescription;

  /// No description provided for @topologyNoDisplays.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não há telas disponíveis para organizar'**
  String get topologyNoDisplays;

  /// No description provided for @topologyUnavailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'A disposição de telas não está disponível neste aparelho'**
  String get topologyUnavailable;

  /// No description provided for @displaySettingsTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações de tela'**
  String get displaySettingsTitle;

  /// No description provided for @displaySettingsSummary.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gerencie a disposição e a resolução das telas'**
  String get displaySettingsSummary;

  /// No description provided for @displayResolutionListTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Resolução da tela'**
  String get displayResolutionListTitle;

  /// No description provided for @displayResolutionListSummary.
  ///
  /// In pt_BR, this message translates to:
  /// **'Veja as telas conectadas e os modos compatíveis'**
  String get displayResolutionListSummary;

  /// No description provided for @displayDetailsTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Informações da tela'**
  String get displayDetailsTitle;

  /// No description provided for @displayNoLongerAvailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'A tela selecionada não está mais disponível'**
  String get displayNoLongerAvailable;

  /// No description provided for @displaySupportedResolutions.
  ///
  /// In pt_BR, this message translates to:
  /// **'Resoluções compatíveis'**
  String get displaySupportedResolutions;

  /// No description provided for @displayDextopResolutionTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Resolução da sessão'**
  String get displayDextopResolutionTitle;

  /// No description provided for @displayDextopResolutionSummary.
  ///
  /// In pt_BR, this message translates to:
  /// **'Altere pela opção de resolução na tela inicial'**
  String get displayDextopResolutionSummary;

  /// No description provided for @displayCurrentMode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Em uso'**
  String get displayCurrentMode;

  /// No description provided for @displayModeApplied.
  ///
  /// In pt_BR, this message translates to:
  /// **'Resolução da tela alterada'**
  String get displayModeApplied;

  /// No description provided for @uiTap.
  ///
  /// In pt_BR, this message translates to:
  /// **'Toque'**
  String get uiTap;

  /// No description provided for @uiTapPressAndHoldMultiFingerOperation.
  ///
  /// In pt_BR, this message translates to:
  /// **'Toque, toque longo e controles com vários dedos'**
  String get uiTapPressAndHoldMultiFingerOperation;

  /// No description provided for @uiOpenAppOnDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abrir app na área de trabalho'**
  String get uiOpenAppOnDesktop;

  /// No description provided for @uiDesktopMode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Modo desktop'**
  String get uiDesktopMode;

  /// No description provided for @uiDesktopFeatures.
  ///
  /// In pt_BR, this message translates to:
  /// **'Recursos de desktop'**
  String get uiDesktopFeatures;

  /// No description provided for @uiTrackpad.
  ///
  /// In pt_BR, this message translates to:
  /// **'Trackpad'**
  String get uiTrackpad;

  /// No description provided for @uiDrag.
  ///
  /// In pt_BR, this message translates to:
  /// **'Arrastar'**
  String get uiDrag;

  /// No description provided for @uiBattery.
  ///
  /// In pt_BR, this message translates to:
  /// **'Bateria'**
  String get uiBattery;

  /// No description provided for @uiPerformance.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desempenho'**
  String get uiPerformance;

  /// No description provided for @uiPerformanceCompatibility.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desempenho e compatibilidade'**
  String get uiPerformanceCompatibility;

  /// No description provided for @uiItSupportsMultiTouchAndTheThree.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ativa o multitoque e muda o gesto de três dedos para um deslize a partir da borda esquerda.'**
  String get uiItSupportsMultiTouchAndTheThree;

  /// No description provided for @uiMainLarge2Sub.
  ///
  /// In pt_BR, this message translates to:
  /// **'Principal grande + duas secundárias'**
  String get uiMainLarge2Sub;

  /// No description provided for @uiMainLeft.
  ///
  /// In pt_BR, this message translates to:
  /// **'Principal (esquerda)'**
  String get uiMainLeft;

  /// No description provided for @uiLayout.
  ///
  /// In pt_BR, this message translates to:
  /// **'Layout'**
  String get uiLayout;

  /// No description provided for @uiWorkSpace.
  ///
  /// In pt_BR, this message translates to:
  /// **'Espaço de trabalho'**
  String get uiWorkSpace;

  /// No description provided for @uiCopiedWorkspaceJsonToClipboard.
  ///
  /// In pt_BR, this message translates to:
  /// **'JSON do espaço de trabalho copiado para a área de transferência'**
  String get uiCopiedWorkspaceJsonToClipboard;

  /// No description provided for @uiImportWorkspace.
  ///
  /// In pt_BR, this message translates to:
  /// **'Importar espaço de trabalho'**
  String get uiImportWorkspace;

  /// No description provided for @uiSaveWorkspace.
  ///
  /// In pt_BR, this message translates to:
  /// **'Salvar espaço de trabalho'**
  String get uiSaveWorkspace;

  /// No description provided for @uiDeleteWorkspace.
  ///
  /// In pt_BR, this message translates to:
  /// **'Excluir espaço de trabalho'**
  String get uiDeleteWorkspace;

  /// No description provided for @uiEditWorkspace.
  ///
  /// In pt_BR, this message translates to:
  /// **'Editar espaço de trabalho'**
  String get uiEditWorkspace;

  /// No description provided for @uiUp.
  ///
  /// In pt_BR, this message translates to:
  /// **'Subir'**
  String get uiUp;

  /// No description provided for @uiDividedIntoUpperAndLowerParts.
  ///
  /// In pt_BR, this message translates to:
  /// **'Dividir em cima/embaixo'**
  String get uiDividedIntoUpperAndLowerParts;

  /// No description provided for @uiUpperHalf.
  ///
  /// In pt_BR, this message translates to:
  /// **'Metade de cima'**
  String get uiUpperHalf;

  /// No description provided for @uiMoveDown.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mover para baixo'**
  String get uiMoveDown;

  /// No description provided for @uiLowerHalf.
  ///
  /// In pt_BR, this message translates to:
  /// **'Metade de baixo'**
  String get uiLowerHalf;

  /// No description provided for @uiCenter.
  ///
  /// In pt_BR, this message translates to:
  /// **'Centro'**
  String get uiCenter;

  /// No description provided for @uiCompatibilityDiagnosis.
  ///
  /// In pt_BR, this message translates to:
  /// **'Diagnósticos de compatibilidade'**
  String get uiCompatibilityDiagnosis;

  /// No description provided for @uiVirtualDisplayCreation.
  ///
  /// In pt_BR, this message translates to:
  /// **'Criação de tela virtual'**
  String get uiVirtualDisplayCreation;

  /// No description provided for @uiOpenASavedAppConfiguration.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abrir uma disposição de apps salva'**
  String get uiOpenASavedAppConfiguration;

  /// No description provided for @uiNoSavedWorkspaces.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nenhum espaço de trabalho salvo'**
  String get uiNoSavedWorkspaces;

  /// No description provided for @uiInputAndGestures.
  ///
  /// In pt_BR, this message translates to:
  /// **'Entrada e gestos'**
  String get uiInputAndGestures;

  /// No description provided for @uiInputMode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Modo de entrada'**
  String get uiInputMode;

  /// No description provided for @uiCancelFullScreen.
  ///
  /// In pt_BR, this message translates to:
  /// **'Sair da tela cheia'**
  String get uiCancelFullScreen;

  /// No description provided for @uiReDiagnosis.
  ///
  /// In pt_BR, this message translates to:
  /// **'Executar diagnósticos novamente'**
  String get uiReDiagnosis;

  /// No description provided for @uiRestart.
  ///
  /// In pt_BR, this message translates to:
  /// **'Retomar'**
  String get uiRestart;

  /// No description provided for @uiAvailableMemory.
  ///
  /// In pt_BR, this message translates to:
  /// **'Memória disponível'**
  String get uiAvailableMemory;

  /// No description provided for @uiDelete.
  ///
  /// In pt_BR, this message translates to:
  /// **'Excluir'**
  String get uiDelete;

  /// No description provided for @uiYouCanRestoreYourPreviousSession.
  ///
  /// In pt_BR, this message translates to:
  /// **'Você pode restaurar sua sessão anterior'**
  String get uiYouCanRestoreYourPreviousSession;

  /// No description provided for @uiRight.
  ///
  /// In pt_BR, this message translates to:
  /// **'Direita'**
  String get uiRight;

  /// No description provided for @uiRight13.
  ///
  /// In pt_BR, this message translates to:
  /// **'Direita 1/3'**
  String get uiRight13;

  /// No description provided for @uiRight23.
  ///
  /// In pt_BR, this message translates to:
  /// **'Direita 2/3'**
  String get uiRight23;

  /// No description provided for @uiRightClick.
  ///
  /// In pt_BR, this message translates to:
  /// **'Botão direito'**
  String get uiRightClick;

  /// No description provided for @uiUpperRight.
  ///
  /// In pt_BR, this message translates to:
  /// **'Canto superior direito'**
  String get uiUpperRight;

  /// No description provided for @uiLowerRight.
  ///
  /// In pt_BR, this message translates to:
  /// **'Canto inferior direito'**
  String get uiLowerRight;

  /// No description provided for @uiRightHalf.
  ///
  /// In pt_BR, this message translates to:
  /// **'Metade direita'**
  String get uiRightHalf;

  /// No description provided for @uiName.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nome'**
  String get uiName;

  /// No description provided for @uiLargeScreenFoldable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tela grande/dobrável'**
  String get uiLargeScreenFoldable;

  /// No description provided for @uiActualFps.
  ///
  /// In pt_BR, this message translates to:
  /// **'FPS real'**
  String get uiActualFps;

  /// No description provided for @uiExperimentalMultiTouch.
  ///
  /// In pt_BR, this message translates to:
  /// **'Multitoque experimental'**
  String get uiExperimentalMultiTouch;

  /// No description provided for @uiExperimentalFeatures.
  ///
  /// In pt_BR, this message translates to:
  /// **'Recursos experimentais'**
  String get uiExperimentalFeatures;

  /// No description provided for @uiLeft.
  ///
  /// In pt_BR, this message translates to:
  /// **'Esquerda'**
  String get uiLeft;

  /// No description provided for @uiLeft13.
  ///
  /// In pt_BR, this message translates to:
  /// **'Esquerda 1/3'**
  String get uiLeft13;

  /// No description provided for @uiLeft13Right23.
  ///
  /// In pt_BR, this message translates to:
  /// **'Esquerda 1/3 + direita 2/3'**
  String get uiLeft13Right23;

  /// No description provided for @uiLeft23.
  ///
  /// In pt_BR, this message translates to:
  /// **'Esquerda 2/3'**
  String get uiLeft23;

  /// No description provided for @uiLeft23Right13.
  ///
  /// In pt_BR, this message translates to:
  /// **'Esquerda 2/3 + direita 1/3'**
  String get uiLeft23Right13;

  /// No description provided for @uiLeftCenterRight.
  ///
  /// In pt_BR, this message translates to:
  /// **'Esquerda / centro / direita'**
  String get uiLeftCenterRight;

  /// No description provided for @uiUpperLeft.
  ///
  /// In pt_BR, this message translates to:
  /// **'Canto superior esquerdo'**
  String get uiUpperLeft;

  /// No description provided for @uiUpperLeftUpperRightLowerHalf.
  ///
  /// In pt_BR, this message translates to:
  /// **'Superior esquerdo, superior direito, metade de baixo'**
  String get uiUpperLeftUpperRightLowerHalf;

  /// No description provided for @uiLowerLeft.
  ///
  /// In pt_BR, this message translates to:
  /// **'Canto inferior esquerdo'**
  String get uiLowerLeft;

  /// No description provided for @uiLeftHalf.
  ///
  /// In pt_BR, this message translates to:
  /// **'Metade esquerda'**
  String get uiLeftHalf;

  /// No description provided for @uiDividedIntoLeftAndRight.
  ///
  /// In pt_BR, this message translates to:
  /// **'Dividir esquerda/direita'**
  String get uiDividedIntoLeftAndRight;

  /// No description provided for @uiSwipeRightWithThreeFingersFromThe.
  ///
  /// In pt_BR, this message translates to:
  /// **'Deslize três dedos para a direita a partir da borda esquerda'**
  String get uiSwipeRightWithThreeFingersFromThe;

  /// No description provided for @uiRecoverySession.
  ///
  /// In pt_BR, this message translates to:
  /// **'Recuperação de sessão'**
  String get uiRecoverySession;

  /// No description provided for @uiEstimatedPowerConsumption.
  ///
  /// In pt_BR, this message translates to:
  /// **'Consumo de energia estimado'**
  String get uiEstimatedPowerConsumption;

  /// No description provided for @uiOperationOverlay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Sobreposição de controles'**
  String get uiOperationOverlay;

  /// No description provided for @uiShowActionOverlay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostrar sobreposição de controles'**
  String get uiShowActionOverlay;

  /// No description provided for @uiOperationMenu.
  ///
  /// In pt_BR, this message translates to:
  /// **'Menu de controle'**
  String get uiOperationMenu;

  /// No description provided for @uiThereIsAnExistingSession.
  ///
  /// In pt_BR, this message translates to:
  /// **'Já existe uma sessão aberta'**
  String get uiThereIsAnExistingSession;

  /// No description provided for @uiSaveConfiguration.
  ///
  /// In pt_BR, this message translates to:
  /// **'Salvar configuração'**
  String get uiSaveConfiguration;

  /// No description provided for @uiRestorePrivileges.
  ///
  /// In pt_BR, this message translates to:
  /// **'Restaurar permissões'**
  String get uiRestorePrivileges;

  /// No description provided for @uiChangeToHorizontalHold.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mudar para paisagem'**
  String get uiChangeToHorizontalHold;

  /// No description provided for @uiPreparationIsRequired.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configuração necessária'**
  String get uiPreparationIsRequired;

  /// No description provided for @uiPhysicalKeyboard.
  ///
  /// In pt_BR, this message translates to:
  /// **'Teclado físico'**
  String get uiPhysicalKeyboard;

  /// No description provided for @uiPhysicalMouse.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mouse físico'**
  String get uiPhysicalMouse;

  /// No description provided for @uiConditionAndDiagnosis.
  ///
  /// In pt_BR, this message translates to:
  /// **'Status e diagnóstico'**
  String get uiConditionAndDiagnosis;

  /// No description provided for @uiPreventsTheScreenFromTurningOffAutomatically.
  ///
  /// In pt_BR, this message translates to:
  /// **'Impede que a tela desligue automaticamente'**
  String get uiPreventsTheScreenFromTurningOffAutomatically;

  /// No description provided for @uiDestruction.
  ///
  /// In pt_BR, this message translates to:
  /// **'Descartar'**
  String get uiDestruction;

  /// No description provided for @uiTerminalAndPermissions.
  ///
  /// In pt_BR, this message translates to:
  /// **'Dispositivo e permissões'**
  String get uiTerminalAndPermissions;

  /// No description provided for @uiDeviceInformationDesktopModeAccessibility.
  ///
  /// In pt_BR, this message translates to:
  /// **'Informações do aparelho, modo desktop, acessibilidade'**
  String get uiDeviceInformationDesktopModeAccessibility;

  /// No description provided for @uiTerminalResolution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Resolução do aparelho'**
  String get uiTerminalResolution;

  /// No description provided for @uiEnd.
  ///
  /// In pt_BR, this message translates to:
  /// **'Encerrar'**
  String get uiEnd;

  /// No description provided for @uiTerminationProcessingCompletedSuccessfully.
  ///
  /// In pt_BR, this message translates to:
  /// **'Sessão encerrada com sucesso.'**
  String get uiTerminationProcessingCompletedSuccessfully;

  /// No description provided for @uiEdit.
  ///
  /// In pt_BR, this message translates to:
  /// **'Editar'**
  String get uiEdit;

  /// No description provided for @uiChangeToPortraitOrientation.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mudar para retrato'**
  String get uiChangeToPortraitOrientation;

  /// No description provided for @uiVerticalHorizontalSwitching.
  ///
  /// In pt_BR, this message translates to:
  /// **'Retrato / paisagem'**
  String get uiVerticalHorizontalSwitching;

  /// No description provided for @uiDisplayOptimization.
  ///
  /// In pt_BR, this message translates to:
  /// **'Otimização da tela'**
  String get uiDisplayOptimization;

  /// No description provided for @uiDisplayRefreshRate.
  ///
  /// In pt_BR, this message translates to:
  /// **'Taxa de atualização da tela'**
  String get uiDisplayRefreshRate;

  /// No description provided for @uiReproduction.
  ///
  /// In pt_BR, this message translates to:
  /// **'Duplicar'**
  String get uiReproduction;

  /// No description provided for @uiManageLaunchedAppsAndConfigurations.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gerencie os apps que serão abertos e seus layouts'**
  String get uiManageLaunchedAppsAndConfigurations;

  /// No description provided for @uiCouldNotStart.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível iniciar'**
  String get uiCouldNotStart;

  /// No description provided for @uiLongPress.
  ///
  /// In pt_BR, this message translates to:
  /// **'Toque longo'**
  String get uiLongPress;

  /// No description provided for @uiAutomaticallyUsesMeasuredResolutionForOpenAnd.
  ///
  /// In pt_BR, this message translates to:
  /// **'Usa automaticamente a resolução medida para o aparelho aberto e fechado'**
  String get uiAutomaticallyUsesMeasuredResolutionForOpenAnd;

  /// No description provided for @uiStart.
  ///
  /// In pt_BR, this message translates to:
  /// **'Iniciar'**
  String get uiStart;

  /// No description provided for @uiRunningAuto.
  ///
  /// In pt_BR, this message translates to:
  /// **'Em execução (Auto)'**
  String get uiRunningAuto;

  /// No description provided for @uiRunningAutoPlus.
  ///
  /// In pt_BR, this message translates to:
  /// **'Em execução (Auto+)'**
  String get uiRunningAutoPlus;

  /// No description provided for @uiStartPhoneDextop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Iniciar neste celular'**
  String get uiStartPhoneDextop;

  /// No description provided for @uiStopAndroidAuto.
  ///
  /// In pt_BR, this message translates to:
  /// **'Parar (Android Auto)'**
  String get uiStopAndroidAuto;

  /// No description provided for @uiAutomaticSwitchingAccordingToOpenClosedState.
  ///
  /// In pt_BR, this message translates to:
  /// **'Alternar automaticamente conforme o aparelho estiver aberto ou fechado'**
  String get uiAutomaticSwitchingAccordingToOpenClosedState;

  /// No description provided for @uiOpeningQuote.
  ///
  /// In pt_BR, this message translates to:
  /// **'“'**
  String get uiOpeningQuote;

  /// No description provided for @uiDeleteWorkspaceQuestionSuffix.
  ///
  /// In pt_BR, this message translates to:
  /// **'” — excluir este espaço de trabalho?'**
  String get uiDeleteWorkspaceQuestionSuffix;

  /// No description provided for @uiAbnormalSessionWarning.
  ///
  /// In pt_BR, this message translates to:
  /// **'A sessão terminou em um estado inválido.\nAlgumas funções do sistema Android podem continuar desativadas.'**
  String get uiAbnormalSessionWarning;

  /// No description provided for @uiChecking.
  ///
  /// In pt_BR, this message translates to:
  /// **'Verificando'**
  String get uiChecking;

  /// No description provided for @uiIdle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Inativo'**
  String get uiIdle;

  /// No description provided for @uiAvailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Disponível'**
  String get uiAvailable;

  /// No description provided for @uiUnavailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Indisponível'**
  String get uiUnavailable;

  /// No description provided for @appName.
  ///
  /// In pt_BR, this message translates to:
  /// **'Área de Trabalho Móvel'**
  String get appName;

  /// No description provided for @uiAndroid.
  ///
  /// In pt_BR, this message translates to:
  /// **'Android'**
  String get uiAndroid;

  /// No description provided for @uiGitHub.
  ///
  /// In pt_BR, this message translates to:
  /// **'GitHub'**
  String get uiGitHub;

  /// No description provided for @uiGitHubRepository.
  ///
  /// In pt_BR, this message translates to:
  /// **'belchiorjuniorr2/area-de-trabalho-movel'**
  String get uiGitHubRepository;

  /// No description provided for @diagnosticLog.
  ///
  /// In pt_BR, this message translates to:
  /// **'Registro de operação e diagnóstico do aparelho'**
  String get diagnosticLog;

  /// No description provided for @diagnosticLogDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Veja os registros do app, a detecção de recursos e as especificações detalhadas do aparelho'**
  String get diagnosticLogDescription;

  /// No description provided for @loadDiagnosticLog.
  ///
  /// In pt_BR, this message translates to:
  /// **'Carregar relatório de diagnóstico'**
  String get loadDiagnosticLog;

  /// No description provided for @copyDiagnosticLog.
  ///
  /// In pt_BR, this message translates to:
  /// **'Copiar'**
  String get copyDiagnosticLog;

  /// No description provided for @shareDiagnosticLog.
  ///
  /// In pt_BR, this message translates to:
  /// **'Compartilhar'**
  String get shareDiagnosticLog;

  /// No description provided for @clearDiagnosticLog.
  ///
  /// In pt_BR, this message translates to:
  /// **'Limpar registro'**
  String get clearDiagnosticLog;

  /// No description provided for @deviceReport.
  ///
  /// In pt_BR, this message translates to:
  /// **'Relatório do aparelho'**
  String get deviceReport;

  /// No description provided for @uiCpuTemperature.
  ///
  /// In pt_BR, this message translates to:
  /// **'Temperatura da CPU'**
  String get uiCpuTemperature;

  /// No description provided for @deviceReportDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Informe a compatibilidade do aparelho e dos recursos abrindo uma issue no GitHub'**
  String get deviceReportDescription;

  /// No description provided for @deviceReportIntro.
  ///
  /// In pt_BR, this message translates to:
  /// **'Os dados do aparelho são coletados automaticamente. Escolha o resultado de cada recurso.'**
  String get deviceReportIntro;

  /// No description provided for @reportWorking.
  ///
  /// In pt_BR, this message translates to:
  /// **'Funciona'**
  String get reportWorking;

  /// No description provided for @reportNotWorking.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não funciona'**
  String get reportNotWorking;

  /// No description provided for @reportUntested.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não testado'**
  String get reportUntested;

  /// No description provided for @reportOverall.
  ///
  /// In pt_BR, this message translates to:
  /// **'Situação geral'**
  String get reportOverall;

  /// No description provided for @reportNotes.
  ///
  /// In pt_BR, this message translates to:
  /// **'Outras observações'**
  String get reportNotes;

  /// No description provided for @sendDeviceReport.
  ///
  /// In pt_BR, this message translates to:
  /// **'Enviar relatório pelo GitHub'**
  String get sendDeviceReport;

  /// No description provided for @reportEmailUnavailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível abrir o navegador'**
  String get reportEmailUnavailable;

  /// No description provided for @reportTemplateTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Relatório de aparelho — Área de Trabalho Móvel'**
  String get reportTemplateTitle;

  /// No description provided for @reportNoNotes.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nenhum'**
  String get reportNoNotes;

  /// No description provided for @reportNoSessionLog.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nenhuma sessão concluída foi registrada ainda.'**
  String get reportNoSessionLog;

  /// No description provided for @reportFeatureStartup.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abertura do app e detecção do aparelho'**
  String get reportFeatureStartup;

  /// No description provided for @reportFeatureSession.
  ///
  /// In pt_BR, this message translates to:
  /// **'Início da sessão'**
  String get reportFeatureSession;

  /// No description provided for @reportFeatureVirtualDisplay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Espelhamento via VirtualDisplay'**
  String get reportFeatureVirtualDisplay;

  /// No description provided for @reportFeatureWindowManager.
  ///
  /// In pt_BR, this message translates to:
  /// **'Espelhamento via WindowManager'**
  String get reportFeatureWindowManager;

  /// No description provided for @reportFeatureSurfaceControl.
  ///
  /// In pt_BR, this message translates to:
  /// **'Espelhamento via SurfaceControl'**
  String get reportFeatureSurfaceControl;

  /// No description provided for @reportFeatureLandscape.
  ///
  /// In pt_BR, this message translates to:
  /// **'Modo paisagem'**
  String get reportFeatureLandscape;

  /// No description provided for @reportFeaturePortrait.
  ///
  /// In pt_BR, this message translates to:
  /// **'Modo retrato'**
  String get reportFeaturePortrait;

  /// No description provided for @reportFeatureSecureDisplay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tela segura'**
  String get reportFeatureSecureDisplay;

  /// No description provided for @reportFeatureLauncher.
  ///
  /// In pt_BR, this message translates to:
  /// **'Menu de apps e janelas livres'**
  String get reportFeatureLauncher;

  /// No description provided for @reportFeatureWorkspace.
  ///
  /// In pt_BR, this message translates to:
  /// **'Salvar e restaurar espaço de trabalho'**
  String get reportFeatureWorkspace;

  /// No description provided for @reportFeatureCursor.
  ///
  /// In pt_BR, this message translates to:
  /// **'Entrada por cursor e touchpad'**
  String get reportFeatureCursor;

  /// No description provided for @reportFeatureDirectTouch.
  ///
  /// In pt_BR, this message translates to:
  /// **'Entrada por toque direto'**
  String get reportFeatureDirectTouch;

  /// No description provided for @reportFeatureMultiTouch.
  ///
  /// In pt_BR, this message translates to:
  /// **'Rolagem multitoque e zoom com pinça'**
  String get reportFeatureMultiTouch;

  /// No description provided for @reportFeatureGesture.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gesto de três dedos da sobreposição'**
  String get reportFeatureGesture;

  /// No description provided for @reportFeatureMouse.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mouse físico'**
  String get reportFeatureMouse;

  /// No description provided for @reportFeatureKeyboard.
  ///
  /// In pt_BR, this message translates to:
  /// **'Teclado físico'**
  String get reportFeatureKeyboard;

  /// No description provided for @reportFeatureRouting.
  ///
  /// In pt_BR, this message translates to:
  /// **'Direcionamento do mouse e teclado físicos entre telas'**
  String get reportFeatureRouting;

  /// No description provided for @reportFeatureFoldable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Resolução automática em dobráveis'**
  String get reportFeatureFoldable;

  /// No description provided for @reportFeaturePerformance.
  ///
  /// In pt_BR, this message translates to:
  /// **'Sobreposição de desempenho'**
  String get reportFeaturePerformance;

  /// No description provided for @reportFeatureCleanup.
  ///
  /// In pt_BR, this message translates to:
  /// **'Limpeza da sessão e restauração do Android'**
  String get reportFeatureCleanup;

  /// No description provided for @samsungExperimentalTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações experimentais do desktop Samsung'**
  String get samsungExperimentalTitle;

  /// No description provided for @samsungUnavailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Disponível apenas em dispositivos Samsung'**
  String get samsungUnavailable;

  /// No description provided for @samsungExperimentalDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Altere configurações ocultas pela tela nativa de configurações do DeX'**
  String get samsungExperimentalDescription;

  /// No description provided for @samsungSettingsTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações do desktop Samsung'**
  String get samsungSettingsTitle;

  /// No description provided for @samsungSettingsSummary.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações de tela, entrada e barra de tarefas'**
  String get samsungSettingsSummary;

  /// No description provided for @samsungRestoreSuccess.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações da Samsung restauradas'**
  String get samsungRestoreSuccess;

  /// No description provided for @samsungConfirmTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Confirmar acesso às configurações'**
  String get samsungConfirmTitle;

  /// No description provided for @samsungPermanentWarning.
  ///
  /// In pt_BR, this message translates to:
  /// **'Estas configurações podem afetar de forma permanente a Área de Trabalho Móvel e o ambiente de desktop usado normalmente, até serem redefinidas.'**
  String get samsungPermanentWarning;

  /// No description provided for @samsungAcceptEnable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aceitar e ativar'**
  String get samsungAcceptEnable;

  /// No description provided for @samsungAboutSetting.
  ///
  /// In pt_BR, this message translates to:
  /// **'Sobre esta configuração'**
  String get samsungAboutSetting;

  /// No description provided for @samsungRestoreEnvironment.
  ///
  /// In pt_BR, this message translates to:
  /// **'Restaurar ambiente'**
  String get samsungRestoreEnvironment;

  /// No description provided for @samsungSettingsIntro.
  ///
  /// In pt_BR, this message translates to:
  /// **'Altera diretamente valores do DeX que ficam ocultos quando as Configurações da Samsung não detectam uma tela externa. As mudanças afetam o Samsung DeX e os recursos correspondentes da Área de Trabalho Móvel.'**
  String get samsungSettingsIntro;

  /// No description provided for @samsungResolution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Resolução externa'**
  String get samsungResolution;

  /// No description provided for @samsungScreenZoom.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ampliação da tela (DPI)'**
  String get samsungScreenZoom;

  /// No description provided for @samsungFontScale.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tamanho da fonte'**
  String get samsungFontScale;

  /// No description provided for @samsungScreenTimeout.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tempo limite da tela'**
  String get samsungScreenTimeout;

  /// No description provided for @samsungAudioOutput.
  ///
  /// In pt_BR, this message translates to:
  /// **'Reproduzir áudio na tela externa'**
  String get samsungAudioOutput;

  /// No description provided for @samsungDisplayOrientation.
  ///
  /// In pt_BR, this message translates to:
  /// **'Rotação da tela externa'**
  String get samsungDisplayOrientation;

  /// No description provided for @samsungDisplayArrangement.
  ///
  /// In pt_BR, this message translates to:
  /// **'Disposição das telas'**
  String get samsungDisplayArrangement;

  /// No description provided for @samsungSectionInput.
  ///
  /// In pt_BR, this message translates to:
  /// **'Entrada'**
  String get samsungSectionInput;

  /// No description provided for @samsungSectionDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Área de trabalho'**
  String get samsungSectionDesktop;

  /// No description provided for @samsungInputLockedWhileRunning.
  ///
  /// In pt_BR, this message translates to:
  /// **'As configurações de entrada da Samsung que entram em conflito não podem ser alteradas enquanto a Área de Trabalho Móvel estiver em execução.'**
  String get samsungInputLockedWhileRunning;

  /// No description provided for @samsungAutorunTouchpad.
  ///
  /// In pt_BR, this message translates to:
  /// **'Iniciar o touchpad automaticamente'**
  String get samsungAutorunTouchpad;

  /// No description provided for @samsungTouchpadScrollDirection.
  ///
  /// In pt_BR, this message translates to:
  /// **'Inverter direção da rolagem'**
  String get samsungTouchpadScrollDirection;

  /// No description provided for @samsungTouchKeyboard.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostrar o teclado na tela quando conectado'**
  String get samsungTouchKeyboard;

  /// No description provided for @samsungKeyboardDex.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostrar teclado virtual com teclado físico conectado'**
  String get samsungKeyboardDex;

  /// No description provided for @samsungSpenInputMode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Usar a S Pen como mouse'**
  String get samsungSpenInputMode;

  /// No description provided for @samsungThreeFingerGesture.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gesto de três dedos'**
  String get samsungThreeFingerGesture;

  /// No description provided for @samsungFourFingerGesture.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gesto de quatro dedos'**
  String get samsungFourFingerGesture;

  /// No description provided for @samsungAutoHideTaskbar.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ocultar a barra de tarefas automaticamente'**
  String get samsungAutoHideTaskbar;

  /// No description provided for @samsungDexCommandArrow.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostrar seta de comando'**
  String get samsungDexCommandArrow;

  /// No description provided for @samsungIncludePhoneDisplay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Incluir a tela do celular na disposição das telas'**
  String get samsungIncludePhoneDisplay;

  /// No description provided for @samsungMirrorPhoneDisplay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Espelhar a tela do aparelho'**
  String get samsungMirrorPhoneDisplay;

  /// No description provided for @samsungReviewEnable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ler o aviso e permitir alterações'**
  String get samsungReviewEnable;

  /// No description provided for @samsungSeconds15.
  ///
  /// In pt_BR, this message translates to:
  /// **'15 segundos'**
  String get samsungSeconds15;

  /// No description provided for @samsungSeconds30.
  ///
  /// In pt_BR, this message translates to:
  /// **'30 segundos'**
  String get samsungSeconds30;

  /// No description provided for @samsungMinute1.
  ///
  /// In pt_BR, this message translates to:
  /// **'1 minuto'**
  String get samsungMinute1;

  /// No description provided for @samsungMinutes2.
  ///
  /// In pt_BR, this message translates to:
  /// **'2 minutos'**
  String get samsungMinutes2;

  /// No description provided for @samsungMinutes5.
  ///
  /// In pt_BR, this message translates to:
  /// **'5 minutos'**
  String get samsungMinutes5;

  /// No description provided for @samsungMinutes10.
  ///
  /// In pt_BR, this message translates to:
  /// **'10 minutos'**
  String get samsungMinutes10;

  /// No description provided for @samsungMinutes20.
  ///
  /// In pt_BR, this message translates to:
  /// **'20 minutos'**
  String get samsungMinutes20;

  /// No description provided for @samsungMinutes30.
  ///
  /// In pt_BR, this message translates to:
  /// **'30 minutos'**
  String get samsungMinutes30;

  /// No description provided for @samsungHour1.
  ///
  /// In pt_BR, this message translates to:
  /// **'1 hora'**
  String get samsungHour1;

  /// No description provided for @samsungLeft.
  ///
  /// In pt_BR, this message translates to:
  /// **'Esquerda'**
  String get samsungLeft;

  /// No description provided for @samsungRight.
  ///
  /// In pt_BR, this message translates to:
  /// **'Direita'**
  String get samsungRight;

  /// No description provided for @samsungAutomatic.
  ///
  /// In pt_BR, this message translates to:
  /// **'Automático'**
  String get samsungAutomatic;

  /// No description provided for @samsungGestureNone.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nenhum'**
  String get samsungGestureNone;

  /// No description provided for @samsungGestureApps.
  ///
  /// In pt_BR, this message translates to:
  /// **'Apps'**
  String get samsungGestureApps;

  /// No description provided for @samsungGestureRecents.
  ///
  /// In pt_BR, this message translates to:
  /// **'Recentes'**
  String get samsungGestureRecents;

  /// No description provided for @samsungGestureNotifications.
  ///
  /// In pt_BR, this message translates to:
  /// **'Notificações'**
  String get samsungGestureNotifications;

  /// No description provided for @samsungGestureQuickSettings.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações rápidas'**
  String get samsungGestureQuickSettings;

  /// No description provided for @samsungHelp_resolution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Define a área que o desktop da Samsung usa para desenhar apps e janelas. Resoluções maiores cabem mais conteúdo, mas deixam os controles menores e exigem mais processamento. Resoluções menores favorecem a leitura e o desempenho. Esta opção é salva separadamente da resolução da Área de Trabalho Móvel.'**
  String get samsungHelp_resolution;

  /// No description provided for @samsungHelp_screenZoom.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ajusta o tamanho de textos, ícones e controles em todo o desktop da Samsung. Um DPI maior deixa tudo maior e mais fácil de ler; um DPI menor cabe mais conteúdo na tela. Não altera a resolução real.'**
  String get samsungHelp_screenZoom;

  /// No description provided for @samsungHelp_fontScale.
  ///
  /// In pt_BR, this message translates to:
  /// **'Altera o tamanho do texto sem redimensionar muito ícones e janelas. Use para melhorar a leitura sem perder espaço de trabalho. Valores muito grandes podem fazer o texto quebrar ou transbordar em alguns apps.'**
  String get samsungHelp_fontScale;

  /// No description provided for @samsungHelp_screenTimeout.
  ///
  /// In pt_BR, this message translates to:
  /// **'Define por quanto tempo o desktop da Samsung fica aceso sem uso. Um tempo maior é útil para documentos ou vídeos, mas pode aumentar o consumo de energia e o aquecimento.'**
  String get samsungHelp_screenTimeout;

  /// No description provided for @samsungHelp_audioOutput.
  ///
  /// In pt_BR, this message translates to:
  /// **'Quando ativado, o áudio de mídia e de notificações sai pela tela HDMI ou pela dock. Quando desativado, normalmente é usado o celular ou o dispositivo de áudio selecionado no momento. Se a tela não tiver alto-falantes, pode ficar sem som.'**
  String get samsungHelp_audioOutput;

  /// No description provided for @samsungHelp_displayOrientation.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gira o desktop da Samsung para o ângulo escolhido. Use com monitores na vertical ou giratórios. Um valor diferente da posição real da tela pode deixar a imagem e a direção do ponteiro desalinhadas.'**
  String get samsungHelp_displayOrientation;

  /// No description provided for @samsungHelp_displayArrangement.
  ///
  /// In pt_BR, this message translates to:
  /// **'Informa à Samsung se o celular fica à esquerda ou à direita da tela externa. Isso muda por qual borda o ponteiro passa de uma tela para a outra, para que o movimento corresponda à posição física.'**
  String get samsungHelp_displayArrangement;

  /// No description provided for @samsungHelp_autorunTouchpad.
  ///
  /// In pt_BR, this message translates to:
  /// **'Quando ativado, o touchpad da Samsung abre automaticamente no celular ao conectar, para usar o celular como o touchpad de um notebook. Ele duplica a entrada da Área de Trabalho Móvel, por isso esta opção fica oculta enquanto ela estiver em execução.'**
  String get samsungHelp_autorunTouchpad;

  /// No description provided for @samsungHelp_touchpadScrollDirection.
  ///
  /// In pt_BR, this message translates to:
  /// **'Inverte a relação entre o movimento de dois dedos e o movimento da página no touchpad da Samsung. Use para escolher entre a rolagem estilo roda do mouse e a rolagem estilo toque direto.'**
  String get samsungHelp_touchpadScrollDirection;

  /// No description provided for @samsungHelp_touchKeyboard.
  ///
  /// In pt_BR, this message translates to:
  /// **'Quando ativado, o teclado virtual pode aparecer ao selecionar um campo de texto no modo desktop. É útil sem teclado físico, mas se sobrepõe ao teclado da Área de Trabalho Móvel, por isso fica oculto enquanto ela estiver em execução.'**
  String get samsungHelp_touchKeyboard;

  /// No description provided for @samsungHelp_keyboardDex.
  ///
  /// In pt_BR, this message translates to:
  /// **'Quando ativado, o teclado virtual continua disponível mesmo com um teclado físico conectado. Ajuda com emojis, escrita à mão e entrada por voz, mas reduz o espaço de trabalho e conflita com o teclado (IME) da Área de Trabalho Móvel.'**
  String get samsungHelp_keyboardDex;

  /// No description provided for @samsungHelp_spenInputMode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Quando ativado, a S Pen funciona como ponteiro, inclusive passando sobre a tela antes de tocar. Isso melhora a precisão na área de trabalho. Confira os apps de desenho se você depende do comportamento normal da caneta sensível à pressão.'**
  String get samsungHelp_spenInputMode;

  /// No description provided for @samsungHelp_threeFingerGesture.
  ///
  /// In pt_BR, this message translates to:
  /// **'Executa a ação escolhida (como Apps, Início, Recentes ou Voltar) quando a Samsung detecta um gesto de três dedos. A Área de Trabalho Móvel também usa três dedos nos controles, por isso esta opção fica oculta enquanto ela estiver em execução.'**
  String get samsungHelp_threeFingerGesture;

  /// No description provided for @samsungHelp_fourFingerGesture.
  ///
  /// In pt_BR, this message translates to:
  /// **'Executa a ação do sistema escolhida com um gesto de quatro dedos no touchpad. Pode agilizar a navegação, mas conflita com a detecção multitoque da Área de Trabalho Móvel, por isso fica oculta durante uma sessão.'**
  String get samsungHelp_fourFingerGesture;

  /// No description provided for @samsungHelp_autoHideTaskbar.
  ///
  /// In pt_BR, this message translates to:
  /// **'Quando ativado, o desktop da Samsung oculta a barra de tarefas enquanto ela não está em uso, dando mais espaço vertical aos apps. Leve o ponteiro até a borda inferior para mostrá-la. Desative se preferir que a troca de apps fique sempre visível.'**
  String get samsungHelp_autoHideTaskbar;

  /// No description provided for @samsungHelp_dexCommandArrow.
  ///
  /// In pt_BR, this message translates to:
  /// **'Quando ativado, o desktop da Samsung mostra uma seta para abrir os controles de comando da Samsung. Dá acesso mais rápido às ações da Samsung, mas pode se sobrepor às sobreposições ou aos gestos de borda da Área de Trabalho Móvel.'**
  String get samsungHelp_dexCommandArrow;

  /// No description provided for @samsungHelp_includePhoneDisplay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Quando ativado, a tela do celular passa a fazer parte da mesma disposição de telas que a tela externa, permitindo mover apps e o ponteiro entre elas. Deixe desativado para manter o celular como uma tela de controle Android independente.'**
  String get samsungHelp_includePhoneDisplay;

  /// No description provided for @samsungHelp_mirrorPhoneDisplay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Quando ativado, a área de trabalho externa mostra o mesmo conteúdo da tela do celular. É útil para demonstrações, mas duplica em vez de ampliar o espaço de trabalho, então as duas telas não podem mostrar apps diferentes.'**
  String get samsungHelp_mirrorPhoneDisplay;

  /// No description provided for @keyboardSettingsTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Teclado'**
  String get keyboardSettingsTitle;

  /// No description provided for @keyboardSettingsDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Temas do teclado e idiomas de digitação por gesto'**
  String get keyboardSettingsDescription;

  /// No description provided for @keyboardSwipeLanguages.
  ///
  /// In pt_BR, this message translates to:
  /// **'Idiomas de digitação por gesto'**
  String get keyboardSwipeLanguages;

  /// No description provided for @keyboardSwipeLanguagesDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Escolha os idiomas exibidos ao manter MENU pressionado.'**
  String get keyboardSwipeLanguagesDescription;

  /// No description provided for @keyboardSwipeAddLanguage.
  ///
  /// In pt_BR, this message translates to:
  /// **'Adicionar idioma'**
  String get keyboardSwipeAddLanguage;

  /// No description provided for @keyboardSwipeDefaultLanguage.
  ///
  /// In pt_BR, this message translates to:
  /// **'Padrão'**
  String get keyboardSwipeDefaultLanguage;

  /// No description provided for @keyboardSwipeInput.
  ///
  /// In pt_BR, this message translates to:
  /// **'Digitação por gesto'**
  String get keyboardSwipeInput;

  /// No description provided for @keyboardSwipeInputDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Digite palavras deslizando pelo teclado. Desativado por padrão.'**
  String get keyboardSwipeInputDescription;

  /// No description provided for @keyboardSwipeCandidates.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostrar sugestões de conversão'**
  String get keyboardSwipeCandidates;

  /// No description provided for @keyboardSwipeCandidatesDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostra uma lista de sugestões selecionáveis após a digitação por gesto.'**
  String get keyboardSwipeCandidatesDescription;

  /// No description provided for @keyboardThemesTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Temas do teclado'**
  String get keyboardThemesTitle;

  /// No description provided for @keyboardThemesChoose.
  ///
  /// In pt_BR, this message translates to:
  /// **'Escolha um tema'**
  String get keyboardThemesChoose;

  /// No description provided for @keyboardThemesNew.
  ///
  /// In pt_BR, this message translates to:
  /// **'Novo tema de teclado'**
  String get keyboardThemesNew;

  /// No description provided for @keyboardThemesName.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nome do tema'**
  String get keyboardThemesName;

  /// No description provided for @keyboardThemesCreate.
  ///
  /// In pt_BR, this message translates to:
  /// **'Criar'**
  String get keyboardThemesCreate;

  /// No description provided for @keyboardThemesEdit.
  ///
  /// In pt_BR, this message translates to:
  /// **'Editar'**
  String get keyboardThemesEdit;

  /// No description provided for @keyboardThemesDone.
  ///
  /// In pt_BR, this message translates to:
  /// **'Concluído'**
  String get keyboardThemesDone;

  /// No description provided for @keyboardThemesDeleteTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Excluir o tema?'**
  String get keyboardThemesDeleteTitle;

  /// No description provided for @keyboardThemesDeleteBody.
  ///
  /// In pt_BR, this message translates to:
  /// **'Excluir “{name}”? Não é possível desfazer.'**
  String keyboardThemesDeleteBody(String name);

  /// No description provided for @keyboardThemesBuiltIn.
  ///
  /// In pt_BR, this message translates to:
  /// **'Os temas integrados não podem ser excluídos'**
  String get keyboardThemesBuiltIn;

  /// No description provided for @keyboardThemesSelectFirst.
  ///
  /// In pt_BR, this message translates to:
  /// **'Selecione este tema primeiro para visualizá-lo.'**
  String get keyboardThemesSelectFirst;

  /// No description provided for @keyboardThemesStartFirst.
  ///
  /// In pt_BR, this message translates to:
  /// **'Inicie a Área de Trabalho Móvel primeiro para ver a sobreposição real do notebook.'**
  String get keyboardThemesStartFirst;

  /// No description provided for @keyboardThemesAdd.
  ///
  /// In pt_BR, this message translates to:
  /// **'Adicionar um tema personalizado'**
  String get keyboardThemesAdd;

  /// No description provided for @keyboardThemesPreview.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ver demonstração do teclado'**
  String get keyboardThemesPreview;

  /// No description provided for @keyboardThemesEditTip.
  ///
  /// In pt_BR, this message translates to:
  /// **'Editar'**
  String get keyboardThemesEditTip;

  /// No description provided for @keyboardThemesImage.
  ///
  /// In pt_BR, this message translates to:
  /// **'Escolher imagem de fundo'**
  String get keyboardThemesImage;

  /// No description provided for @keyboardThemesExport.
  ///
  /// In pt_BR, this message translates to:
  /// **'Exportar tema'**
  String get keyboardThemesExport;

  /// No description provided for @keyboardThemesExportDialog.
  ///
  /// In pt_BR, this message translates to:
  /// **'Exportar tema do teclado'**
  String get keyboardThemesExportDialog;

  /// No description provided for @keyboardThemesOpacity.
  ///
  /// In pt_BR, this message translates to:
  /// **'Opacidade'**
  String get keyboardThemesOpacity;

  /// No description provided for @keyboardThemesBlur.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desfoque'**
  String get keyboardThemesBlur;

  /// No description provided for @keyboardThemesRadius.
  ///
  /// In pt_BR, this message translates to:
  /// **'Arredondamento dos cantos'**
  String get keyboardThemesRadius;

  /// No description provided for @keyboardThemesBackground.
  ///
  /// In pt_BR, this message translates to:
  /// **'Fundo'**
  String get keyboardThemesBackground;

  /// No description provided for @keyboardThemesKey.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tecla'**
  String get keyboardThemesKey;

  /// No description provided for @keyboardThemesBorder.
  ///
  /// In pt_BR, this message translates to:
  /// **'Borda'**
  String get keyboardThemesBorder;

  /// No description provided for @keyboardThemesText.
  ///
  /// In pt_BR, this message translates to:
  /// **'Texto'**
  String get keyboardThemesText;

  /// No description provided for @keyboardThemesTrackpad.
  ///
  /// In pt_BR, this message translates to:
  /// **'Trackpad'**
  String get keyboardThemesTrackpad;

  /// No description provided for @keyboardThemesKeyOpacity.
  ///
  /// In pt_BR, this message translates to:
  /// **'Opacidade das teclas'**
  String get keyboardThemesKeyOpacity;

  /// No description provided for @keyboardThemesTrackpadOpacity.
  ///
  /// In pt_BR, this message translates to:
  /// **'Opacidade do trackpad'**
  String get keyboardThemesTrackpadOpacity;

  /// No description provided for @keyboardThemesShowTrackpadLabel.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostrar o rótulo TRACKPAD'**
  String get keyboardThemesShowTrackpadLabel;

  /// No description provided for @keyboardThemesDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Temas do teclado de notebook e aparência personalizada'**
  String get keyboardThemesDescription;

  /// No description provided for @autoSettingsTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Auto'**
  String get autoSettingsTitle;

  /// No description provided for @autoSettingsDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Opções da tela do Android Auto e do espelhamento no celular'**
  String get autoSettingsDescription;

  /// No description provided for @autoSettingsOptions.
  ///
  /// In pt_BR, this message translates to:
  /// **'Android Auto'**
  String get autoSettingsOptions;

  /// No description provided for @autoMatchPhoneOrientation.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ajustar a orientação do espelho do celular ao Auto'**
  String get autoMatchPhoneOrientation;

  /// No description provided for @autoMatchPhoneOrientationDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Quando a Área de Trabalho Móvel é exibida no Auto a partir do espelho do celular, ajusta a orientação à proporção da central multimídia.'**
  String get autoMatchPhoneOrientationDescription;

  /// No description provided for @autoExperimentalFeatures.
  ///
  /// In pt_BR, this message translates to:
  /// **'Recursos experimentais'**
  String get autoExperimentalFeatures;

  /// No description provided for @autoHiddenDisplay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ocultar no celular a tela virtual do Auto'**
  String get autoHiddenDisplay;

  /// No description provided for @autoHiddenDisplayDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Transmite a área de trabalho do Auto sem mostrar a sobreposição da tela virtual no celular. A disponibilidade depende do aparelho.'**
  String get autoHiddenDisplayDescription;

  /// No description provided for @autoDisplayModeDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'O Android Auto usa uma tela de desktop independente, dimensionada para a central multimídia conectada.'**
  String get autoDisplayModeDescription;

  /// No description provided for @setupEmbeddedTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurar o acesso da Área de Trabalho Móvel'**
  String get setupEmbeddedTitle;

  /// No description provided for @setupEmbeddedDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conecte o serviço de acesso integrado da Área de Trabalho Móvel.\n\n1. Permita as notificações.\n2. Abra e ative a Depuração por Wi-Fi.\n3. Toque em Parear o dispositivo com um código de pareamento.\n4. Digite no campo da notificação o código de seis dígitos mostrado pelo Android.'**
  String get setupEmbeddedDescription;

  /// No description provided for @setupEmbeddedSetupDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Na Depuração por Wi-Fi, abra “Parear o dispositivo com um código de pareamento”. Quando o serviço de pareamento for detectado, aparecerá automaticamente uma notificação para você digitar o código de seis dígitos.'**
  String get setupEmbeddedSetupDescription;

  /// No description provided for @setupEmbeddedWirelessDebuggingDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abra as configurações de Depuração por Wi-Fi do Android e ative a opção.'**
  String get setupEmbeddedWirelessDebuggingDescription;

  /// No description provided for @setupEmbeddedOpenWirelessDebugging.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abrir Depuração por Wi-Fi'**
  String get setupEmbeddedOpenWirelessDebugging;

  /// No description provided for @setupEmbeddedEnableWirelessDebugging.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ativar Depuração por Wi-Fi'**
  String get setupEmbeddedEnableWirelessDebugging;

  /// No description provided for @setupEmbeddedPairingCode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Código de pareamento'**
  String get setupEmbeddedPairingCode;

  /// No description provided for @setupEmbeddedPairingCodeHint.
  ///
  /// In pt_BR, this message translates to:
  /// **'Digite o código de seis dígitos mostrado pelo Android'**
  String get setupEmbeddedPairingCodeHint;

  /// No description provided for @setupEmbeddedInvalidCode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Digite um código válido de seis dígitos'**
  String get setupEmbeddedInvalidCode;

  /// No description provided for @setupEmbeddedPair.
  ///
  /// In pt_BR, this message translates to:
  /// **'Parear e iniciar'**
  String get setupEmbeddedPair;

  /// No description provided for @setupEmbeddedPairAndStart.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurar o acesso da Área de Trabalho Móvel'**
  String get setupEmbeddedPairAndStart;

  /// No description provided for @setupEmbeddedIncluded.
  ///
  /// In pt_BR, this message translates to:
  /// **'Serviço de acesso da Área de Trabalho Móvel incluído'**
  String get setupEmbeddedIncluded;

  /// No description provided for @setupEmbeddedConnectedDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'A permissão de acesso está pronta para uso.'**
  String get setupEmbeddedConnectedDescription;

  /// No description provided for @setupEmbeddedConfigure.
  ///
  /// In pt_BR, this message translates to:
  /// **'Depuração por Wi-Fi pareada'**
  String get setupEmbeddedConfigure;

  /// No description provided for @setupEmbeddedPairingFailed.
  ///
  /// In pt_BR, this message translates to:
  /// **'Falha no pareamento'**
  String get setupEmbeddedPairingFailed;

  /// No description provided for @setupEmbeddedStartFailed.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível iniciar o serviço de acesso da Área de Trabalho Móvel'**
  String get setupEmbeddedStartFailed;

  /// No description provided for @setupEmbeddedNotificationPermission.
  ///
  /// In pt_BR, this message translates to:
  /// **'Permissão de notificação'**
  String get setupEmbeddedNotificationPermission;

  /// No description provided for @setupEmbeddedAllowNotifications.
  ///
  /// In pt_BR, this message translates to:
  /// **'Permitir notificações'**
  String get setupEmbeddedAllowNotifications;

  /// No description provided for @setupEmbeddedSearchingPairing.
  ///
  /// In pt_BR, this message translates to:
  /// **'Procurando o serviço de pareamento'**
  String get setupEmbeddedSearchingPairing;

  /// No description provided for @setupEmbeddedPairingServiceFound.
  ///
  /// In pt_BR, this message translates to:
  /// **'Serviço de pareamento encontrado'**
  String get setupEmbeddedPairingServiceFound;

  /// No description provided for @setupEmbeddedPairingInProgress.
  ///
  /// In pt_BR, this message translates to:
  /// **'Pareamento em andamento'**
  String get setupEmbeddedPairingInProgress;

  /// No description provided for @setupEmbeddedPairingServiceNotFound.
  ///
  /// In pt_BR, this message translates to:
  /// **'Serviço de pareamento não encontrado'**
  String get setupEmbeddedPairingServiceNotFound;

  /// No description provided for @setupEmbeddedRetryPairing.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tentar parear novamente'**
  String get setupEmbeddedRetryPairing;

  /// No description provided for @setupEmbeddedPairingNotificationReady.
  ///
  /// In pt_BR, this message translates to:
  /// **'Digite o código de seis dígitos no campo da notificação.'**
  String get setupEmbeddedPairingNotificationReady;

  /// No description provided for @experimentalCoverDisplay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Sessão na tela externa'**
  String get experimentalCoverDisplay;

  /// No description provided for @experimentalGamepad.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gamepad experimental'**
  String get experimentalGamepad;

  /// No description provided for @experimentalGamepadDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ativa o gamepad virtual e os botões traseiros L/R na tela externa'**
  String get experimentalGamepadDescription;

  /// No description provided for @experimentalCoverDisplayDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Use o Android ou uma sessão independente na tela externa de um dobrável'**
  String get experimentalCoverDisplayDescription;

  /// No description provided for @experimentalCoverDisplayUnavailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Disponível apenas em dispositivos dobráveis'**
  String get experimentalCoverDisplayUnavailable;

  /// No description provided for @experimentalForceLaptopMode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Forçar disponibilidade do modo notebook'**
  String get experimentalForceLaptopMode;

  /// No description provided for @experimentalForceLaptopModeDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Permite iniciar manualmente o modo notebook pela sobreposição em dispositivos não dobráveis'**
  String get experimentalForceLaptopModeDescription;

  /// No description provided for @experimentalBlackBerryMode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Modo BlackBerry'**
  String get experimentalBlackBerryMode;

  /// No description provided for @experimentalBlackBerryModeDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ativa, no painel de controle, um teclado compacto para celular inspirado em teclados físicos'**
  String get experimentalBlackBerryModeDescription;

  /// No description provided for @blackBerryAutoStart.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abrir automaticamente o modo BlackBerry'**
  String get blackBerryAutoStart;

  /// No description provided for @blackBerryAutoStartDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostra automaticamente o teclado BlackBerry ao iniciar uma sessão da Área de Trabalho Móvel no modo retrato'**
  String get blackBerryAutoStartDescription;

  /// No description provided for @keyboardHaptics.
  ///
  /// In pt_BR, this message translates to:
  /// **'Resposta tátil do teclado'**
  String get keyboardHaptics;

  /// No description provided for @keyboardHapticsDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Vibra ao pressionar teclas do teclado'**
  String get keyboardHapticsDescription;

  /// No description provided for @pointerHaptics.
  ///
  /// In pt_BR, this message translates to:
  /// **'Resposta tátil do ponteiro'**
  String get pointerHaptics;

  /// No description provided for @pointerHapticsDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Vibra ao clicar e fazer gestos no touchpad'**
  String get pointerHapticsDescription;

  /// No description provided for @hapticsStrength.
  ///
  /// In pt_BR, this message translates to:
  /// **'Intensidade da resposta tátil'**
  String get hapticsStrength;

  /// No description provided for @nativeUnknownPermissionResult.
  ///
  /// In pt_BR, this message translates to:
  /// **'O Shizuku retornou um resultado de permissão desconhecido'**
  String get nativeUnknownPermissionResult;

  /// No description provided for @nativeDevice.
  ///
  /// In pt_BR, this message translates to:
  /// **'Dispositivo'**
  String get nativeDevice;

  /// No description provided for @nativeCoverDisplay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tela externa'**
  String get nativeCoverDisplay;

  /// No description provided for @nativeCoverDisplayDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abra o Android ou crie uma sessão independente da Área de Trabalho Móvel na tela externa'**
  String get nativeCoverDisplayDescription;

  /// No description provided for @nativeCoverAndroidDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Use a tela externa com o Android normal enquanto a sessão principal da Área de Trabalho Móvel continua.'**
  String get nativeCoverAndroidDescription;

  /// No description provided for @nativeCoverDextopDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Crie uma sessão da Área de Trabalho Móvel na tela externa, independente da sessão principal.'**
  String get nativeCoverDextopDescription;

  /// No description provided for @nativeOpenCoverAndroid.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abrir o Android na tela externa'**
  String get nativeOpenCoverAndroid;

  /// No description provided for @nativeStopCoverAndroid.
  ///
  /// In pt_BR, this message translates to:
  /// **'Encerrar sessão do Android'**
  String get nativeStopCoverAndroid;

  /// No description provided for @nativeStartCoverDextop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Criar sessão na tela externa'**
  String get nativeStartCoverDextop;

  /// No description provided for @nativeStopCoverDextop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Encerrar a sessão da tela externa'**
  String get nativeStopCoverDextop;

  /// No description provided for @nativeCoverDisplayFailed.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível atualizar a tela externa'**
  String get nativeCoverDisplayFailed;

  /// No description provided for @nativeBackButtons.
  ///
  /// In pt_BR, this message translates to:
  /// **'Botões traseiros'**
  String get nativeBackButtons;

  /// No description provided for @nativeBackButtonsDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Usa a tela externa como botões de ombro L/R e L2/R2'**
  String get nativeBackButtonsDescription;

  /// No description provided for @nativeStartBackButtons.
  ///
  /// In pt_BR, this message translates to:
  /// **'Iniciar botões traseiros'**
  String get nativeStartBackButtons;

  /// No description provided for @nativeStopBackButtons.
  ///
  /// In pt_BR, this message translates to:
  /// **'Encerrar botões traseiros'**
  String get nativeStopBackButtons;

  /// No description provided for @nativeBackButtonsConfirmTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Trocar a tela externa?'**
  String get nativeBackButtonsConfirmTitle;

  /// No description provided for @nativeBackButtonsConfirmMessage.
  ///
  /// In pt_BR, this message translates to:
  /// **'A atividade atual da tela externa será encerrada antes de os botões traseiros aparecerem.'**
  String get nativeBackButtonsConfirmMessage;

  /// No description provided for @nativeSwitchToResolutionSuffix.
  ///
  /// In pt_BR, this message translates to:
  /// **'Alternar para esta resolução e DPI'**
  String get nativeSwitchToResolutionSuffix;

  /// No description provided for @nativeShizukuUnavailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'O Shizuku não está disponível'**
  String get nativeShizukuUnavailable;

  /// No description provided for @nativeSelectedAppCannotLaunch.
  ///
  /// In pt_BR, this message translates to:
  /// **'O aplicativo selecionado não pode ser iniciado'**
  String get nativeSelectedAppCannotLaunch;

  /// No description provided for @nativeShizukuBinderUnavailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'A conexão com o Shizuku não está disponível'**
  String get nativeShizukuBinderUnavailable;

  /// No description provided for @nativeMirrorSurfaceUnavailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'A superfície de espelhamento não está disponível'**
  String get nativeMirrorSurfaceUnavailable;

  /// No description provided for @nativeRotationReleaseUnsupported.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não há suporte para liberar o bloqueio de rotação'**
  String get nativeRotationReleaseUnsupported;

  /// No description provided for @nativePerformanceHudFormat.
  ///
  /// In pt_BR, this message translates to:
  /// **'%1\$.1f FPS  |  %2\$d MB\\nBateria: %3\$d%%  |  %4\$s\\nCPU: %6\$s  |  Entrada: %5\$s'**
  String get nativePerformanceHudFormat;

  /// No description provided for @nativeInputMouse.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mouse'**
  String get nativeInputMouse;

  /// No description provided for @nativeInputTouch.
  ///
  /// In pt_BR, this message translates to:
  /// **'Toque'**
  String get nativeInputTouch;

  /// No description provided for @nativeInputTrackpad.
  ///
  /// In pt_BR, this message translates to:
  /// **'Trackpad'**
  String get nativeInputTrackpad;

  /// No description provided for @nativeInputIdle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Inativo'**
  String get nativeInputIdle;

  /// No description provided for @nativePhysicalMouse.
  ///
  /// In pt_BR, this message translates to:
  /// **'Alternar destino do mouse físico'**
  String get nativePhysicalMouse;

  /// No description provided for @nativePhysicalKeyboard.
  ///
  /// In pt_BR, this message translates to:
  /// **'Alternar destino do teclado físico'**
  String get nativePhysicalKeyboard;

  /// No description provided for @nativePhysicalMouseDemo.
  ///
  /// In pt_BR, this message translates to:
  /// **'Alterne o mouse físico entre o Android e a Área de Trabalho Móvel. Disponível em dispositivos compatíveis enquanto uma tela externa estiver conectada.'**
  String get nativePhysicalMouseDemo;

  /// No description provided for @nativePhysicalKeyboardDemo.
  ///
  /// In pt_BR, this message translates to:
  /// **'Alterne o teclado físico entre o Android e a Área de Trabalho Móvel. Disponível em dispositivos compatíveis enquanto uma tela externa estiver conectada.'**
  String get nativePhysicalKeyboardDemo;

  /// No description provided for @nativeTheThreeFingerGestureIsAnEssential.
  ///
  /// In pt_BR, this message translates to:
  /// **'O gesto de três dedos é essencial durante o uso da Área de Trabalho Móvel.\\nToque em um botão para ver sua função.'**
  String get nativeTheThreeFingerGestureIsAnEssential;

  /// No description provided for @nativeAsusZenuiRogUiDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desktop ASUS ZenUI / ROG UI'**
  String get nativeAsusZenuiRogUiDesktop;

  /// No description provided for @nativeAndroidDesktopFreeform.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desktop Android (forma livre)'**
  String get nativeAndroidDesktopFreeform;

  /// No description provided for @nativeColorosDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desktop ColorOS'**
  String get nativeColorosDesktop;

  /// No description provided for @nativeAdjustTheVolumeOfPlaybackOnDextop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ajustar o volume de mídia na Área de Trabalho Móvel'**
  String get nativeAdjustTheVolumeOfPlaybackOnDextop;

  /// No description provided for @nativeSwitchBetweenPortraitAndLandscapeOrientationOf.
  ///
  /// In pt_BR, this message translates to:
  /// **'Alternar a Área de Trabalho Móvel entre retrato e paisagem'**
  String get nativeSwitchBetweenPortraitAndLandscapeOrientationOf;

  /// No description provided for @nativeSwitchDextopResolutionAndDpi.
  ///
  /// In pt_BR, this message translates to:
  /// **'Alterar a resolução e o DPI da Área de Trabalho Móvel'**
  String get nativeSwitchDextopResolutionAndDpi;

  /// No description provided for @nativePauseDextopAndReturnYourAndroidTo.
  ///
  /// In pt_BR, this message translates to:
  /// **'Pausar a Área de Trabalho Móvel e retornar o Android ao uso normal.'**
  String get nativePauseDextopAndReturnYourAndroidTo;

  /// No description provided for @nativeTerminateYourDextopSession.
  ///
  /// In pt_BR, this message translates to:
  /// **'Encerrar a sessão da Área de Trabalho Móvel'**
  String get nativeTerminateYourDextopSession;

  /// No description provided for @nativeAdjustTheBrightnessOfTheDesktopDisplay.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ajustar o brilho da tela da Área de Trabalho Móvel'**
  String get nativeAdjustTheBrightnessOfTheDesktopDisplay;

  /// No description provided for @nativeHonorMagicosDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desktop HONOR MagicOS'**
  String get nativeHonorMagicosDesktop;

  /// No description provided for @nativeHuaweiEmuiDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desktop Huawei EMUI'**
  String get nativeHuaweiEmuiDesktop;

  /// No description provided for @nativeHyperosMiuiDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desktop HyperOS / MIUI'**
  String get nativeHyperosMiuiDesktop;

  /// No description provided for @nativeMotorolaLenovoDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desktop Motorola / Lenovo'**
  String get nativeMotorolaLenovoDesktop;

  /// No description provided for @nativeNothingOsDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desktop Nothing OS'**
  String get nativeNothingOsDesktop;

  /// No description provided for @nativeOriginosFuntouchOsDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desktop OriginOS / Funtouch OS'**
  String get nativeOriginosFuntouchOsDesktop;

  /// No description provided for @nativePixelAndroidDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desktop Android do Pixel'**
  String get nativePixelAndroidDesktop;

  /// No description provided for @nativeShizukuPermissionCheckTimedOut.
  ///
  /// In pt_BR, this message translates to:
  /// **'A verificação de permissão do Shizuku expirou'**
  String get nativeShizukuPermissionCheckTimedOut;

  /// No description provided for @nativeRequiresConnectionToShizukuAndPermissions.
  ///
  /// In pt_BR, this message translates to:
  /// **'É necessária uma conexão com o Shizuku e a respectiva permissão'**
  String get nativeRequiresConnectionToShizukuAndPermissions;

  /// No description provided for @nativePermissionDeniedToShizuku.
  ///
  /// In pt_BR, this message translates to:
  /// **'A permissão do Shizuku foi negada'**
  String get nativePermissionDeniedToShizuku;

  /// No description provided for @nativePleaseInstallShizuku.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instale o Shizuku'**
  String get nativePleaseInstallShizuku;

  /// No description provided for @nativePleaseStartShizuku.
  ///
  /// In pt_BR, this message translates to:
  /// **'Inicie o Shizuku'**
  String get nativePleaseStartShizuku;

  /// No description provided for @nativeRemoveThisResolution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Excluir esta resolução'**
  String get nativeRemoveThisResolution;

  /// No description provided for @nativeNoAppSelected.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nenhum aplicativo selecionado'**
  String get nativeNoAppSelected;

  /// No description provided for @nativeCouldNotStartApp.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível iniciar o aplicativo'**
  String get nativeCouldNotStartApp;

  /// No description provided for @nativeAddCustomResolution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Adicionar resolução personalizada'**
  String get nativeAddCustomResolution;

  /// No description provided for @nativeRotate180.
  ///
  /// In pt_BR, this message translates to:
  /// **'Girar 180°'**
  String get nativeRotate180;

  /// No description provided for @nativeCast.
  ///
  /// In pt_BR, this message translates to:
  /// **'Transmitir'**
  String get nativeCast;

  /// No description provided for @nativeCastDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Escolher um receptor de transmissão'**
  String get nativeCastDescription;

  /// No description provided for @nativeNoCastDevices.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nenhum dispositivo Google Cast está disponível'**
  String get nativeNoCastDevices;

  /// No description provided for @nativeCastUnavailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível inicializar o Google Cast'**
  String get nativeCastUnavailable;

  /// No description provided for @nativeCasting.
  ///
  /// In pt_BR, this message translates to:
  /// **'Transmitindo'**
  String get nativeCasting;

  /// No description provided for @nativeStopCasting.
  ///
  /// In pt_BR, this message translates to:
  /// **'Parar transmissão'**
  String get nativeStopCasting;

  /// No description provided for @nativeScanAgain.
  ///
  /// In pt_BR, this message translates to:
  /// **'Procurar novamente'**
  String get nativeScanAgain;

  /// No description provided for @nativeScanning.
  ///
  /// In pt_BR, this message translates to:
  /// **'Procurando…'**
  String get nativeScanning;

  /// No description provided for @nativeCursor.
  ///
  /// In pt_BR, this message translates to:
  /// **'Cursor'**
  String get nativeCursor;

  /// No description provided for @nativeTap.
  ///
  /// In pt_BR, this message translates to:
  /// **'Toque'**
  String get nativeTap;

  /// No description provided for @nativeTapToExit.
  ///
  /// In pt_BR, this message translates to:
  /// **'Toque para sair'**
  String get nativeTapToExit;

  /// No description provided for @nativeTapToOpen.
  ///
  /// In pt_BR, this message translates to:
  /// **'Toque para abrir'**
  String get nativeTapToOpen;

  /// No description provided for @nativeYouCanRearrangeTheLayoutInThe.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mantenha um botão pressionado para reorganizar o painel de controle.'**
  String get nativeYouCanRearrangeTheLayoutInThe;

  /// No description provided for @nativeWorkSpace.
  ///
  /// In pt_BR, this message translates to:
  /// **'Espaço de trabalho'**
  String get nativeWorkSpace;

  /// No description provided for @nativeExpandWorkspace.
  ///
  /// In pt_BR, this message translates to:
  /// **'Expandir espaço de trabalho'**
  String get nativeExpandWorkspace;

  /// No description provided for @nativeTemporarilyReturnToAndroid.
  ///
  /// In pt_BR, this message translates to:
  /// **'Retornar temporariamente ao Android'**
  String get nativeTemporarilyReturnToAndroid;

  /// No description provided for @nativeLaptopMode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Modo laptop'**
  String get nativeLaptopMode;

  /// No description provided for @nativeLaptopModeDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostra um teclado e um trackpad na metade inferior de um dispositivo dobrável.'**
  String get nativeLaptopModeDescription;

  /// No description provided for @nativeKeyboardStyle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Estilo'**
  String get nativeKeyboardStyle;

  /// No description provided for @nativeBlackBerryMode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Modo BlackBerry'**
  String get nativeBlackBerryMode;

  /// No description provided for @nativeBlackBerryLayout.
  ///
  /// In pt_BR, this message translates to:
  /// **'Layout BlackBerry'**
  String get nativeBlackBerryLayout;

  /// No description provided for @nativeAutomaticLayout.
  ///
  /// In pt_BR, this message translates to:
  /// **'Layout automático'**
  String get nativeAutomaticLayout;

  /// No description provided for @nativeManualHeight.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ajuste manual da altura'**
  String get nativeManualHeight;

  /// No description provided for @nativeKeyboardHeight.
  ///
  /// In pt_BR, this message translates to:
  /// **'Altura do teclado'**
  String get nativeKeyboardHeight;

  /// No description provided for @nativeBlackBerryModeDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostra um teclado compacto para celular sem trackpad.'**
  String get nativeBlackBerryModeDescription;

  /// No description provided for @nativeVirtualGamepad.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gamepad virtual'**
  String get nativeVirtualGamepad;

  /// No description provided for @nativeVirtualGamepadDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostra um gamepad virtual com ABXY, analógicos, gatilhos e botões do sistema.'**
  String get nativeVirtualGamepadDescription;

  /// No description provided for @nativeGamepadLayout.
  ///
  /// In pt_BR, this message translates to:
  /// **'Layout do gamepad'**
  String get nativeGamepadLayout;

  /// No description provided for @nativeGameBoyStyle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Estilo Game Boy'**
  String get nativeGameBoyStyle;

  /// No description provided for @nativeGameBoyStyleDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostra um direcional, A/B e SELECT/START inspirados no Game Boy.'**
  String get nativeGameBoyStyleDescription;

  /// No description provided for @nativeOk.
  ///
  /// In pt_BR, this message translates to:
  /// **'OK'**
  String get nativeOk;

  /// No description provided for @nativeCancel.
  ///
  /// In pt_BR, this message translates to:
  /// **'Cancelar'**
  String get nativeCancel;

  /// No description provided for @nativeKeyboardSettings.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações do teclado'**
  String get nativeKeyboardSettings;

  /// No description provided for @nativeKeyboardSettingsDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Personalize a aparência do teclado do modo laptop'**
  String get nativeKeyboardSettingsDescription;

  /// No description provided for @nativeTheme.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tema'**
  String get nativeTheme;

  /// No description provided for @nativeSwipeLanguage.
  ///
  /// In pt_BR, this message translates to:
  /// **'Idioma da digitação por deslize'**
  String get nativeSwipeLanguage;

  /// No description provided for @nativeSwipeLanguageDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'A digitação por toque continua usando seu IME atual'**
  String get nativeSwipeLanguageDescription;

  /// No description provided for @nativeKeyboardThemeStandard.
  ///
  /// In pt_BR, this message translates to:
  /// **'Padrão'**
  String get nativeKeyboardThemeStandard;

  /// No description provided for @nativeKeyboardThemeCrimson.
  ///
  /// In pt_BR, this message translates to:
  /// **'Carmesim'**
  String get nativeKeyboardThemeCrimson;

  /// No description provided for @nativeKeyboardThemeCloud.
  ///
  /// In pt_BR, this message translates to:
  /// **'Cloud Pop'**
  String get nativeKeyboardThemeCloud;

  /// No description provided for @nativeKeyboardThemeAmoled.
  ///
  /// In pt_BR, this message translates to:
  /// **'AMOLED'**
  String get nativeKeyboardThemeAmoled;

  /// No description provided for @nativeKeyboardThemeStandardDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Teclado escuro neutro'**
  String get nativeKeyboardThemeStandardDescription;

  /// No description provided for @nativeKeyboardThemeCrimsonDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Carmesim quente inspirado em computadores dobráveis'**
  String get nativeKeyboardThemeCrimsonDescription;

  /// No description provided for @nativeKeyboardThemeCloudDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Teclado azul-claro suave'**
  String get nativeKeyboardThemeCloudDescription;

  /// No description provided for @nativeKeyboardThemeAmoledDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Teclado preto verdadeiro com economia de energia'**
  String get nativeKeyboardThemeAmoledDescription;

  /// No description provided for @nativeKeyboardThemeCustomDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tema de teclado personalizado'**
  String get nativeKeyboardThemeCustomDescription;

  /// No description provided for @nativeOpenDextopWithYourSavedAppPlacement.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abrir a Área de Trabalho Móvel com a disposição de aplicativos salva'**
  String get nativeOpenDextopWithYourSavedAppPlacement;

  /// No description provided for @nativeSaveAndApply.
  ///
  /// In pt_BR, this message translates to:
  /// **'Salvar e aplicar'**
  String get nativeSaveAndApply;

  /// No description provided for @nativeFailedToSaveUnableToRetrieveRunning.
  ///
  /// In pt_BR, this message translates to:
  /// **'Falha ao salvar: não foi possível obter os aplicativos em execução na Área de Trabalho Móvel.'**
  String get nativeFailedToSaveUnableToRetrieveRunning;

  /// No description provided for @nativeFailedToSaveFailedToWriteTo.
  ///
  /// In pt_BR, this message translates to:
  /// **'Falha ao salvar: não foi possível gravar no armazenamento do dispositivo.'**
  String get nativeFailedToSaveFailedToWriteTo;

  /// No description provided for @nativeViewSavedWorkspacesAndSaveCurrentArrangement.
  ///
  /// In pt_BR, this message translates to:
  /// **'Veja os espaços de trabalho salvos e salve a disposição atual'**
  String get nativeViewSavedWorkspacesAndSaveCurrentArrangement;

  /// No description provided for @nativeNoSavedWorkspaces.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nenhum espaço de trabalho salvo'**
  String get nativeNoSavedWorkspaces;

  /// No description provided for @nativePleaseStartDextopFirst.
  ///
  /// In pt_BR, this message translates to:
  /// **'Inicie a Área de Trabalho Móvel primeiro'**
  String get nativePleaseStartDextopFirst;

  /// No description provided for @nativeReconnect.
  ///
  /// In pt_BR, this message translates to:
  /// **'Reconectar'**
  String get nativeReconnect;

  /// No description provided for @nativeWidth.
  ///
  /// In pt_BR, this message translates to:
  /// **'Largura'**
  String get nativeWidth;

  /// No description provided for @nativeReturn.
  ///
  /// In pt_BR, this message translates to:
  /// **'Voltar'**
  String get nativeReturn;

  /// No description provided for @nativePermissionRequestInProgress.
  ///
  /// In pt_BR, this message translates to:
  /// **'Solicitação de permissão em andamento'**
  String get nativePermissionRequestInProgress;

  /// No description provided for @nativeHorizontalHolding.
  ///
  /// In pt_BR, this message translates to:
  /// **'Paisagem'**
  String get nativeHorizontalHolding;

  /// No description provided for @nativeSaveTheCurrentAppArrangementAsA.
  ///
  /// In pt_BR, this message translates to:
  /// **'Salvar a disposição atual dos aplicativos como espaço de trabalho'**
  String get nativeSaveTheCurrentAppArrangementAsA;

  /// No description provided for @nativeAddCurrentAppPlacement.
  ///
  /// In pt_BR, this message translates to:
  /// **'Adicionar disposição atual dos aplicativos'**
  String get nativeAddCurrentAppPlacement;

  /// No description provided for @nativeScreenBrightness.
  ///
  /// In pt_BR, this message translates to:
  /// **'Brilho da tela'**
  String get nativeScreenBrightness;

  /// No description provided for @nativeUseTheScreenAsATrackpadTo.
  ///
  /// In pt_BR, this message translates to:
  /// **'Use a tela como trackpad para controlar o cursor'**
  String get nativeUseTheScreenAsATrackpadTo;

  /// No description provided for @nativeEnd.
  ///
  /// In pt_BR, this message translates to:
  /// **'Encerrar'**
  String get nativeEnd;

  /// No description provided for @nativeEdit.
  ///
  /// In pt_BR, this message translates to:
  /// **'Editar'**
  String get nativeEdit;

  /// No description provided for @nativeVerticalHolding.
  ///
  /// In pt_BR, this message translates to:
  /// **'Retrato'**
  String get nativeVerticalHolding;

  /// No description provided for @nativeReconnectIfYouHaveDisplayOrConnection.
  ///
  /// In pt_BR, this message translates to:
  /// **'Reconecte se houver problemas de exibição ou conexão'**
  String get nativeReconnectIfYouHaveDisplayOrConnection;

  /// No description provided for @nativeDisplayProfileIsOutOfRange.
  ///
  /// In pt_BR, this message translates to:
  /// **'O perfil da tela está fora do intervalo'**
  String get nativeDisplayProfileIsOutOfRange;

  /// No description provided for @nativeResolution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Resolução'**
  String get nativeResolution;

  /// No description provided for @nativeEditResolution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Editar resolução'**
  String get nativeEditResolution;

  /// No description provided for @nativeAddResolution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Adicionar resolução'**
  String get nativeAddResolution;

  /// No description provided for @nativeSendsTheTouchedPositionDirectlyToDextop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Envia a posição tocada diretamente à Área de Trabalho Móvel como um toque'**
  String get nativeSendsTheTouchedPositionDirectlyToDextop;

  /// No description provided for @nativeAddAndApply.
  ///
  /// In pt_BR, this message translates to:
  /// **'Adicionar e aplicar'**
  String get nativeAddAndApply;

  /// No description provided for @nativeEditPlacement.
  ///
  /// In pt_BR, this message translates to:
  /// **'Editar disposição'**
  String get nativeEditPlacement;

  /// No description provided for @nativeCompletePlacementEdit.
  ///
  /// In pt_BR, this message translates to:
  /// **'Concluir edição da disposição'**
  String get nativeCompletePlacementEdit;

  /// No description provided for @nativeVolume.
  ///
  /// In pt_BR, this message translates to:
  /// **'Volume'**
  String get nativeVolume;

  /// No description provided for @nativeHeight.
  ///
  /// In pt_BR, this message translates to:
  /// **'Altura'**
  String get nativeHeight;

  /// No description provided for @multiTouchUpgradeTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'O aplicativo foi atualizado'**
  String get multiTouchUpgradeTitle;

  /// No description provided for @multiTouchUpgradeBody.
  ///
  /// In pt_BR, this message translates to:
  /// **'Agora há suporte a multitoque, então os gestos também foram atualizados.'**
  String get multiTouchUpgradeBody;

  /// No description provided for @multiTouchUpgradeLandscape.
  ///
  /// In pt_BR, this message translates to:
  /// **'Paisagem\\nDeslize três dedos para a direita a partir da borda esquerda'**
  String get multiTouchUpgradeLandscape;

  /// No description provided for @multiTouchUpgradePortrait.
  ///
  /// In pt_BR, this message translates to:
  /// **'Retrato\\nDeslize três dedos para baixo a partir da borda superior'**
  String get multiTouchUpgradePortrait;

  /// No description provided for @multiTouchUpgradeClose.
  ///
  /// In pt_BR, this message translates to:
  /// **'Entendi'**
  String get multiTouchUpgradeClose;

  /// No description provided for @appUpdatedTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Atualizado para {version}!'**
  String appUpdatedTitle(String version);

  /// No description provided for @appUpdatedMessage.
  ///
  /// In pt_BR, this message translates to:
  /// **'A Área de Trabalho Móvel foi atualizada para a versão mais recente.'**
  String get appUpdatedMessage;

  /// No description provided for @androidSwipeImeLabel.
  ///
  /// In pt_BR, this message translates to:
  /// **'Digitação por deslize — Área Móvel'**
  String get androidSwipeImeLabel;

  /// No description provided for @androidAccessibilityServiceDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Controla a tela virtual, a entrada e o painel de controle da Área de Trabalho Móvel'**
  String get androidAccessibilityServiceDescription;

  /// No description provided for @androidEmbeddedPairingChannel.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configuração de acesso integrado'**
  String get androidEmbeddedPairingChannel;

  /// No description provided for @androidEmbeddedPairingTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Parear a Área de Trabalho Móvel'**
  String get androidEmbeddedPairingTitle;

  /// No description provided for @androidEmbeddedPairingNotificationText.
  ///
  /// In pt_BR, this message translates to:
  /// **'Digite o código de seis dígitos exibido na Depuração por Wi-Fi'**
  String get androidEmbeddedPairingNotificationText;

  /// No description provided for @androidEmbeddedPairingCode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Código de pareamento de seis dígitos'**
  String get androidEmbeddedPairingCode;

  /// No description provided for @androidEmbeddedPairingEnterCode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Digitar código de pareamento'**
  String get androidEmbeddedPairingEnterCode;

  /// No description provided for @androidEmbeddedPairingSuccess.
  ///
  /// In pt_BR, this message translates to:
  /// **'A Área de Trabalho Móvel está conectada'**
  String get androidEmbeddedPairingSuccess;

  /// No description provided for @androidEmbeddedPairingSuccessMessage.
  ///
  /// In pt_BR, this message translates to:
  /// **'Pareamento concluído. Volte para a Área de Trabalho Móvel.'**
  String get androidEmbeddedPairingSuccessMessage;

  /// No description provided for @androidEmbeddedPairingFailed.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível conectar a Área de Trabalho Móvel'**
  String get androidEmbeddedPairingFailed;

  /// No description provided for @androidEmbeddedPairingInvalidCode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Digite um código de seis dígitos'**
  String get androidEmbeddedPairingInvalidCode;

  /// No description provided for @androidEmbeddedPairingSearching.
  ///
  /// In pt_BR, this message translates to:
  /// **'Procurando serviço de pareamento'**
  String get androidEmbeddedPairingSearching;

  /// No description provided for @androidEmbeddedPairingServiceFound.
  ///
  /// In pt_BR, this message translates to:
  /// **'Serviço de pareamento encontrado'**
  String get androidEmbeddedPairingServiceFound;

  /// No description provided for @androidEmbeddedPairingServiceNotFound.
  ///
  /// In pt_BR, this message translates to:
  /// **'Serviço de pareamento não encontrado'**
  String get androidEmbeddedPairingServiceNotFound;

  /// No description provided for @androidEmbeddedPairingRetry.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tentar novamente'**
  String get androidEmbeddedPairingRetry;

  /// No description provided for @androidEmbeddedPairingInProgress.
  ///
  /// In pt_BR, this message translates to:
  /// **'Pareamento em andamento'**
  String get androidEmbeddedPairingInProgress;

  /// No description provided for @windowManager.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gerenciador de janelas'**
  String get windowManager;

  /// No description provided for @windowManagerSystem.
  ///
  /// In pt_BR, this message translates to:
  /// **'Área de trabalho do sistema'**
  String get windowManagerSystem;

  /// No description provided for @windowManagerSystemDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Usa o Samsung DeX ou as janelas de área de trabalho do Android como fornecidos pelo sistema'**
  String get windowManagerSystemDescription;

  /// No description provided for @windowManagerPlasma.
  ///
  /// In pt_BR, this message translates to:
  /// **'Plasma (WM próprio)'**
  String get windowManagerPlasma;

  /// No description provided for @windowManagerPlasmaDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desenha uma área de trabalho no estilo KDE Plasma 6, com painel, decorações de janela, mosaico e áreas de trabalho virtuais próprios'**
  String get windowManagerPlasmaDescription;

  /// No description provided for @windowManagerPlasmaV2.
  ///
  /// In pt_BR, this message translates to:
  /// **'Plasma v2 (WM com composição)'**
  String get windowManagerPlasmaV2;

  /// No description provided for @windowManagerPlasmaV2Description.
  ///
  /// In pt_BR, this message translates to:
  /// **'Executa cada app em sua própria tela virtual e o mostra dentro de uma janela Breeze desenhada pelo app: arrastar, redimensionar, animações e áreas de trabalho virtuais acontecem dentro da Área de Trabalho Móvel. O painel controla redes, áudio e energia.'**
  String get windowManagerPlasmaV2Description;

  /// No description provided for @windowManagerAppliedLive.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aplicado à área de trabalho em execução'**
  String get windowManagerAppliedLive;

  /// No description provided for @plasmaSettingsTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações do Plasma'**
  String get plasmaSettingsTitle;

  /// No description provided for @plasmaSettingsSummary.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aparência, painel, áreas virtuais e animações'**
  String get plasmaSettingsSummary;

  /// No description provided for @plasmaHotCorner.
  ///
  /// In pt_BR, this message translates to:
  /// **'Canto ativo superior esquerdo'**
  String get plasmaHotCorner;

  /// No description provided for @plasmaHotCornerDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mover o ponteiro para o canto superior esquerdo abre a Visão geral'**
  String get plasmaHotCornerDescription;

  /// No description provided for @plasmaShortcutsTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Atalhos de teclado'**
  String get plasmaShortcutsTitle;

  /// No description provided for @plasmaShortcutsBody.
  ///
  /// In pt_BR, this message translates to:
  /// **'Meta: Kickoff\nAlt+Espaço / Alt+F2: KRunner\nMeta+W: Visão geral\nAlt+Tab: Alternar janelas\nMeta+Setas: Mosaico rápido\nMeta+PgUp / PgDn: Maximizar / Minimizar\nMeta+D: Espiar a área de trabalho\nCtrl+F1–F4 / Meta+Ctrl+←→: Áreas virtuais\nAlt+F3: Menu de operações da janela\nAlt+F4: Fechar'**
  String get plasmaShortcutsBody;

  /// No description provided for @nativePlasmaAccentColor.
  ///
  /// In pt_BR, this message translates to:
  /// **'Cor de destaque'**
  String get nativePlasmaAccentColor;

  /// No description provided for @nativePlasmaAddToFavorites.
  ///
  /// In pt_BR, this message translates to:
  /// **'Adicionar aos favoritos'**
  String get nativePlasmaAddToFavorites;

  /// No description provided for @nativePlasmaAllApplications.
  ///
  /// In pt_BR, this message translates to:
  /// **'Todos os aplicativos'**
  String get nativePlasmaAllApplications;

  /// No description provided for @nativePlasmaAllDesktops.
  ///
  /// In pt_BR, this message translates to:
  /// **'Todas as áreas de trabalho'**
  String get nativePlasmaAllDesktops;

  /// No description provided for @nativePlasmaAnimationSpeed.
  ///
  /// In pt_BR, this message translates to:
  /// **'Velocidade da animação'**
  String get nativePlasmaAnimationSpeed;

  /// No description provided for @nativePlasmaAppInfo.
  ///
  /// In pt_BR, this message translates to:
  /// **'Informações do app'**
  String get nativePlasmaAppInfo;

  /// No description provided for @nativePlasmaApplication.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aplicativo'**
  String get nativePlasmaApplication;

  /// No description provided for @nativePlasmaApplications.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aplicativos'**
  String get nativePlasmaApplications;

  /// No description provided for @nativePlasmaAudioVolume.
  ///
  /// In pt_BR, this message translates to:
  /// **'Volume de áudio'**
  String get nativePlasmaAudioVolume;

  /// No description provided for @nativePlasmaCalculatorCopy.
  ///
  /// In pt_BR, this message translates to:
  /// **'Calculadora — clique para copiar'**
  String get nativePlasmaCalculatorCopy;

  /// No description provided for @nativePlasmaCategoryGames.
  ///
  /// In pt_BR, this message translates to:
  /// **'Jogos'**
  String get nativePlasmaCategoryGames;

  /// No description provided for @nativePlasmaCategoryGraphics.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gráficos'**
  String get nativePlasmaCategoryGraphics;

  /// No description provided for @nativePlasmaCategoryInternet.
  ///
  /// In pt_BR, this message translates to:
  /// **'Internet'**
  String get nativePlasmaCategoryInternet;

  /// No description provided for @nativePlasmaCategoryLost.
  ///
  /// In pt_BR, this message translates to:
  /// **'Outros'**
  String get nativePlasmaCategoryLost;

  /// No description provided for @nativePlasmaCategoryMultimedia.
  ///
  /// In pt_BR, this message translates to:
  /// **'Multimídia'**
  String get nativePlasmaCategoryMultimedia;

  /// No description provided for @nativePlasmaCategoryNews.
  ///
  /// In pt_BR, this message translates to:
  /// **'Notícias'**
  String get nativePlasmaCategoryNews;

  /// No description provided for @nativePlasmaCategoryOffice.
  ///
  /// In pt_BR, this message translates to:
  /// **'Escritório'**
  String get nativePlasmaCategoryOffice;

  /// No description provided for @nativePlasmaCategorySystem.
  ///
  /// In pt_BR, this message translates to:
  /// **'Sistema'**
  String get nativePlasmaCategorySystem;

  /// No description provided for @nativePlasmaCategoryTravel.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mapas e viagens'**
  String get nativePlasmaCategoryTravel;

  /// No description provided for @nativePlasmaCategoryVideo.
  ///
  /// In pt_BR, this message translates to:
  /// **'Vídeo'**
  String get nativePlasmaCategoryVideo;

  /// No description provided for @nativePlasmaCharging.
  ///
  /// In pt_BR, this message translates to:
  /// **'Carregando'**
  String get nativePlasmaCharging;

  /// No description provided for @nativePlasmaClose.
  ///
  /// In pt_BR, this message translates to:
  /// **'Fechar'**
  String get nativePlasmaClose;

  /// No description provided for @nativePlasmaCloseAll.
  ///
  /// In pt_BR, this message translates to:
  /// **'Fechar todas'**
  String get nativePlasmaCloseAll;

  /// No description provided for @nativePlasmaColorScheme.
  ///
  /// In pt_BR, this message translates to:
  /// **'Esquema de cores'**
  String get nativePlasmaColorScheme;

  /// No description provided for @nativePlasmaComputer.
  ///
  /// In pt_BR, this message translates to:
  /// **'Computador'**
  String get nativePlasmaComputer;

  /// No description provided for @nativePlasmaConfigureAudio.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurar dispositivos de áudio…'**
  String get nativePlasmaConfigureAudio;

  /// No description provided for @nativePlasmaConfigureDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurar área de trabalho e papel de parede…'**
  String get nativePlasmaConfigureDesktop;

  /// No description provided for @nativePlasmaConfigureNetwork.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurar conexões de rede…'**
  String get nativePlasmaConfigureNetwork;

  /// No description provided for @nativePlasmaConfigurePower.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurar gerenciamento de energia…'**
  String get nativePlasmaConfigurePower;

  /// No description provided for @nativePlasmaConnected.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conectado'**
  String get nativePlasmaConnected;

  /// No description provided for @nativePlasmaDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Área de trabalho'**
  String get nativePlasmaDesktop;

  /// No description provided for @nativePlasmaDesktopN.
  ///
  /// In pt_BR, this message translates to:
  /// **'Área de trabalho %1\$d'**
  String get nativePlasmaDesktopN;

  /// No description provided for @nativePlasmaDeviceSpeaker.
  ///
  /// In pt_BR, this message translates to:
  /// **'Alto-falante do dispositivo'**
  String get nativePlasmaDeviceSpeaker;

  /// No description provided for @nativePlasmaDextopSettings.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações da Área de Trabalho Móvel'**
  String get nativePlasmaDextopSettings;

  /// No description provided for @nativePlasmaDischarging.
  ///
  /// In pt_BR, this message translates to:
  /// **'Descarregando'**
  String get nativePlasmaDischarging;

  /// No description provided for @nativePlasmaDisconnected.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desconectado'**
  String get nativePlasmaDisconnected;

  /// No description provided for @nativePlasmaDocked.
  ///
  /// In pt_BR, this message translates to:
  /// **'Fixo na borda'**
  String get nativePlasmaDocked;

  /// No description provided for @nativePlasmaFavorites.
  ///
  /// In pt_BR, this message translates to:
  /// **'Favoritos'**
  String get nativePlasmaFavorites;

  /// No description provided for @nativePlasmaFloating.
  ///
  /// In pt_BR, this message translates to:
  /// **'Flutuante'**
  String get nativePlasmaFloating;

  /// No description provided for @nativePlasmaFollowSystem.
  ///
  /// In pt_BR, this message translates to:
  /// **'Seguir o sistema'**
  String get nativePlasmaFollowSystem;

  /// No description provided for @nativePlasmaInstant.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instantâneo'**
  String get nativePlasmaInstant;

  /// No description provided for @nativePlasmaKrunnerHint.
  ///
  /// In pt_BR, this message translates to:
  /// **'Pesquisar…'**
  String get nativePlasmaKrunnerHint;

  /// No description provided for @nativePlasmaLeave.
  ///
  /// In pt_BR, this message translates to:
  /// **'Sair…'**
  String get nativePlasmaLeave;

  /// No description provided for @nativePlasmaLogOut.
  ///
  /// In pt_BR, this message translates to:
  /// **'Encerrar sessão'**
  String get nativePlasmaLogOut;

  /// No description provided for @nativePlasmaLoggingOutIn.
  ///
  /// In pt_BR, this message translates to:
  /// **'Encerrando a sessão em %1\$d segundos'**
  String get nativePlasmaLoggingOutIn;

  /// No description provided for @nativePlasmaMaximize.
  ///
  /// In pt_BR, this message translates to:
  /// **'Maximizar'**
  String get nativePlasmaMaximize;

  /// No description provided for @nativePlasmaMinimize.
  ///
  /// In pt_BR, this message translates to:
  /// **'Minimizar'**
  String get nativePlasmaMinimize;

  /// No description provided for @nativePlasmaMobileData.
  ///
  /// In pt_BR, this message translates to:
  /// **'Dados móveis'**
  String get nativePlasmaMobileData;

  /// No description provided for @nativePlasmaMoveToDesktopN.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mover para a área de trabalho %1\$d'**
  String get nativePlasmaMoveToDesktopN;

  /// No description provided for @nativePlasmaNetworks.
  ///
  /// In pt_BR, this message translates to:
  /// **'Redes'**
  String get nativePlasmaNetworks;

  /// No description provided for @nativePlasmaNewInstance.
  ///
  /// In pt_BR, this message translates to:
  /// **'Iniciar nova instância'**
  String get nativePlasmaNewInstance;

  /// No description provided for @nativePlasmaNoActiveNetwork.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nenhuma rede ativa'**
  String get nativePlasmaNoActiveNetwork;

  /// No description provided for @nativePlasmaNoFavorites.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ainda não há favoritos. Clique com o botão direito em um app para adicionar.'**
  String get nativePlasmaNoFavorites;

  /// No description provided for @nativePlasmaNoMatches.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nenhum resultado'**
  String get nativePlasmaNoMatches;

  /// No description provided for @nativePlasmaNoWindows.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nenhuma janela nesta área de trabalho'**
  String get nativePlasmaNoWindows;

  /// No description provided for @nativePlasmaNothingHere.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nada aqui'**
  String get nativePlasmaNothingHere;

  /// No description provided for @nativePlasmaOpen.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abrir'**
  String get nativePlasmaOpen;

  /// No description provided for @nativePlasmaOverview.
  ///
  /// In pt_BR, this message translates to:
  /// **'Visão geral'**
  String get nativePlasmaOverview;

  /// No description provided for @nativePlasmaOverviewSearch.
  ///
  /// In pt_BR, this message translates to:
  /// **'Digite para pesquisar…'**
  String get nativePlasmaOverviewSearch;

  /// No description provided for @nativePlasmaPanel.
  ///
  /// In pt_BR, this message translates to:
  /// **'Painel'**
  String get nativePlasmaPanel;

  /// No description provided for @nativePlasmaPeekAtDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Espiar a área de trabalho'**
  String get nativePlasmaPeekAtDesktop;

  /// No description provided for @nativePlasmaPinToTaskManager.
  ///
  /// In pt_BR, this message translates to:
  /// **'Fixar no gerenciador de tarefas'**
  String get nativePlasmaPinToTaskManager;

  /// No description provided for @nativePlasmaPlaces.
  ///
  /// In pt_BR, this message translates to:
  /// **'Locais'**
  String get nativePlasmaPlaces;

  /// No description provided for @nativePlasmaPowerAndBattery.
  ///
  /// In pt_BR, this message translates to:
  /// **'Energia e bateria'**
  String get nativePlasmaPowerAndBattery;

  /// No description provided for @nativePlasmaRecentApplications.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aplicativos recentes'**
  String get nativePlasmaRecentApplications;

  /// No description provided for @nativePlasmaRemoveFromFavorites.
  ///
  /// In pt_BR, this message translates to:
  /// **'Remover dos favoritos'**
  String get nativePlasmaRemoveFromFavorites;

  /// No description provided for @nativePlasmaRestart.
  ///
  /// In pt_BR, this message translates to:
  /// **'Reiniciar'**
  String get nativePlasmaRestart;

  /// No description provided for @nativePlasmaRestartingIn.
  ///
  /// In pt_BR, this message translates to:
  /// **'Reiniciando em %1\$d segundos'**
  String get nativePlasmaRestartingIn;

  /// No description provided for @nativePlasmaRestore.
  ///
  /// In pt_BR, this message translates to:
  /// **'Restaurar'**
  String get nativePlasmaRestore;

  /// No description provided for @nativePlasmaRunCommand.
  ///
  /// In pt_BR, this message translates to:
  /// **'Executar comando (KRunner)'**
  String get nativePlasmaRunCommand;

  /// No description provided for @nativePlasmaSearch.
  ///
  /// In pt_BR, this message translates to:
  /// **'Pesquisar…'**
  String get nativePlasmaSearch;

  /// No description provided for @nativePlasmaShutDown.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desligar'**
  String get nativePlasmaShutDown;

  /// No description provided for @nativePlasmaShuttingDownIn.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desligando a Área de Trabalho Móvel em %1\$d segundos'**
  String get nativePlasmaShuttingDownIn;

  /// No description provided for @nativePlasmaSleep.
  ///
  /// In pt_BR, this message translates to:
  /// **'Suspender'**
  String get nativePlasmaSleep;

  /// No description provided for @nativePlasmaSleepingIn.
  ///
  /// In pt_BR, this message translates to:
  /// **'Suspendendo em %1\$d segundos'**
  String get nativePlasmaSleepingIn;

  /// No description provided for @nativePlasmaStatusAndNotifications.
  ///
  /// In pt_BR, this message translates to:
  /// **'Status e notificações'**
  String get nativePlasmaStatusAndNotifications;

  /// No description provided for @nativePlasmaStopPeeking.
  ///
  /// In pt_BR, this message translates to:
  /// **'Parar de espiar a área de trabalho'**
  String get nativePlasmaStopPeeking;

  /// No description provided for @nativePlasmaSystemSettings.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações do sistema'**
  String get nativePlasmaSystemSettings;

  /// No description provided for @nativePlasmaTileLeft.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mosaico à esquerda'**
  String get nativePlasmaTileLeft;

  /// No description provided for @nativePlasmaTileRight.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mosaico à direita'**
  String get nativePlasmaTileRight;

  /// No description provided for @nativePlasmaUnpinFromTaskManager.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desafixar do gerenciador de tarefas'**
  String get nativePlasmaUnpinFromTaskManager;

  /// No description provided for @nativePlasmaVirtualDesktops.
  ///
  /// In pt_BR, this message translates to:
  /// **'Áreas de trabalho virtuais'**
  String get nativePlasmaVirtualDesktops;

  /// No description provided for @nativePlasmaWallpaper.
  ///
  /// In pt_BR, this message translates to:
  /// **'Papel de parede'**
  String get nativePlasmaWallpaper;

  /// No description provided for @nativePlasmaWallpaperAndroid.
  ///
  /// In pt_BR, this message translates to:
  /// **'Papel de parede do Android'**
  String get nativePlasmaWallpaperAndroid;

  /// No description provided for @nativePlasmaWallpaperPlasma.
  ///
  /// In pt_BR, this message translates to:
  /// **'Plasma'**
  String get nativePlasmaWallpaperPlasma;

  /// No description provided for @nativePlasmaBreezeDark.
  ///
  /// In pt_BR, this message translates to:
  /// **'Breeze Dark'**
  String get nativePlasmaBreezeDark;

  /// No description provided for @nativePlasmaBreezeLight.
  ///
  /// In pt_BR, this message translates to:
  /// **'Breeze Light'**
  String get nativePlasmaBreezeLight;

  /// No description provided for @nativePlasmaAirplaneMode.
  ///
  /// In pt_BR, this message translates to:
  /// **'Modo avião'**
  String get nativePlasmaAirplaneMode;

  /// No description provided for @nativePlasmaBluetooth.
  ///
  /// In pt_BR, this message translates to:
  /// **'Bluetooth'**
  String get nativePlasmaBluetooth;

  /// No description provided for @nativePlasmaOn.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ativado'**
  String get nativePlasmaOn;

  /// No description provided for @nativePlasmaOff.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desativado'**
  String get nativePlasmaOff;

  /// No description provided for @nativePlasmaCurrentConnection.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conexão atual'**
  String get nativePlasmaCurrentConnection;

  /// No description provided for @nativePlasmaAvailableNetworks.
  ///
  /// In pt_BR, this message translates to:
  /// **'Redes disponíveis'**
  String get nativePlasmaAvailableNetworks;

  /// No description provided for @nativePlasmaNoInternet.
  ///
  /// In pt_BR, this message translates to:
  /// **'Sem acesso à internet'**
  String get nativePlasmaNoInternet;

  /// No description provided for @nativePlasmaWifiIsOff.
  ///
  /// In pt_BR, this message translates to:
  /// **'O Wi-Fi está desativado'**
  String get nativePlasmaWifiIsOff;

  /// No description provided for @nativePlasmaScanning.
  ///
  /// In pt_BR, this message translates to:
  /// **'Procurando…'**
  String get nativePlasmaScanning;

  /// No description provided for @nativePlasmaNoNetworksFound.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nenhuma rede encontrada'**
  String get nativePlasmaNoNetworksFound;

  /// No description provided for @nativePlasmaSavedNetwork.
  ///
  /// In pt_BR, this message translates to:
  /// **'Salva'**
  String get nativePlasmaSavedNetwork;

  /// No description provided for @nativePlasmaSecuredNetwork.
  ///
  /// In pt_BR, this message translates to:
  /// **'Protegida'**
  String get nativePlasmaSecuredNetwork;

  /// No description provided for @nativePlasmaOpenNetwork.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aberta'**
  String get nativePlasmaOpenNetwork;

  /// No description provided for @nativePlasmaPassword.
  ///
  /// In pt_BR, this message translates to:
  /// **'Senha'**
  String get nativePlasmaPassword;

  /// No description provided for @nativePlasmaConnect.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conectar'**
  String get nativePlasmaConnect;

  /// No description provided for @nativePlasmaCancel.
  ///
  /// In pt_BR, this message translates to:
  /// **'Cancelar'**
  String get nativePlasmaCancel;

  /// No description provided for @nativePlasmaConnectingTo.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conectando a %1\$s…'**
  String get nativePlasmaConnectingTo;

  /// No description provided for @nativePlasmaConnectionFailed.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível conectar'**
  String get nativePlasmaConnectionFailed;

  /// No description provided for @nativePlasmaUnavailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Indisponível neste dispositivo'**
  String get nativePlasmaUnavailable;

  /// No description provided for @nativePlasmaVolume.
  ///
  /// In pt_BR, this message translates to:
  /// **'Volume'**
  String get nativePlasmaVolume;

  /// No description provided for @nativePlasmaMediaVolume.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mídia'**
  String get nativePlasmaMediaVolume;

  /// No description provided for @nativePlasmaRingVolume.
  ///
  /// In pt_BR, this message translates to:
  /// **'Toque'**
  String get nativePlasmaRingVolume;

  /// No description provided for @nativePlasmaNotificationVolume.
  ///
  /// In pt_BR, this message translates to:
  /// **'Notificações'**
  String get nativePlasmaNotificationVolume;

  /// No description provided for @nativePlasmaAlarmVolume.
  ///
  /// In pt_BR, this message translates to:
  /// **'Alarme'**
  String get nativePlasmaAlarmVolume;

  /// No description provided for @nativePlasmaNothingPlaying.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nada tocando'**
  String get nativePlasmaNothingPlaying;

  /// No description provided for @nativePlasmaOutputDevice.
  ///
  /// In pt_BR, this message translates to:
  /// **'Dispositivo de saída'**
  String get nativePlasmaOutputDevice;

  /// No description provided for @nativePlasmaHeadphones.
  ///
  /// In pt_BR, this message translates to:
  /// **'Fones de ouvido'**
  String get nativePlasmaHeadphones;

  /// No description provided for @nativePlasmaExternalOutput.
  ///
  /// In pt_BR, this message translates to:
  /// **'Saída externa'**
  String get nativePlasmaExternalOutput;

  /// No description provided for @nativePlasmaBatterySaver.
  ///
  /// In pt_BR, this message translates to:
  /// **'Economia de bateria'**
  String get nativePlasmaBatterySaver;

  /// No description provided for @nativePlasmaAutoBrightness.
  ///
  /// In pt_BR, this message translates to:
  /// **'Brilho automático'**
  String get nativePlasmaAutoBrightness;

  /// No description provided for @nativePlasmaScreenBrightness.
  ///
  /// In pt_BR, this message translates to:
  /// **'Brilho da tela'**
  String get nativePlasmaScreenBrightness;

  /// No description provided for @nativePlasmaFullyCharged.
  ///
  /// In pt_BR, this message translates to:
  /// **'Carga completa'**
  String get nativePlasmaFullyCharged;

  /// No description provided for @nativePlasmaPowerSourceAc.
  ///
  /// In pt_BR, this message translates to:
  /// **'Tomada'**
  String get nativePlasmaPowerSourceAc;

  /// No description provided for @nativePlasmaPowerSourceWireless.
  ///
  /// In pt_BR, this message translates to:
  /// **'Sem fio'**
  String get nativePlasmaPowerSourceWireless;

  /// No description provided for @nativePlasmaPowerSourceDock.
  ///
  /// In pt_BR, this message translates to:
  /// **'Base'**
  String get nativePlasmaPowerSourceDock;

  /// No description provided for @nativePlasmaTimeUntilFull.
  ///
  /// In pt_BR, this message translates to:
  /// **'%1\$s até carga completa'**
  String get nativePlasmaTimeUntilFull;

  /// No description provided for @nativePlasmaHoursMinutes.
  ///
  /// In pt_BR, this message translates to:
  /// **'%1\$d h %2\$d min'**
  String get nativePlasmaHoursMinutes;

  /// No description provided for @nativePlasmaMinutes.
  ///
  /// In pt_BR, this message translates to:
  /// **'%1\$d min'**
  String get nativePlasmaMinutes;

  /// No description provided for @nativePlasmaApplying.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aplicando…'**
  String get nativePlasmaApplying;

  /// No description provided for @linuxDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Execute Linux (Debian, Ubuntu, Arch Linux ARM) sem root e abra os apps em janelas do Plasma.'**
  String get linuxDescription;

  /// No description provided for @linuxUnsupportedDevice.
  ///
  /// In pt_BR, this message translates to:
  /// **'O Linux requer um dispositivo arm64.'**
  String get linuxUnsupportedDevice;

  /// No description provided for @linuxRequiresPlasma.
  ///
  /// In pt_BR, this message translates to:
  /// **'O Linux só está disponível com o Plasma v2.'**
  String get linuxRequiresPlasma;

  /// No description provided for @linuxSwitchToPlasma.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mudar para o Plasma v2'**
  String get linuxSwitchToPlasma;

  /// No description provided for @linuxRequiresPrivilege.
  ///
  /// In pt_BR, this message translates to:
  /// **'O Linux usa o serviço de acesso integrado da Área de Trabalho Móvel. Conecte-o em Configurar o acesso da Área de Trabalho Móvel. Os apps externos Stellar ou Shizuku são opcionais.'**
  String get linuxRequiresPrivilege;

  /// No description provided for @linuxEnable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ativar Linux'**
  String get linuxEnable;

  /// No description provided for @linuxEnableDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Crie e gerencie contêineres e abra apps Linux pelo Plasma'**
  String get linuxEnableDescription;

  /// No description provided for @linuxNoContainers.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ainda não há contêineres. Use Adicionar contêiner para criar um.'**
  String get linuxNoContainers;

  /// No description provided for @linuxAddContainer.
  ///
  /// In pt_BR, this message translates to:
  /// **'Adicionar contêiner'**
  String get linuxAddContainer;

  /// No description provided for @linuxContainerName.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nome'**
  String get linuxContainerName;

  /// No description provided for @linuxDistribution.
  ///
  /// In pt_BR, this message translates to:
  /// **'Distribuição'**
  String get linuxDistribution;

  /// No description provided for @linuxStorageNote.
  ///
  /// In pt_BR, this message translates to:
  /// **'Os contêineres ficam em /data/local/tmp/dextop/linux e continuam lá mesmo depois de desinstalar o app. Exclua-os aqui quando não precisar mais.'**
  String get linuxStorageNote;

  /// No description provided for @linuxInstall.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instalar'**
  String get linuxInstall;

  /// No description provided for @linuxCancel.
  ///
  /// In pt_BR, this message translates to:
  /// **'Cancelar'**
  String get linuxCancel;

  /// No description provided for @linuxDelete.
  ///
  /// In pt_BR, this message translates to:
  /// **'Excluir'**
  String get linuxDelete;

  /// No description provided for @linuxDeleteConfirm.
  ///
  /// In pt_BR, this message translates to:
  /// **'Excluir “{name}” e todos os seus arquivos?'**
  String linuxDeleteConfirm(String name);

  /// No description provided for @linuxRepair.
  ///
  /// In pt_BR, this message translates to:
  /// **'Reparar'**
  String get linuxRepair;

  /// No description provided for @linuxShowLog.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostrar registro'**
  String get linuxShowLog;

  /// No description provided for @linuxRunCommand.
  ///
  /// In pt_BR, this message translates to:
  /// **'Executar comando'**
  String get linuxRunCommand;

  /// No description provided for @linuxRun.
  ///
  /// In pt_BR, this message translates to:
  /// **'Executar'**
  String get linuxRun;

  /// No description provided for @linuxStateInstalling.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instalando'**
  String get linuxStateInstalling;

  /// No description provided for @linuxStateInstalled.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instalado'**
  String get linuxStateInstalled;

  /// No description provided for @linuxStateFailed.
  ///
  /// In pt_BR, this message translates to:
  /// **'Falhou'**
  String get linuxStateFailed;

  /// No description provided for @linuxPhaseDownload.
  ///
  /// In pt_BR, this message translates to:
  /// **'Baixando'**
  String get linuxPhaseDownload;

  /// No description provided for @linuxPhaseVerify.
  ///
  /// In pt_BR, this message translates to:
  /// **'Verificando'**
  String get linuxPhaseVerify;

  /// No description provided for @linuxPhaseExtract.
  ///
  /// In pt_BR, this message translates to:
  /// **'Extraindo'**
  String get linuxPhaseExtract;

  /// No description provided for @linuxPhaseConfigure.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurando'**
  String get linuxPhaseConfigure;

  /// No description provided for @linuxPhaseProvision.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instalando pacotes necessários'**
  String get linuxPhaseProvision;

  /// No description provided for @linuxOpenDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abrir área de trabalho'**
  String get linuxOpenDesktop;

  /// No description provided for @linuxStartPlasmaFirst.
  ///
  /// In pt_BR, this message translates to:
  /// **'Inicie primeiro a Área de Trabalho Móvel com o Plasma v2.'**
  String get linuxStartPlasmaFirst;

  /// No description provided for @nativePlasmaShowKeyboard.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mostrar teclado'**
  String get nativePlasmaShowKeyboard;

  /// No description provided for @nativeLinuxDesktopConnecting.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conectando ao serviço Linux…'**
  String get nativeLinuxDesktopConnecting;

  /// No description provided for @nativeLinuxDesktopStartingContainer.
  ///
  /// In pt_BR, this message translates to:
  /// **'Iniciando o contêiner e a tela…'**
  String get nativeLinuxDesktopStartingContainer;

  /// No description provided for @nativeLinuxDesktopStartingWm.
  ///
  /// In pt_BR, this message translates to:
  /// **'Iniciando o gerenciador de janelas…'**
  String get nativeLinuxDesktopStartingWm;

  /// No description provided for @nativePlasmaCategoryLinux.
  ///
  /// In pt_BR, this message translates to:
  /// **'Linux'**
  String get nativePlasmaCategoryLinux;

  /// No description provided for @linuxPhasePrepare.
  ///
  /// In pt_BR, this message translates to:
  /// **'Obtendo informações da imagem'**
  String get linuxPhasePrepare;

  /// No description provided for @linuxPhaseRefresh.
  ///
  /// In pt_BR, this message translates to:
  /// **'Atualizando listas de pacotes'**
  String get linuxPhaseRefresh;

  /// No description provided for @linuxPhaseFinish.
  ///
  /// In pt_BR, this message translates to:
  /// **'Concluindo'**
  String get linuxPhaseFinish;

  /// No description provided for @linuxPhaseStep.
  ///
  /// In pt_BR, this message translates to:
  /// **'Etapa {step} de {total}'**
  String linuxPhaseStep(int step, int total);

  /// No description provided for @linuxSetupTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configuração do Linux'**
  String get linuxSetupTitle;

  /// No description provided for @linuxSetupIntro.
  ///
  /// In pt_BR, this message translates to:
  /// **'Crie um ambiente Linux do seu jeito. Escolha a área de trabalho, o idioma, o método de entrada e os aplicativos.'**
  String get linuxSetupIntro;

  /// No description provided for @linuxSetupExisting.
  ///
  /// In pt_BR, this message translates to:
  /// **'Adicione recursos a este ambiente Linux. Os arquivos e aplicativos existentes são mantidos. Reabra a área de trabalho após a configuração para aplicar as mudanças.'**
  String get linuxSetupExisting;

  /// No description provided for @linuxSetupSystem.
  ///
  /// In pt_BR, this message translates to:
  /// **'Seu ambiente Linux'**
  String get linuxSetupSystem;

  /// No description provided for @linuxSetupDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Deixe a área de trabalho do seu jeito'**
  String get linuxSetupDesktop;

  /// No description provided for @linuxSetupLanguage.
  ///
  /// In pt_BR, this message translates to:
  /// **'Idioma e fontes'**
  String get linuxSetupLanguage;

  /// No description provided for @linuxSetupInput.
  ///
  /// In pt_BR, this message translates to:
  /// **'Digitar no seu idioma'**
  String get linuxSetupInput;

  /// No description provided for @linuxSetupApps.
  ///
  /// In pt_BR, this message translates to:
  /// **'Escolha seus aplicativos'**
  String get linuxSetupApps;

  /// No description provided for @linuxSetupReview.
  ///
  /// In pt_BR, this message translates to:
  /// **'Pronto para configurar'**
  String get linuxSetupReview;

  /// No description provided for @linuxSetupProgress.
  ///
  /// In pt_BR, this message translates to:
  /// **'Preparando seu ambiente'**
  String get linuxSetupProgress;

  /// No description provided for @linuxSetupDone.
  ///
  /// In pt_BR, this message translates to:
  /// **'Seu ambiente Linux está pronto'**
  String get linuxSetupDone;

  /// No description provided for @linuxSetupDoneDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'Abra a área de trabalho pela aba Linux ou abra apps Linux individuais pelo Plasma. No Fcitx 5, use Ctrl+Espaço para trocar o método de entrada.'**
  String get linuxSetupDoneDetail;

  /// No description provided for @linuxSetupNext.
  ///
  /// In pt_BR, this message translates to:
  /// **'Continuar'**
  String get linuxSetupNext;

  /// No description provided for @linuxSetupBack.
  ///
  /// In pt_BR, this message translates to:
  /// **'Voltar'**
  String get linuxSetupBack;

  /// No description provided for @linuxSetupApply.
  ///
  /// In pt_BR, this message translates to:
  /// **'Iniciar configuração'**
  String get linuxSetupApply;

  /// No description provided for @linuxSetupCustomize.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurar / adicionar recursos'**
  String get linuxSetupCustomize;

  /// No description provided for @linuxSetupMinimal.
  ///
  /// In pt_BR, this message translates to:
  /// **'IceWM mínimo'**
  String get linuxSetupMinimal;

  /// No description provided for @linuxSetupMinimalDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'Uma área de trabalho leve com Xvfb, IceWM e um terminal. Escolha os extras nas próximas etapas.'**
  String get linuxSetupMinimalDetail;

  /// No description provided for @linuxSetupComplete.
  ///
  /// In pt_BR, this message translates to:
  /// **'IceWM para o dia a dia'**
  String get linuxSetupComplete;

  /// No description provided for @linuxSetupCompleteDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'Já vem com temas, ícones, renderização por software Mesa, gerenciador de arquivos e editor de texto selecionados. Você pode ajustar cada escolha.'**
  String get linuxSetupCompleteDetail;

  /// No description provided for @linuxSetupThemes.
  ///
  /// In pt_BR, this message translates to:
  /// **'Temas e ícones'**
  String get linuxSetupThemes;

  /// No description provided for @linuxSetupThemesDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'Temas do IceWM e estilo Adwaita para apps GTK.'**
  String get linuxSetupThemesDetail;

  /// No description provided for @linuxSetupGraphics.
  ///
  /// In pt_BR, this message translates to:
  /// **'Suporte gráfico Mesa'**
  String get linuxSetupGraphics;

  /// No description provided for @linuxSetupGraphicsDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instala as bibliotecas OpenGL / EGL e a renderização por software. Esta área de trabalho Xvfb não oferece aceleração de GPU por hardware.'**
  String get linuxSetupGraphicsDetail;

  /// No description provided for @linuxSetupLocale.
  ///
  /// In pt_BR, this message translates to:
  /// **'Idioma do Linux'**
  String get linuxSetupLocale;

  /// No description provided for @linuxSetupLocaleDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gera a localidade UTF-8 escolhida e a aplica à área de trabalho e aos apps compatíveis.'**
  String get linuxSetupLocaleDetail;

  /// No description provided for @linuxSetupFonts.
  ///
  /// In pt_BR, this message translates to:
  /// **'Fontes japonesas, chinesas e coreanas'**
  String get linuxSetupFonts;

  /// No description provided for @linuxSetupFontsDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instala as fontes Noto CJK. As fontes Noto gerais e de emoji vêm em todas as configurações.'**
  String get linuxSetupFontsDetail;

  /// No description provided for @linuxSetupNoIme.
  ///
  /// In pt_BR, this message translates to:
  /// **'Usar só o teclado do Android'**
  String get linuxSetupNoIme;

  /// No description provided for @linuxSetupNoImeDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não inicia um método de entrada do Linux. O teclado do Android continua disponível no Plasma.'**
  String get linuxSetupNoImeDetail;

  /// No description provided for @linuxSetupImeDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'O Fcitx 5 inicia junto com a sessão Linux, com integração GTK / Qt. Métodos de entrada com texto CJK também instalam as fontes CJK.'**
  String get linuxSetupImeDetail;

  /// No description provided for @linuxSetupMozc.
  ///
  /// In pt_BR, this message translates to:
  /// **'Japonês — Mozc'**
  String get linuxSetupMozc;

  /// No description provided for @linuxSetupPinyin.
  ///
  /// In pt_BR, this message translates to:
  /// **'Chinês — Pinyin'**
  String get linuxSetupPinyin;

  /// No description provided for @linuxSetupHangul.
  ///
  /// In pt_BR, this message translates to:
  /// **'Coreano — Hangul'**
  String get linuxSetupHangul;

  /// No description provided for @linuxSetupFirefoxDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'Firefox ESR no Debian; Firefox no Arch.'**
  String get linuxSetupFirefoxDetail;

  /// No description provided for @linuxSetupChromeDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'Google Chrome oficial para ARM64, baixado do Google. Disponível no Debian e no Ubuntu.'**
  String get linuxSetupChromeDetail;

  /// No description provided for @linuxSetupChromiumDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'Chromium de código aberto, do repositório da distribuição.'**
  String get linuxSetupChromiumDetail;

  /// No description provided for @linuxSetupSnapUnavailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'Indisponível nesta imagem do Ubuntu: este pacote exige Snap. Escolha Debian / Arch ou selecione o Google Chrome.'**
  String get linuxSetupSnapUnavailable;

  /// No description provided for @linuxSetupChromeUnavailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'O instalador oficial está disponível aqui para Debian e Ubuntu.'**
  String get linuxSetupChromeUnavailable;

  /// No description provided for @linuxSetupBrowserNote.
  ///
  /// In pt_BR, this message translates to:
  /// **'Os navegadores usam inicializadores compatíveis com PRoot, com o sandbox desativado. Instale só os navegadores que você quer usar neste ambiente.'**
  String get linuxSetupBrowserNote;

  /// No description provided for @linuxSetupFiles.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gerenciador de arquivos'**
  String get linuxSetupFiles;

  /// No description provided for @linuxSetupFilesDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'PCManFM — navegue por pastas e gerencie arquivos.'**
  String get linuxSetupFilesDetail;

  /// No description provided for @linuxSetupEditor.
  ///
  /// In pt_BR, this message translates to:
  /// **'Editor de texto'**
  String get linuxSetupEditor;

  /// No description provided for @linuxSetupEditorDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mousepad — um editor gráfico leve.'**
  String get linuxSetupEditorDetail;

  /// No description provided for @linuxSetupOffice.
  ///
  /// In pt_BR, this message translates to:
  /// **'Pacote de escritório'**
  String get linuxSetupOffice;

  /// No description provided for @linuxSetupOfficeDetail.
  ///
  /// In pt_BR, this message translates to:
  /// **'LibreOffice — documentos, planilhas e apresentações. Exige um download maior e mais espaço.'**
  String get linuxSetupOfficeDetail;

  /// No description provided for @linuxSetupStorage.
  ///
  /// In pt_BR, this message translates to:
  /// **'Mantenha alguns GB livres. O tamanho do download e da instalação depende da distribuição e dos apps escolhidos. A instalação continua mesmo se você sair desta tela.'**
  String get linuxSetupStorage;

  /// No description provided for @linuxSetupAdditive.
  ///
  /// In pt_BR, this message translates to:
  /// **'Apps não selecionados não são removidos. A configuração adiciona os pacotes escolhidos e atualiza o idioma e as opções da sessão.'**
  String get linuxSetupAdditive;

  /// No description provided for @linuxSetupNothingExtra.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nenhum aplicativo opcional'**
  String get linuxSetupNothingExtra;

  /// No description provided for @linuxSetupRetry.
  ///
  /// In pt_BR, this message translates to:
  /// **'Revisar e tentar de novo'**
  String get linuxSetupRetry;

  /// No description provided for @linuxSetupBackground.
  ///
  /// In pt_BR, this message translates to:
  /// **'Continuar em segundo plano'**
  String get linuxSetupBackground;

  /// No description provided for @linuxSetupLog.
  ///
  /// In pt_BR, this message translates to:
  /// **'Detalhes da instalação'**
  String get linuxSetupLog;

  /// No description provided for @linuxSetupFailed.
  ///
  /// In pt_BR, this message translates to:
  /// **'Não foi possível concluir a configuração'**
  String get linuxSetupFailed;

  /// No description provided for @linuxSetupPhaseLanguage.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurando idioma e fontes'**
  String get linuxSetupPhaseLanguage;

  /// No description provided for @linuxSetupPhaseInput.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instalando o método de entrada'**
  String get linuxSetupPhaseInput;

  /// No description provided for @linuxSetupPhaseDesktop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurando temas e ícones'**
  String get linuxSetupPhaseDesktop;

  /// No description provided for @linuxSetupPhaseGraphics.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instalando bibliotecas gráficas'**
  String get linuxSetupPhaseGraphics;

  /// No description provided for @linuxSetupPhaseApps.
  ///
  /// In pt_BR, this message translates to:
  /// **'Instalando seus aplicativos'**
  String get linuxSetupPhaseApps;

  /// No description provided for @linuxSetupPhaseIntegration.
  ///
  /// In pt_BR, this message translates to:
  /// **'Conectando os apps à área de trabalho'**
  String get linuxSetupPhaseIntegration;

  /// No description provided for @linuxRuntimeStarting.
  ///
  /// In pt_BR, this message translates to:
  /// **'Iniciando o Linux…'**
  String get linuxRuntimeStarting;

  /// No description provided for @linuxRuntimeRunning.
  ///
  /// In pt_BR, this message translates to:
  /// **'O Linux está em execução'**
  String get linuxRuntimeRunning;

  /// No description provided for @linuxRuntimeStopped.
  ///
  /// In pt_BR, this message translates to:
  /// **'O Linux está parado'**
  String get linuxRuntimeStopped;

  /// No description provided for @linuxSessionReset.
  ///
  /// In pt_BR, this message translates to:
  /// **'Redefinir sessão'**
  String get linuxSessionReset;

  /// No description provided for @linuxForceStop.
  ///
  /// In pt_BR, this message translates to:
  /// **'Forçar parada do PRoot'**
  String get linuxForceStop;

  /// No description provided for @linuxForceStopConfirm.
  ///
  /// In pt_BR, this message translates to:
  /// **'Parar todos os processos Linux deste ambiente? O trabalho não salvo será perdido. Os aplicativos e arquivos instalados são mantidos.'**
  String get linuxForceStopConfirm;

  /// No description provided for @linuxSettingsTitle.
  ///
  /// In pt_BR, this message translates to:
  /// **'Configurações do Linux'**
  String get linuxSettingsTitle;

  /// No description provided for @linuxSettingsEntry.
  ///
  /// In pt_BR, this message translates to:
  /// **'Gráficos e outras configurações comuns a todos os contêineres'**
  String get linuxSettingsEntry;

  /// No description provided for @linuxGpuSection.
  ///
  /// In pt_BR, this message translates to:
  /// **'Aceleração gráfica'**
  String get linuxGpuSection;

  /// No description provided for @linuxGpuHardware.
  ///
  /// In pt_BR, this message translates to:
  /// **'Hardware (VirGL)'**
  String get linuxGpuHardware;

  /// No description provided for @linuxGpuHardwareDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'O OpenGL é desenhado pela GPU do aparelho. Apps 3D, jogos e navegadores ficam mais rápidos.'**
  String get linuxGpuHardwareDescription;

  /// No description provided for @linuxGpuSoftware.
  ///
  /// In pt_BR, this message translates to:
  /// **'Software (llvmpipe)'**
  String get linuxGpuSoftware;

  /// No description provided for @linuxGpuSoftwareDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Desenhado pela CPU. Mais lento, mas correto para apps que falham na GPU.'**
  String get linuxGpuSoftwareDescription;

  /// No description provided for @linuxGpuUnavailable.
  ///
  /// In pt_BR, this message translates to:
  /// **'O VirGL não está disponível neste aparelho.'**
  String get linuxGpuUnavailable;

  /// No description provided for @linuxGpuApplyNote.
  ///
  /// In pt_BR, this message translates to:
  /// **'As alterações valem para apps iniciados a partir de agora. Reabra a área de trabalho.'**
  String get linuxGpuApplyNote;

  /// No description provided for @linuxGpuRunning.
  ///
  /// In pt_BR, this message translates to:
  /// **'VirGL em uso por {count} contêiner(es)'**
  String linuxGpuRunning(int count);

  /// No description provided for @nativePlasmaNotifications.
  ///
  /// In pt_BR, this message translates to:
  /// **'Notificações'**
  String get nativePlasmaNotifications;

  /// No description provided for @nativePlasmaNoNotifications.
  ///
  /// In pt_BR, this message translates to:
  /// **'Nenhuma notificação'**
  String get nativePlasmaNoNotifications;

  /// No description provided for @nativePlasmaClearAll.
  ///
  /// In pt_BR, this message translates to:
  /// **'Limpar tudo'**
  String get nativePlasmaClearAll;

  /// No description provided for @linuxGpuTurnip.
  ///
  /// In pt_BR, this message translates to:
  /// **'Turnip + Zink (recomendado)'**
  String get linuxGpuTurnip;

  /// No description provided for @linuxGpuTurnipDescription.
  ///
  /// In pt_BR, this message translates to:
  /// **'Os apps Linux usam a GPU Adreno diretamente (Vulkan e OpenGL 4.6). O mais rápido, ideal para jogos.'**
  String get linuxGpuTurnipDescription;

  /// No description provided for @linuxGpuTurnipSetup.
  ///
  /// In pt_BR, this message translates to:
  /// **'Ative os gráficos 3D na configuração do contêiner (a compilação leva cerca de 30 minutos). Até lá é usado o VirGL.'**
  String get linuxGpuTurnipSetup;

  /// No description provided for @linuxSetupPhaseGpu.
  ///
  /// In pt_BR, this message translates to:
  /// **'Compilando o driver da GPU (Turnip)'**
  String get linuxSetupPhaseGpu;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'en',
    'ja',
    'ko',
    'pt',
    'ru',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
