# Historial De Cambios - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* **Historial De Cambios**

## Historial De Cambios

### Versión 0.2.2

#### ServiceRequest LE

* Se incluye la extension para marcar si la IC corresponde a GES.

#### Bundle Referenciar LE

* Se incorporan en el Bundle Referenciar los entries necesarios, provenientes del Bundle Iniciar, asociados a los `supportingInfo` del recurso `ServiceRequest`, con el objetivo de permitir actualizaciones de la IC.

### Versión 0.2.1

#### Cambios Generales

* Se obliga el uso de un id(Temporal) para todos los perfiles, a excepción del messageHeader y los Bundles.
* Se incluyen los fullUrl de todos los Bundle.
* En todos los Perfiles Bundle: 
* Los timestamp de 0..1 -> 1..1
* Los entry.resource 0..1 -> 1..1
 
* En todos los perfiles bundles se elimina el uso de la tabla de datos y sus consideraciones
* En las extensiones se ajustan los contextos para el uso en los servidores
* Se habilitaron Ejemplos de todos los perfiles

#### Perfiles

##### ObservationResultadoExamen

* Se cambia Id de ExamenesAnteriores A ObservationResultadoExamen
* Se incluye el valor encounter 1..1
* Se Actualiza el titulo y la descripción
* Effective[x] a EffectiveDateTime 1..1 MS
* Se elimino obligatoriedad del code.text y el requerido de exámenes

##### ObservationIndiceComorbilidadLE

* encounter pasa a MS y se referencia a los perfiles [EncounterIniciarLE](StructureDefinition-EncounterIniciarLE.md) y [EncounterAtenderLE](StructureDefinition-EncounterAtenderLE.md)
* Se corrije el uso del code y el biding [TipoDeObservacion](ValueSet-TipoDeObservacion.md) para determinar el tipo de observación
* Se agrega el dato value[x] forzado a valueCodebleConcept, la cardinalidad a 1..1 y se realiza un biding al [VSIndicecomorbilidad](ValueSet-VSIndicecomorbilidad.md)

##### ObservationIniciarCuidadorLE

* encounter pasa a MS y se referencia a los perfiles [EncounterIniciarLE](StructureDefinition-EncounterIniciarLE.md) y [EncounterAtenderLE](StructureDefinition-EncounterAtenderLE.md)
* se depreca extension ExtBoolEsCuidador
* se incluye el ValueBoolean a 1..1

##### ObservationDiscapacidadLE

* encounter pasa a MS y se referencia a los perfiles [EncounterIniciarLE](StructureDefinition-EncounterIniciarLE.md) y [EncounterAtenderLE](StructureDefinition-EncounterAtenderLE.md)
* se depreca extension ExtBoolPresentaDiscapacidad
* se incluye el ValueBoolean a 1..1
* Se incluye el biding [TipoDeObservacion](ValueSet-TipoDeObservacion.md) para determinar el tipo de observación.

##### ObservationAtender -> ObservationAnamnesisLE

* se incluye el code = http://snomed.info/sct#84100007
* se incluye el code.text = "Anamnesis"
* se incluye biding a [TipoDeObservacion](ValueSet-TipoDeObservacion.md)

##### ServiceRequestLE

* Se actualizan las extensiones de 
* MotivoCierreInterconsulta -> ExtensionMotivoCierreInterconsulta
* ExtensionBoolRequiereExamen -> ExtensionBoolRequiereExamen
* BoolAtencionPreferente -> ExtensionBoolAtencionPreferente
* BoolResolutividadAPS -> ExtensionBoolResolutividadAPS
* OrigenInterconsulta -> ExtensionOrigenInterconsulta
* StringFundamentoPriorizacion -> ExtensionStringFundamentoPriorizacion
* EstadoInterconsultaCodigoLE -> ExtensionEstadoInterconsultaCodigoLE
* EspecialidadMedicaDestinoCodigo -> ExtensionEspecialidadMedicaDestinoCodigo
* SubEspecialidadMedicaDestinoCodigo -> ExtensionSubEspecialidadMedicaDestinoCodigo
* PertinenciaInterconsulta -> ExtensionPertinenciaInterconsulta
 
