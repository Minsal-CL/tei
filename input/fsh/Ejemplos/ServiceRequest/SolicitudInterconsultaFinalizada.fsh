Instance: EjemploSolicitudInterconsultaFinalizada
InstanceOf: ServiceRequestLE
Usage: #example
Title: "Ejemplo de una Solicitud"
Description: "Ejemplo de una Solicitud finalizada"

* meta.versionId = "7.0"

* extension[MotivoCierreInterconsulta].valueCodeableConcept =  https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoCierreInterconsulta#1 "GES (0)"
* extension[RequiereExamen].valueBoolean = true
* extension[AtencionPreferente].valueBoolean =  true
* extension[ResolutividadAPS].valueBoolean = true
* extension[OrigenInterconsulta].valueCodeableConcept = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSorigenInterconsulta#1 "APS"
* extension[FundamentoPriorizacion].valueString = "ExtensionStringFundamentoPriorizacionEj"
* extension[EstadoInterconsultaCodigo].valueCodeableConcept = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta#1 "A la espera de referencia"

* extension[EspecialidadMedicaDestinoCodigo].valueCodeableConcept = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed#1 "ANATOMÍA PATOLÓGICA"

* extension[SubEspecialidadMedicaDestinoCodigo].valueCodeableConcept = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed#1 "ANATOMÍA PATOLÓGICA"


* extension[PertinenciaInterconsulta].extension[EvaluacionPertinencia].valueCodeableConcept = https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPertinenciaInterconsulta#1 "Pertinente"


//.valueCodeableConcept.coding.code
* extension[CorrespondeGES].valueBoolean = true

* identifier.value = "123"
* status = #draft
* intent = #order

* category
  * coding = CSModalidadAtencionCodigo#1 "Presencial"

* priority = #routine

* code
  * coding = http://snomed.info/sct#103696004
  * text = "Interconsulta para atención presencial"

* subject = Reference(EjemploPatientLE)
* encounter = Reference(EncounterIniciarEjemplo)
* authoredOn = "2024-12-10T09:00:00Z"
* requester = Reference(PractitionerRoleIniciador)
* performer = Reference(PractitionerRoleAtendedor)
* locationCode
  * coding =  CSDestinoReferenciaCodigo#1 "Nivel Secundario"
* reasonCode
  * coding = CSDerivadoParaCodigo#1 "Confirmación"
* supportingInfo[DiagnosticoInicio] = Reference(ConditionInicialEjemplo)
* supportingInfo[TipoAlergia] = Reference(AllergyIntoleranceExample)
* supportingInfo[IndiceComorbilidad] = Reference(IndiceConmorbilidadEjemplo)
* supportingInfo[Cuidador] = Reference(EjemploObservationCuidador)
* supportingInfo[Discapacidad] = Reference(EjemploObservationDiscapacidadLE)
* supportingInfo[motivoDerivacion] = Reference(MotivoDerivacionEjemplo1)
* supportingInfo[SolicitudExamen] = Reference(EjemploSolicitudExamen)
* supportingInfo[ResultadoExamen] = Reference(AnticuerpoAdrenal)

Instance: ExtensionEstadoInterconsultaCodigoLEEj7
InstanceOf: ExtensionEstadoInterconsultaCodigoLE
Usage: #inline

* valueCodeableConcept = CSEstadoInterconsulta#7 "Cerrada"

Instance: ExtensionMotivoCierreInterconsultaEj1
InstanceOf: ExtensionMotivoCierreInterconsulta
Usage: #inline

* valueCodeableConcept = CSMotivoCierreInterconsulta#2 "Atención Realizada (1)"

// Instance: ExtensionSospechaGESEj
// InstanceOf: SospechaPatologiaGes
// Usage: #inline

// * extension[sospechaGES].valueBoolean = false

Instance: ExtensionSospechaGESEj
InstanceOf: SospechaPatologiaGes
Usage: #inline

* valueBoolean = false