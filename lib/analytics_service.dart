/// Telemetria desativada nesta versão (Área de Trabalho Móvel).
///
/// O projeto original enviava eventos para o Firebase Analytics do autor
/// original. Este fork não coleta nem envia nenhum dado de uso: todas as
/// chamadas abaixo são no-ops mantidos apenas para preservar a API interna.
abstract final class AppAnalytics {
  static Future<void> initialize() async {}

  static Future<void> screen(String name) async {}

  static Future<void> event(String name, [Map<String, Object>? parameters]) =>
      Future.value();
}