* Se agrega la extension CorrespondeGES
* Se actualiza referencia de ExamenesAnteriores A ObservationResultadoExamen
* Se mueve ObservationResultadoExamen de ReasonReference a SupportInfo
* supportingInfo[Discapacidad] 1..1 -> 0..1
* performer 1..1 -> 0..1
* requester 1..1 -> 0..1
* authoredOn 1..1 -> 0..1
* code 1..1 -> 0..1

##### ServiceRequestExamenLE

* Se modifica la descripción del identifier
* authoredOn 0..1 -> 1..1
* ocurrenceDateTime 1..1 -> 0..1

##### ConditionDiagnosticoLE

* Se cambia cardinalidad clinicalStatus 1..1 a 0..1
* Se cambia cardinalidad de verificationStatus 1..1 a 0..1
* Se cambia cardinalidad de code.coding 1..1 a 1..*

##### CarePlanAtenderLE

* se modifica la cardinalidad de **activity[referenciaReceta]** de 0..1 -> 0.._ y **activity[referenciaServiceRequestExamenLE]** 0..1 -> 0.._
* se modifica descripción del description
* se pasa MS el encounter y se solicita que sean **EncounterAtenderLE**

##### PatientLE

* Identifier 1..*
* Identifier.type.coding 1..1
* telecom.system 1..1
* telecom.value 1..1

##### PractitionerAdministrativoLE

* Se cambian las descripciones del Identifier
* Cambia cardinalidad de name.family 0..1 -> 1..1
* Cambia cardinalidad de name.given 0.._ -> 1.._
* Cambia cardinalidad de telecom.system 0..1 -> 1..1
* Cambia cardinalidad de telecom.value 0..1 -> 1..1
* Se corrige type.coding.code 1 -> 01

##### PractitionerProfesionalLE

* Cambia cardinalidad de name.family 0..1 -> 1..1
* Cambia cardinalidad de name.given 0.._ -> 1.._
* Cambia cardinalidad de telecom.system 0..1 -> 1..1
* Cambia cardinalidad de telecom.value 0..1 -> 1..1
* Se corrige type.coding.code 1 -> 01

##### AppointmentAgendarLE

* end 0..1 -> 1..1

##### MessageHeaderLE

* Se cambia la descripción del author
* Se cambia descripción focus[ServiceRequestLE], focus[AppointmentAgendarLE] y focus[EncounterAtenderLE]

##### EncounterIniciarLE

* Se cambia obligatoriedad y must support del identifier.type

##### EncounterAtenderLE

* Se cambia obligatoriedad y must support del identifier.type
* Se cambia la cardinalidad de diagnosis 1..1 -> 1..*

##### AllergyIntoleranceIniciarLE

* Se agrega Must Support a clinicalStatus y verificationStatus

##### MedicationRequestLE

* Se crea el perfil

#### Bundles

##### BundleIniciarLE

* Se actualiza recurso de ExamenesAnteriores A ObservationResultadoExamen
* se actualiza entry de 8..17 a 9..*
* se actualiza entry[ObservationResultadoExamen] 0..1 a 0..*
* se actualiza entry[observationDiscapacidad] 1..1 a 0..1
* edición de short observation
* se actualiza entry[allergyintolerance] 0..1 a 0..*
* se crea entry[SolicitudExamen] 0..*

##### BundleAtenderLE

* Se modifica la cardinalidad de entry de 0.._ -> 7.._
* Se cambia ObservationAtender LE por ObservationResultadoExamen
* Se incluye la solicitud de medicamento y la solicitud de exámenes.
* Se incluye la condición del encuentro

##### BundleRevisarLE

* Se modifica la cardinalidad de entry de 7.._ -> 5.._
* Se modifica la cardinalidad de entry[servicerequestexamen] de 0..1 -> 0..*
* Se modifica la cardinalidad de entry[practitionerRole] de 1..1 -> 1..2
* Se modifica la cardinalidad de entry[organization] de 1..1 -> 1..2

##### BundlePriorizarLE

* Se modifica la cardinalidad de entry de 5..5 -> 5..7
* Se modifica la cardinalidad de entry[practitionerRole] de 1..1 -> 1..2
* Se modifica la cardinalidad de entry[organization] de 1..1 -> 1..2

#### Extensiones

##### Renombradas

