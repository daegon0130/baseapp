// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get appVersion => 'Versión de la App';

  @override
  String get loading => 'Cargando...';

  @override
  String get serviceIntro => 'Introducción del Servicio';

  @override
  String get serviceIntroDesc1 =>
      'Por favor, introduzca una descripción del servicio en una línea.';

  @override
  String get serviceIntroDesc2 =>
      'Por favor, introduzca el propósito de este servicio.';

  @override
  String get serviceIntroDesc3 =>
      'Por favor, sugiera la siguiente acción del usuario.';

  @override
  String get customerSupport => 'Soporte/Sugerencias';

  @override
  String get inquiryType => 'Tipo de Consulta';

  @override
  String get contentInput => 'Entrada de Contenido';

  @override
  String get emailOptional => 'Correo Electrónico (Opcional)';

  @override
  String get featureSuggestion => 'Sugerencia de Función';

  @override
  String get featureSuggestionDesc =>
      'Cuéntanos sobre las funciones que deseas';

  @override
  String get bugReport => 'Reporte de Error';

  @override
  String get bugReportDesc => 'Cuéntanos sobre cualquier problema';

  @override
  String get otherInquiry => 'Otra Consulta';

  @override
  String get otherInquiryDesc => 'Pregúntanos lo que quieras';

  @override
  String get close => 'Cerrar';

  @override
  String get previous => 'Anterior';

  @override
  String get next => 'Siguiente';

  @override
  String get submit => 'Enviar';

  @override
  String get ok => 'Aceptar';

  @override
  String get messageMinLength => 'Por favor, ingrese al menos 5 caracteres';

  @override
  String get invalidEmail =>
      'Por favor, ingrese una dirección de correo válida';

  @override
  String get messageHint =>
      'Ejemplo) Cuando inicio la aplicación, la pantalla parpadea y aparece una pantalla negra. El mismo problema ocurre incluso después de reiniciar la aplicación.';

  @override
  String get emailHint => 'ejemplo@correo.com';

  @override
  String get emailNote =>
      'Ingrese su dirección de correo para recibir una respuesta. Su correo solo se usará para respuestas';

  @override
  String get notProvided => 'No proporcionado';

  @override
  String get feedbackSuccessTitle => '¡Su consulta ha sido enviada con éxito!';

  @override
  String get feedbackSuccessMessage =>
      'Sus comentarios ayudan a mejorar la aplicación. ¡Muchas gracias!\n\n¡Si le gusta la aplicación, deje una reseña en la tienda! Nos ayuda mucho 😊';
}
