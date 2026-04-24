Profile: BundleReferenciarLE
Parent: Bundle
Id: BundleReferenciarLE
Title: "Bundle Referenciar LE"
Description: "Bundle Referenciar LE, recurso utilizado para transportar todos los datos del mensaje relacionado al evento referenciar."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id MS
* id ^short = "Id propio del recurso"
* type MS
* type ^short = "Indica de qué tipo es el Bundle, en este caso de tipo message"
* type = #message
* timestamp 1..1 MS
* timestamp ^short = "Cuando el Bundle fue armado"

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry 7..* MS
* entry ^short = "Entrada en el Bundle: contendrá un recurso o información"
* entry contains messageheader 1..1 MS
        and servicerequest 1..1 MS
        and practitioner 1..1 MS
        and practitionerRole 2..2 MS
        and organization 2..2 MS
        // -----------------------------
        and conditionDiagnostico 0..1 MS //supportingInfo
        and observationComorbilidad 0..1 MS //supportingInfo
        and observationDiscapacidad 0..1 MS //supportingInfo
        and observationCuidador 0..1 MS //supportingInfo
        and ObservationResultadoExamen 0..* MS //supportingInfo
        and allergyintolerance 0..* MS //supportingInfo
        and motivoDerivacion 0..1 MS //supportingInfo
        and SolicitudExamen 0..* MS //supportingInfo        

* entry[messageheader] ^short = "Entrada en el Bundle: contendrá un recurso MessageHeader"
  * fullUrl 0..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only MessageHeaderLE
  * resource ^short = "Cabecera del mensaje que facilita el seguimiento, debe ser siempre el primer entry en Bundle.type = message"
* entry[servicerequest] ^short = "Entrada en el Bundle: contendrá un recurso ServiceRequest"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ServiceRequestLE
  * resource ^short = "Prestación que se requiere para el paciente, que no pudo ser resuelta en el APS"
* entry[organization] ^short = "Entrada en el Bundle: contendrá un recurso Organization"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only OrganizationLE
  * resource ^short = "Centro de salud que realiza la interconsulta y centro de salud hacia donde se referencia la IC"

* entry[practitioner] ^short = "Entrada en el Bundle: contendrá un recurso Practitioner"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerProfesionalLE
  * resource ^short = "Profesional que referencia la interconsulta"

* entry[practitionerRole] ^short = "Entrada en el Bundle: contendrá un recurso PractitionerRole"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only PractitionerRoleLE
  * resource ^short = "Se indica que médico y que organización referencia la inteconsulta. O el destino de referencia"


  // -----------------------------
* entry[conditionDiagnostico] ^short = "Entrada en el Bundle: contendrá un recurso Condition"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ConditionDiagnosticoLE
  * resource ^short = "Condición que especifica el diagnóstico inicial por el cual se emite la IC"

* entry[observationComorbilidad] ^short = "Entrada en el Bundle: contendrá un recurso Observation de indice de Comorbilidad"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ObservationIndiceComorbilidadLE
  * resource ^short = "Indice de Comorbilidad del paciente"

* entry[observationDiscapacidad] ^short = "Entrada en el Bundle: contendrá un recurso Observation de Discapacidad"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ObservationDiscapacidadLE
  * resource ^short = "Observación para indicar si el paciente tiene una discapacidad o no"

* entry[observationCuidador] ^short = "Entrada en el Bundle: contendrá un recurso Observation de Cuidador"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ObservationIniciarCuidadorLE
  * resource ^short = "Observación para indicar si el paciente tiene un cuidador o no"

* entry[ObservationResultadoExamen] ^short = "Entrada en el Bundle: contendrá un recurso Observation de resultado de examen"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ObservationResultadoExamen
  * resource ^short = "Observación para indicar los examenes realizados al paciente"

* entry[allergyintolerance] ^short = "Entrada en el Bundle: contendrá un recurso AllergyIntolerance"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only AllergyIntoleranceIniciarLE
  * resource ^short = "Alergias que padece el paciente"

* entry[motivoDerivacion] ^short = "Entrada en el Bundle: contendrá un recurso QuestionnaireResponse"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only QuestionnaireResponseIniciarLE
  * resource ^short = "Recurso donde se registra el motivo de la derivación del paciente"
* entry[SolicitudExamen] ^short = "Entrada en el Bundle: Solicitud Examen"
  * fullUrl 1..1 MS
  * fullUrl ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 MS
  * resource only ServiceRequestExamenLE
  * resource ^short = "Solicitud de examen"