* La extensión **ContactadoLE** paso a llamarse **ExtensionContactadoLE**
* La extension **ExtBoolPertinenciaAtencionBox** paso a llamarse **ExtensionPertinenciaAtencionBox**
* La extensión **ExtBoolSolicitudExamenes** paso a llamarse **ExtensionSolicitudExamenes**
* La extensión **ExtStringMotivoNoPertinencia** paso a llamarse **ExtensionMotivoNoPertinencia**

##### Actualizadas

* Extension [ExtensionEspecialidadMedicaDestinoCodigo](StructureDefinition-ExtensionEspecialidadMedicaDestinoCodigo.md) y [ExtensionSubEspecialidadMedicaDestinoCodigo](StructureDefinition-ExtensionSubEspecialidadMedicaDestinoCodigo.md) 
* Se cambia el binding de ValueSet de Especialidad Medica a Especialidad de Destino
 

##### Nuevas

* Se crea la extension SospechaPatologiaGes
* Se agrega la extension CorrespondeGES

#### ValueSets

##### Nuevos

* [TipoDeObservacion](ValueSet-TipoDeObservacion.md)
* [VsEspecialidadDest](ValueSet-VsEspecialidadDest.md)

##### Eliminados

* Códigos para sexo biológico en Chile
* Documento Acreditacion Cuidador
* Identidad de Genero
* Isapres
* PrevisionCodigo
* Sospecha Patologia
* VSTipoCodDiagnostica
* VSHipotesisDiagnosticaCodigo

##### Modificados

* ValueSet [TerminologiasDiag](ValueSet-VSTerminologiasDiag.md) 
* se filtra a hallazgos clínicos
 

#### CodeSystems

##### Eliminados

* Códigos para Sexo de Nacimiento de Paciente
* Documento Acreditacion Cuidador
* Identidad de Genero
* Isapres
* PrevisionCodigo
* Tipo Codificación Diagnostica
* Sospecha Patologia
* CSHipotesisDiagnosticaCodigo

##### Nuevos

* [CSTipoObservacionMinsal](CodeSystem-CSTipoObservacionMinsal.md)

#### Deprecaciones

* Perfil **Condición GES** se depreca y se elimina cualquier referencia a él.
* Se depreca el recurso **Coverage**
* Se depreca ConceptMap CMHipotesisDiagnosticaCodigoAConditionVerificationStatus

### Versión 0.2.0

* Perfil [PatientLE](StructureDefinition-PatientLE.md)
* Perfil [BundleAtenderLE](StructureDefinition-BundleAtenderLE.md)
* Perfil [EncounterAtenderLE](StructureDefinition-EncounterAtenderLE.md)
* Perfil [EncounterIniciarLE](StructureDefinition-EncounterIniciarLE.md)
* Perfil [ServiceRequestExamenLE](StructureDefinition-ServiceRequestExamenLE.md)
* Perfil [ServiceRequestLE](StructureDefinition-ServiceRequestLE.md)
* Perfil [AllergyIntoleranceIniciarLE](StructureDefinition-AllergyIntoleranceIniciarLE.md) 
* code.coding modifica cardinalidad 0..1 -> 1..1
* code.coding.code modifica cardinalidad 0..1 -> 1..1
* Se fija binding http://hl7.org/fhir/ValueSet/allergyintolerance-code para code
 
* Perfil [BundleRevisarLE](StructureDefinition-BundleRevisarLE.md) 
* Se modifica la cardinalidad de entry[practitionerRole] 2..2 -> 1..1
* Se modifica la cardinalidad de entry[organization] 2..2 -> 1..1
 
