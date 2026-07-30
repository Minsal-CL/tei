# Artifacts - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* **Artifacts**

## Artifacts

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [Motivo Derivacion](Questionnaire-MotivoDerivacion.md) | Permite describir el motivo de derivacion de un paciente |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AllergyIntolerance Iniciar LE](StructureDefinition-AllergyIntoleranceIniciarLE.md) | AllergyIntolerance Iniciar LE |
| [Appointment Agendar LE](StructureDefinition-AppointmentAgendarLE.md) | Appointment Agendar LE |
| [Bundle Agendar LE](StructureDefinition-BundleAgendarLE.md) | Bundle Agendar LE, recurso utilizado para transportar todos los datos del mensaje relacionado al evento Agendar. |
| [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md) | Bundle Atender LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento Atender. |
| [Bundle Iniciar LE](StructureDefinition-BundleIniciarLE.md) | Bundle Iniciar LE, recurso utilizado para transportar todos los datos del mensaje relacionado al evento iniciar. |
| [Bundle Priorizar LE](StructureDefinition-BundlePriorizarLE.md) | Bundle Priorizar LE, recurso utilizado para transportar todos los datos del mensaje relacionado al evento Priorizar. |
| [Bundle Referenciar LE](StructureDefinition-BundleReferenciarLE.md) | Bundle Referenciar LE, recurso utilizado para transportar todos los datos del mensaje relacionado al evento referenciar. |
| [Bundle Revisar LE](StructureDefinition-BundleRevisarLE.md) | Bundle Revisar LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento revisar. |
| [Bundle Terminar LE](StructureDefinition-BundleTerminarLE.md) | Bundle Terminar LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento terminar. |
| [CarePlan Atender LE](StructureDefinition-CarePlanAtenderLE.md) | CarePlan Atender LE es el recurso utilizado para representar las indicaciones entregadas por el profesional como resultado de la atención. |
| [Condition Diagnostico LE](StructureDefinition-ConditionDiagnosticoLE.md) | Condicion Diagnostico LE, recurso que se utiliza para indicar el diagnóstico |
| [Cuidador LE](StructureDefinition-ObservationIniciarCuidadorLE.md) | Indica que el paciente es cuidador, es decir es responsable del cuidado de otra persona |
| [Discapacidad LE](StructureDefinition-ObservationDiscapacidadLE.md) | Observación Discapacidad LE, para describir si un paciente presenta discapacidad |
| [Encounter Atender LE](StructureDefinition-EncounterAtenderLE.md) | Encounter Atender LE recurso que se utiliza para representar el encuentro médico, cuando se comienza a ejecutar la atención de la interconsulta. |
| [Encounter Iniciar LE](StructureDefinition-EncounterIniciarLE.md) | Encounter Iniciar LE recurso que se utiliza para representar el encuentro médico, que representa el encuentro de cuando se solicita la interconsulta. |
| [Indice Comorbilidad LE](StructureDefinition-ObservationIndiceComorbilidadLE.md) | Observation Iniciar Indice Comorbilidad LE, recurso que se utiliza para indicar el riesgo de un paciente según su índice de comorbilidad |
| [MessageHeader LE](StructureDefinition-MessageHeaderLE.md) | MessageHeaderLE |
| [Observation Anamnesis LE](StructureDefinition-ObservationAnamnesisLE.md) | Observation Anamnesis LE |
| [Observation Resultado Examen](StructureDefinition-ObservationResultadoExamen.md) | Resultado de examen anterior como antecedente |
| [Organization LE](StructureDefinition-OrganizationLE.md) | Organization LE según [Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes) |
| [Patient LE](StructureDefinition-PatientLE.md) | Paciente definido para el Registro Maestro de Pacientes |
| [PractitionerRole LE](StructureDefinition-PractitionerRoleLE.md) | PractitionerRole LE, recurso que se utiliza para representar la información de roles, un profesional de la salud. |
| [Prestador Administrativo LE](StructureDefinition-PractitionerAdministrativoLE.md) | Prestador Administrativo definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud. |
| [Prestador Profesional LE](StructureDefinition-PractitionerProfesionalLE.md) | Prestador Profesional Individual definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud. |
| [Provenance Atender LE](StructureDefinition-ProvenanceLE.md) | Provenance Atender LE es el recurso utilizado para registrar cambios en los recursos de Atender LE, con el fin de mantener un seguimiento de las modificaciones realizadas en los registros del paciente. |
| [QuestionnaireResponse Iniciar Motivo de la Derivación LE](StructureDefinition-QuestionnaireResponseIniciarLE.md) | QuestionnaireResponse Iniciar para Motivo de Derivación LE |
| [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md) | ServiceRequest LE recurso utilizado para la representación de los datos de la interconsulta. |
| [Solicitud de Examen LE](StructureDefinition-ServiceRequestExamenLE.md) | ServiceRequestExamen LE recurso utilizado para la representación de la solicitud de examen |
| [Solicitud de Medicamento LE](StructureDefinition-MedicationRequestLE.md) | Perfil para la prescripción de un medicamento al paciente |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Consecuencia Atención Codigo](StructureDefinition-ExtensionConsecuenciaAtencionCodigo.md) | Consecuencia Atención Codigo |
| [Especialidad Médica Destino Código](StructureDefinition-ExtensionEspecialidadMedicaDestinoCodigo.md) | Especialidad Médica Destino Código |
| [Estado Interconsulta Codigo](StructureDefinition-ExtensionEstadoInterconsultaCodigoLE.md) | Estado Interconsulta Codigo |
| [ExtBool Atención Preferente](StructureDefinition-ExtensionBoolAtencionPreferente.md) | ExtBool ¿Hace uso de atención preferente? |
| [ExtBool Pertinencia Atencion Box](StructureDefinition-ExtensionPertinenciaAtencionBox.md) | ExtBool Pertinencia Atencion Box |
| [ExtBool Requiere Examen](StructureDefinition-ExtensionBoolRequiereExamen.md) | ExtBool Requiere Examen |
| [ExtBool Resolutividad APS](StructureDefinition-ExtensionBoolResolutividadAPS.md) | ExtBool Resolutividad APS |
| [ExtBool Solicitud Examenes](StructureDefinition-ExtensionSolicitudExamenes.md) | Extensión que indica si requiere solicitud examenes |
| [ExtString Motivo No Pertinencia](StructureDefinition-ExtensionMotivoNoPertinencia.md) | Extensión que declara un porque de la no pertinencia |
| [Extension ContactadoLE](StructureDefinition-Contactado.md) | Extension ContactadoLE |
| [Extension String Fundamento Priorizacion](StructureDefinition-ExtensionStringFundamentoPriorizacion.md) | Extensión para fundamenta la priorización de la interconsulta |
| [Medio de Contacto](StructureDefinition-ExtensionMediodeContacto.md) | Medio de Contacto |
| [Mención profesional añadida al título profesional](StructureDefinition-Mencion.md) | Mención profesional obtenida junto con el título, dato que se agrega en texto lible |
| [Motivo Cierre Interconsulta](StructureDefinition-ExtensionMotivoCierreInterconsulta.md) | Motivo Cierre Interconsulta |
| [Origen Interconsulta](StructureDefinition-ExtensionOrigenInterconsulta.md) | Origen Interconsulta |
| [País de origen del paciente](StructureDefinition-PaisOrigenMPI.md) | País de origen del paciente |
| [Pertinencia Interconsulta](StructureDefinition-ExtensionPertinenciaInterconsulta.md) | Pertinencia Interconsulta |
| [Pueblos Afrodescendiente](StructureDefinition-PueblosAfrodescendiente.md) | Pueblos Afrodescendiente |
| [Pueblos Originarios](StructureDefinition-PueblosOriginarios.md) | Almacenar si el paciente pertenece a algun pueblo originario |
| [Pueblos Originarios Perteneciente](StructureDefinition-PueblosOriginariosPerteneciente.md) | Pueblos Originarios Perteneciente |
| [Religión](StructureDefinition-Religion.md) | Religión |
| [Situacion Calle](StructureDefinition-SituacionCalle.md) | Situacion Calle |
| [Sospecha Patologia Ges](StructureDefinition-SospechaPatologiaGes.md) | Indica si corresponde a GES |
| [SubEspecialidad Médica Destino Código](StructureDefinition-ExtensionSubEspecialidadMedicaDestinoCodigo.md) | SubEspecialidad Médica Destino Código |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Consecuencia Atención Codigo](ValueSet-VSConsecuenciaAtencionCodigo.md) | Consecuencia Atención Codigo |
| [Códigos de Examenes](ValueSet-CodigoExamen.md) | Codigos de Examenes |
| [Derivado Para](ValueSet-VSDerivadoParaCodigo.md) | Derivado Para |
| [Destino Referencia Codigo](ValueSet-VSDestinoReferenciaCodigo.md) | Destino Referencia Codigo |
| [Especialidad de Destino](ValueSet-VsEspecialidadDest.md) | Son todas las especialidades de destino de una interconsulta |
| [EspecialidadMed](ValueSet-VSEspecialidadMed.md) | EspecialidadMed |
| [Especialidades Farmaceúticas o Química Farmaceúticas](ValueSet-VSEspecialidadFarma.md) | Especialidades Farmaceúticas o Química Farmaceúticas |
| [Especialidades Odontológicas](ValueSet-VSEspecialidadOdont.md) | Especialidades Odontológicas |
| [Especialidades y Subespecialidades Bioquímicas](ValueSet-VSEspecialidadBioqca.md) | Especialidades y Subespecialidades Bioquímicas |
| [Establecimiento Destino Codigo](ValueSet-VSEstablecimientoDestino.md) | Establecimiento Destino Codigo ejemplos hechos en base a este documento con los [Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes) |
| [Estado Interconsulta](ValueSet-VSEstadoInterconsulta.md) | Estado Interconsulta |
| [EstadoCivil](ValueSet-VSEstadoCivil.md) | EstadoCivil |
| [IdentificadorPrestador](ValueSet-VSIdentificadorPrestador.md) | IdentificadorPrestador |
| [Indice Comorbilidad](ValueSet-VSIndicecomorbilidad.md) | Indice Comorbilidad |
| [Medio Notificación](ValueSet-VSMediodeContacto.md) | Medio Notificación |
| [Modalidad Atencion Codigo](ValueSet-VSModalidadAtencionCodigo.md) | Modalidad Atencion Codigo |
| [Motivo Cierre Interconsulta](ValueSet-VSMotivoCierreInterconsulta.md) | Motivo Cierre Interconsulta |
| [Motivo No Contactabilidad](ValueSet-VSMotivoNoContactabilidad.md) | Motivo No Contactabilidad |
| [Motivo No Pertinencia Codigo](ValueSet-VSMotivoNoPertinenciaCodigo.md) | Motivo No Pertinencia Codigo |
| [Origen Interconsulta](ValueSet-VSorigenInterconsulta.md) | Origen Interconsulta |
| [Pertinencia Interconsulta](ValueSet-VSPertinenciaInterconsulta.md) | Pertinencia Interconsulta |
| [Pueblos Originarios de Chile](ValueSet-PueblosOriginariosVS.md) | Pueblos Originarios de Chile |
| [Religion](ValueSet-VSReligion.md) | Religion |
| [Rol de profesionales](ValueSet-VSPractitionerTipoRolLE.md) | Rol de profesionales(Practitioner) en algún evento, durante la intercosulta. |
| [Servicio Requerido](ValueSet-VSServicioRequerido.md) | Servicio Requerido |
| [TerminologiasDiag](ValueSet-VSTerminologiasDiag.md) | TerminologiasDiag |
| [Tipo Consulta](ValueSet-VSTipoConsulta.md) | Tipo Consulta |
| [Tipo de Evento](ValueSet-VSTipoEventoLE.md) | Tipo de evento en la interconsulta |
| [Tipo de Observación](ValueSet-TipoDeObservacion.md) | Estas son algunas de las observaciones que se pueden realizar en un encuentro, que permiten dar antecedentes a la interconsulta. |
| [TituloProfesional](ValueSet-VSTituloProfesional.md) | TituloProfesional |
| [Value Set de los Problemas de Salud GES](ValueSet-vs-problema-ges-tei.md) | Set de valores utilizados para los problemas de salud ges |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Consecuencia Atención Codigo](CodeSystem-CSConsecuenciaAtencionCodigo.md) | Consecuencia Atención Codigo |
| [Derivado Para](CodeSystem-CSDerivadoParaCodigo.md) | Derivado Para |
| [Destino Referencia Codigo](CodeSystem-CSDestinoReferenciaCodigo.md) | Destino Referencia Codigo |
| [EspecialidadMed](CodeSystem-CSEspecialidadMed.md) | EspecialidadMed |
| [Especialidades Farmaceúticas o Química Farmaceúticas](CodeSystem-CSEspecialidadFarma.md) | Especialidades Farmaceúticas o Química Farmaceúticas |
| [Especialidades Odontológicas](CodeSystem-CSEspecialidadOdont.md) | Especialidades Odontológicas |
| [Especialidades y Subespecialidades Bioquímicas](CodeSystem-CSEspecialidadBioqca.md) | Especialidades y Subespecialidades Bioquímicas |
| [Establecimiento Destino Codigo](CodeSystem-CSEstablecimientoDestino.md) | Establecimiento Destino Codigo ejemplos hechos en base a este documento con los [Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes) |
| [Estado Interconsulta](CodeSystem-CSEstadoInterconsulta.md) | Estado Interconsulta |
| [EstadoCivil](CodeSystem-CSEstadoCivil.md) | EstadoCivil |
| [Indice Comorbilidad](CodeSystem-CSIndicecomorbilidad.md) | Indice Comorbilidad |
| [Medio Notificación](CodeSystem-CSMediodeContacto.md) | Medio Notificación |
| [Modalidad Atencion Codigo](CodeSystem-CSModalidadAtencionCodigo.md) | Modalidad Atencion Codigo |
| [Motivo Cierre Interconsulta](CodeSystem-CSMotivoCierreInterconsulta.md) | Motivo Cierre Interconsulta |
| [Motivo No Contactabilidad](CodeSystem-CSMotivoNoContactabilidad.md) | Motivo No Contactabilidad |
| [Motivo No Pertinencia Codigo](CodeSystem-CSMotivoNoPertinenciaCodigo.md) | Motivo No Pertinencia Codigo |
| [Origen Interconsulta](CodeSystem-CSorigenInterconsulta.md) | Origen Interconsulta |
| [Pertinencia Interconsulta](CodeSystem-CSPertinenciaInterconsulta.md) | Pertinencia Interconsulta |
| [Pueblos Originarios de Chile](CodeSystem-PueblosOriginariosCS.md) | Pueblos Originarios de Chile |
| [Religion](CodeSystem-CSReligion.md) | Religion |
| [Rol de profesionales](CodeSystem-CSPractitionerTipoRolLE.md) | CodeSystem con códigos definidos para representar cada rol de profesional o funcionario administrativo dentro de la interconsulta |
| [Sitema de Codificación para los Problemas de Salud GES](CodeSystem-cs-problema-ges-tei.md) | Sistema de codificación de los problemas de salud GES |
| [Tipo Consulta](CodeSystem-CSTipoConsulta.md) | Tipo Consulta |
| [Tipo de Evento](CodeSystem-CSTipoEventoLE.md) | CodeSystem con códigos definidos para representar cada evento en la interconsulta |
| [Tipo de Observación](CodeSystem-CSTipoObservacionMinsal.md) | Son todos los tipos de observaciones dadas por el Ministerio De Salud |
| [TituloProfesional](CodeSystem-CSTituloProfesional.md) | TituloProfesional |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Ejemplo Agenda](Appointment-AgendaEjemplo.md) | Ejemplo de la agenda de un paciente |
| [Ejemplo Bundle Iniciar](Bundle-BundleIniciarEjemplo.md) | Ejemplo de un mensaje del evento Iniciar |
| [Ejemplo Condición de Atención](Condition-ConditionAtencionejemplo.md) | Ejemplo condición como resultado del evento atender |
| [Ejemplo Condition Inicial](Condition-ConditionInicialEjemplo.md) | Ejemplo de una condición como motivo de interconsulta |
| [Ejemplo Observation Cuidador](Observation-EjemploObservationCuidador.md) | Ejemplo del recurso que indica si el paciente es cuidador o no |
| [Ejemplo Observation Discapacidad LE](Observation-EjemploObservationDiscapacidadLE.md) | Ejemplo que inidica si el paciente tiene discapacidad |
| [Ejemplo OrganizationLE](Organization-OrganizationLEEjemplo.md) | Ejemplo de una organización que inicia una interconsulta |
| [Ejemplo PatientLE](Patient-EjemploPatientLE.md) | Ejemplo de un paciente de la guía Tiempos de Espera |
| [Ejemplo PractitionerRole Iniciador](PractitionerRole-PractitionerRoleIniciador.md) | Ejemplo de un profesional con el rol de iniciador de la interconsulta |
| [Ejemplo Resultado Examen](Observation-AnticuerpoAdrenal.md) | Ejemplo de un resultado de laboratorio de Anticuerpo Adrenal |
| [Ejemplo Rol Atendedor](PractitionerRole-PractitionerRoleAtendedor.md) | Ejemplo de un profesional en el rol atendedor |
| [Ejemplo Simple Organization](Organization-OrganizationLEAtendedor.md) | Ejemplo simple de una organización |
| [Ejemplo de Anamnesis](Observation-AnamnesisEjemplo.md) | Una pequeña descripción del encuentro y el tratamiento, como relato |
| [Ejemplo de Indice Conmorbilidad](Observation-IndiceConmorbilidadEjemplo.md) | Indica el nivel de conmorbilidad que posee un paciente |
| [Ejemplo de Otro Profesional](Practitioner-PractitionerProfesionalLEAtendedor.md) | Ejemplo de otro profesional |
| [Ejemplo de Plan de Cuidados](CarePlan-CarePlanAtencionEjemplo.md) | Ejemplo de un plan de cuidados de ejemplo como resultado de una atención |
| [Ejemplo de Practitioner ProfesionalLE](Practitioner-PractitionerProfesionalLEEjemplo.md) | Ejemplo de un profesional de tiempos de espera |
| [Ejemplo de Prescipción](MedicationRequest-PrednisonaEjemplo.md) | Ejemplo de una prescripción de ejemplo de una prednisona como resultado de una atención, más como parte del plan de cuidados |
| [Ejemplo de Profesional Administrativo](Practitioner-ProfesionalAdministrativoEjemplo.md) | Ejemplo de un profesional administrativo que referenciara la interconsulta |
| [Ejemplo de Solicitud de AbAdrenal](ServiceRequest-AbadrenalEjemplo.md) | Ejemplo de Solicitud de AbAdrenal como resultado de la atención más un plan de cuidado, para realizar seguimiento |
| [Ejemplo de un Encuentro](Encounter-AtencionEjemplo.md) | Es un ejemplo de un encuentro que se realiza en al finalizar el evento atender |
| [Ejemplo de un Encuentro inicial](Encounter-EncounterIniciarEjemplo.md) | Es un ejemplo de un encuentro que genera una interconsulta |
| [Ejemplo de una Alergía](AllergyIntolerance-AllergyIntoleranceExample.md) | Ejemplo de alergia a castaña de cajú |
| [Ejemplo de una Solicitud](ServiceRequest-EjemploSolicitudInterconsultaFinalizada.md) | Ejemplo de una Solicitud finalizada |
| [Ejemplo de una Solicitud de Examen](ServiceRequest-EjemploSolicitudExamen.md) | Ejemplo de la solicitud realizada junto a una interconsulta |
| [Ejemplod de Cabecera Mensaje](MessageHeader-MesssageHeaderAtenderEjemplo.md) | Ejemplo de la cabecera de un mensaje, en este caso del evento atender |
| [QuestionnaireResponse Iniciar LE](QuestionnaireResponse-MotivoDerivacionEjemplo3.md) | Respuesta Full Motivo de derivación, Problema de salud GES y Subproblema de salud GES |
| [QuestionnaireResponse Iniciar LE 1](QuestionnaireResponse-MotivoDerivacionEjemplo1.md) | Respuesta Motivo de derivación |
| [QuestionnaireResponse Iniciar LE 2](QuestionnaireResponse-MotivoDerivacionEjemplo2.md) | Respuesta Motivo de derivación y Problema de salud GES |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| |
| :--- |
| [exp-params](Parameters-exp-params.md) |