* Perfil [ExamenesAnteriores](StructureDefinition-ObservationResultadoExamen.md)
* Perfil [PractitionerAdministrativoLE](StructureDefinition-PractitionerAdministrativoLE.md)
* Perfil [ObservationIniciarIndiceComorbilidadLE](StructureDefinition-ObservationIndiceComorbilidadLE.md)
* Perfil [AppointmentAgendarLE](StructureDefinition-AppointmentAgendarLE.md)
* Perfil **CoverageLE**
* Perfil [EncounterAtenderLE](StructureDefinition-EncounterAtenderLE.md)
* Perfil [QuestionnaireResponseIniciarLE](StructureDefinition-QuestionnaireResponseIniciarLE.md)
* Perfil [ObservationIniciarCuidadorLE](StructureDefinition-ObservationIniciarCuidadorLE.md)
* Perfil [EncounterIniciarLE](StructureDefinition-EncounterIniciarLE.md)
* Perfil [ConditionDiagnosticoLE](StructureDefinition-ConditionDiagnosticoLE.md)
* Perfil [CarePlanAtenderLE](StructureDefinition-CarePlanAtenderLE.md) 
* Se modifica el nombre de la extension solicitudExamen -> Requiere-Examen
* Se cambia la cardinalidad de activity 0..* -> 0..2
* Se cambia la cardinalidad de activity[referenciaReceta].reference 0..1 -> 1..1
* Se cambia la cardinalidad de activity[referenciaServiceRequestExamenLE].reference 0..1 -> 1..1
 
* Se cambia el nombre del perfil ConditionDiagnosticoLE -> ConditionDiagnosticoLE
* valueSet cambia nombre -> VSorigenInterconsulta
* codeSystem cambia nombre CSinterconsulta -> CSorigenInterconsulta
* Extension cambia nombre Interconsulta -> OrigenInterconsulta
* Extension OrigenInterconsulta.valueCodeableConcept cambia binding a VSorigenInterconsulta
* Se crea la extensión ExtBoolEsCuidador
* Se elimina el perfil DocumentReferenceIniciarLE y todas sus referencias
* [ObservationDiscapacidadLE](StructureDefinition-ObservationDiscapacidadLE.md)
* [PractitionerProfesionalLE](StructureDefinition-PractitionerProfesionalLE.md)
* Se elimina VSEspecialidades
* Se cambia el nombre el perfil ConditionInicioDiagnosticoLE -> ConditionDiagnosticoLE
* Se elimina el recurso CondicionAtenderDiagnosticoConfirmacionLE
* Se cambia nombre de VSSospechaPatologiaGes -> VSProblemaGES
* Se cambia nombre de CSSospechaPatologiaGes -> CSProblemaGES
* Se cambia nombre de CSIdInterconsulta -> CSTipoIdentificadorSR
* Se cambia nombre de VSIdInterconsulta -> VSTipoIdentificadorSR
* Se modifican valores de CSTipoIdentificadorSR
* Se cambia nombre de CSMedioNotificacion -> CSMediodeContacto
* Se cambia nombre de VSMedioNotificacion -> VSMediodeContacto
* Se modifican valores de CSMediodeContacto
* Se modifican valores de CSMotivoNoContactabilidad
* Se cambia cardinalidad en elemento de extension * extension[ExtensionContactadoLE].extension[Contactado].value[x] 0..1 -> 1..1
* Se eleminia la extension DocAcreditacionCuidadorCodigoLE
* Se crea VSIsapres
* Se crea CSIsapres
* Se crea VSTerminologiasDiag
* Se cambia nombde de perfil ObservationIniciarLE -> ExamenesAnteriores
* Se elimina VSTipoIdentificadorSR
* Se elimina CSTipoIdentificadorSR
* Modificaciones de la "CLcore" 
* Se cambió el nombre de la extension identifier.type.extension[paises] -> identifier.type.extension[paisEmisionDocumento]
* Extension "Codigo de Identificación de países", el binding se modifica para dejarlo linkeado al elemento "valueCodeableConcept.
* **PrestadorCL** 
* Se cambia el nombre de los siguientes slices de qualification: 
* Cert -> TituloProfesional
* Esp -> EspecialidadMedica
* SubEsp -> Subespecialidad
 
 
 
* Se incluyeron los ejemplos
* El elemento **addresss** debe cumplir con **ClAddress** para las direcciones de los perfiles **OrganiztionCL** y **LocalizacionCL**
* Cambio en el **Ejemplo Organización Prestadora de Salud** para cumplir con el perfil **OrganiztionCL**
* Cambio en el **Ejemplo Localización Farmacia** para cumplir con el perfil **LocalizacionCL**
* Se incluyo el context en las siguientes extensiones:
* Se depreca perfil QuestionnaireResponseAntederLE

### Cambios de versión 0.1.5 a versión 0.1.6

* **Cambios generales:**
* **Cambios en los recursos:**
* **Cambios en CodeSystem/ValueSets y extensiones:**

