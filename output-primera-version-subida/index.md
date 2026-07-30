# Index - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* **Index**

## Index

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/ImplementationGuide/hl7.fhir.cl.minsal.tei | *Version*:0.2.3 |
| Draft as of 2026-07-22 | *Computable Name*:TiemposdeEsperaInteroperable |

### Alcance

Esta guía de implementación aborda el proceso de solicitud de interconsulta (SIC), para consulta nueva de especialidad No GES desde el nivel primario de salud (APS) al nivel secundario, mediante la plataforma interoperable de Tiempos de Espera. Para representar este proceso se definen 7 eventos, los cuáles son:

* Iniciar: Generación de SIC en box de APS
* Referenciar: Asignacion de destino desde la APS
* Revisar: Revisión de la pertinencia
* Priorizar: Asignación o revisión de la prioridad
* Agendar: Agendamiento de la cita
* Atender: Atención en consulta con el especialista
* Terminar: Egreso de la Lista de Espera

### Introducción

#### Antecedentes

El sistema de salud en Chile se estructura en niveles (primario, secundario y terciario), siendo el nivel primario el con mayor despliegue en el territorio, con atenciones de menor complejidad y la puerta de entrada a todas las atenciones de salud en la red pública de establecimientos. Para optar a una atención de especialidad, las personas deben ser derivadas desde la atención primaria a un centro de mayor complejidad, teniendo que esperar para recibir esta atención en el nivel secundario o terciario.

Las personas y tiempos que deben esperar para una atención de salud han sido y son una preocupación para todo el sistema sanitario.

Los sistemas que soportan actualmente la información de las personas y tiempos de espera por su estructura y forma de operar, no permiten conocer la realidad de la situación, trazar al paciente y tampoco permite mantener informado al paciente. Para mejorar la gestión de la red asistencial y la coordinación entre sus niveles, se requiere implementar un proceso interoperable de solicitud de nueva consulta de especialidad desde APS a nivel secundario, para patologías no adscritas a las garantías explícitas de salud (GES).

#### Descripción

Se propone desarrollar un sistema de información que permita hacer trazabilidad del proceso desde que se solicita interconsulta para Nueva atención de Especialidad, hasta que se atiende en atención secundaria, dejando disponible esta información tanto para el paciente, como para los establecimientos de salud involucrados y el nivel central para la toma de decisiones y mejor gestión de los recursos.

Este proyecto fue ejecutado por un equipo multidisciplinario del Ministerio de Salud, con la participación de profesionales del Departamento de Estadísticas e Información en Salud (DEIS), la División de Gestión de la Red Asistencial (DIGERA), la División de Atención Primaria (DIVAP) y la Unidad de Interoperabilidad del Departamento de Tecnologías de la Información y Comunicaciones (DTIC), con el apoyo del Centro Nacional de Sistemas de Información en Salud (CENS). Se ha utilizado una metodología para el re-diseño del proceso, optimizándolo y centrándolo en el paciente y se ha implementado bajo el uso estándares internacionales de interoperabilidad.

### Objetivos del Proyecto de Tiempos de Espera Interoperables

#### General

Desarrollar un sistema seguro e interoperable de datos clínicos que respalde la gestión de información, incluyendo su registro, transferencia y análisis. Dicha información es entregada a través de una plataforma que facilite su acceso de manera precisa y de calidad, en el contexto de las solicitudes de nueva consulta de especialidad No GES para pacientes de la red asistencial.

#### Específicos

* Lograr el intercambio de información de las solicitudes de interconsultas emitidas desde los registros clínicos electrónicos implementados en los establecimientos de salud pública del país y la plataforma de interoperabilidad de MINSAL.
* Promover la estandarización de los datos involucrados en este proceso.
* Proporcionar directrices y reglas comunes que faciliten la adopción de estándares de interoperabilidad semánticos y sintácticos, tanto por parte de profesionales clínicos como para los desarrolladores en toda la red asistencial.
* Garantizar que los datos se representen y se compartan de manera coherente entre sistemas, evitando ambigüedades y errores en la interpretación de la información.

### Objetivos de la Guía de Implementación

#### General

Brindar las directrices para el desarrollo de sistema de información que garanticen la interoperabilidad con la plataforma de Tiempos de Espera para el proceso de solicitud de nueva consulta de especialidad desde APS a nivel secundario, según los estándares definidos por el Ministerio de Salud.

#### Específicos

* Otorgar las herramientas necesarias para el desarrollo de sistemas informáticos de registro clínico que interoperen con la plataforma de tiempos de espera, en base al estándar HL7 FHIR.
* Describir los distintos perfiles de usuario del proceso de solicitud de interconsulta de primera atención de especialidad no GES y los recursos asociados a cada uno.
* Ejemplificar los distintos casos de uso asociados al proceso de tiempos de espera para solicitud de primera consulta de especialidad desde APS a nivel secundario.

### Perfiles Globales

*There are no Global profiles defined*

### Dependencias





### Analisis de versiones cruzadas

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (hl7.fhir.cl.minsal.tei.r4)](package.r4.tgz) and [R4B (hl7.fhir.cl.minsal.tei.r4b)](package.r4b.tgz) are available.

### Declaracion de propiedad intelectual

This publication includes IP covered under the following statements.

* All content on ISO Online is copyright protected. The copyright is owned by ISO. Any use of the content, including copying of it in whole or in part, for example to another Internet site, is prohibited and would require written permission from ISO.

* [Códigos de Países](https://hl7chile.cl/fhir/ig/clcore/1.9.2/CodeSystem-CodPais.html): [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md), [Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)](Organization-OrganizationLEEjemplo.md), [PaisOrigenMPI](StructureDefinition-PaisOrigenMPI.md), [Patient/EjemploPatientLE](Patient-EjemploPatientLE.md) and [Practitioner/ProfesionalAdministrativoEjemplo](Practitioner-ProfesionalAdministrativoEjemplo.md)


* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.1.0/CodeSystem-ISO3166Part1.html): [AllergyIntoleranceIniciarLE](StructureDefinition-AllergyIntoleranceIniciarLE.md), [AppointmentAgendarLE](StructureDefinition-AppointmentAgendarLE.md)... Show 110 more, [BundleAgendarLE](StructureDefinition-BundleAgendarLE.md), [BundleAtenderLE](StructureDefinition-BundleAtenderLE.md), [BundleIniciarLE](StructureDefinition-BundleIniciarLE.md), [BundlePriorizarLE](StructureDefinition-BundlePriorizarLE.md), [BundleReferenciarLE](StructureDefinition-BundleReferenciarLE.md), [BundleRevisarLE](StructureDefinition-BundleRevisarLE.md), [BundleTerminarLE](StructureDefinition-BundleTerminarLE.md), [CSConsecuenciaAtencionCodigo](CodeSystem-CSConsecuenciaAtencionCodigo.md), [CSDerivadoParaCodigo](CodeSystem-CSDerivadoParaCodigo.md), [CSDestinoReferenciaCodigo](CodeSystem-CSDestinoReferenciaCodigo.md), [CSEspecialidadBioqca](CodeSystem-CSEspecialidadBioqca.md), [CSEspecialidadFarma](CodeSystem-CSEspecialidadFarma.md), [CSEspecialidadMed](CodeSystem-CSEspecialidadMed.md), [CSEspecialidadOdont](CodeSystem-CSEspecialidadOdont.md), [CSEstablecimientoDestino](CodeSystem-CSEstablecimientoDestino.md), [CSEstadoCivil](CodeSystem-CSEstadoCivil.md), [CSEstadoInterconsulta](CodeSystem-CSEstadoInterconsulta.md), [CSIndicecomorbilidad](CodeSystem-CSIndicecomorbilidad.md), [CSMediodeContacto](CodeSystem-CSMediodeContacto.md), [CSModalidadAtencionCodigo](CodeSystem-CSModalidadAtencionCodigo.md), [CSMotivoCierreInterconsulta](CodeSystem-CSMotivoCierreInterconsulta.md), [CSMotivoNoContactabilidad](CodeSystem-CSMotivoNoContactabilidad.md), [CSMotivoNoPertinenciaCodigo](CodeSystem-CSMotivoNoPertinenciaCodigo.md), [CSPertinenciaInterconsulta](CodeSystem-CSPertinenciaInterconsulta.md), [CSPractitionerTipoRolLE](CodeSystem-CSPractitionerTipoRolLE.md), [CSReligion](CodeSystem-CSReligion.md), [CSTipoConsulta](CodeSystem-CSTipoConsulta.md), [CSTipoEventoLE](CodeSystem-CSTipoEventoLE.md), [CSTipoObservacionMinsal](CodeSystem-CSTipoObservacionMinsal.md), [CSTituloProfesional](CodeSystem-CSTituloProfesional.md), [CSorigenInterconsulta](CodeSystem-CSorigenInterconsulta.md), [CarePlanAtenderLE](StructureDefinition-CarePlanAtenderLE.md), [CodigoExamen](ValueSet-CodigoExamen.md), [ConditionDiagnosticoLE](StructureDefinition-ConditionDiagnosticoLE.md), [EncounterAtenderLE](StructureDefinition-EncounterAtenderLE.md), [EncounterIniciarLE](StructureDefinition-EncounterIniciarLE.md), [ExtensionBoolAtencionPreferente](StructureDefinition-ExtensionBoolAtencionPreferente.md), [ExtensionBoolRequiereExamen](StructureDefinition-ExtensionBoolRequiereExamen.md), [ExtensionBoolResolutividadAPS](StructureDefinition-ExtensionBoolResolutividadAPS.md), [ExtensionConsecuenciaAtencionCodigo](StructureDefinition-ExtensionConsecuenciaAtencionCodigo.md), [ExtensionContactadoLE](StructureDefinition-Contactado.md), [ExtensionEspecialidadMedicaDestinoCodigo](StructureDefinition-ExtensionEspecialidadMedicaDestinoCodigo.md), [ExtensionEstadoInterconsultaCodigoLE](StructureDefinition-ExtensionEstadoInterconsultaCodigoLE.md), [ExtensionMediodeContacto](StructureDefinition-ExtensionMediodeContacto.md), [ExtensionMotivoCierreInterconsulta](StructureDefinition-ExtensionMotivoCierreInterconsulta.md), [ExtensionMotivoNoPertinencia](StructureDefinition-ExtensionMotivoNoPertinencia.md), [ExtensionOrigenInterconsulta](StructureDefinition-ExtensionOrigenInterconsulta.md), [ExtensionPertinenciaAtencionBox](StructureDefinition-ExtensionPertinenciaAtencionBox.md), [ExtensionPertinenciaInterconsulta](StructureDefinition-ExtensionPertinenciaInterconsulta.md), [ExtensionSolicitudExamenes](StructureDefinition-ExtensionSolicitudExamenes.md), [ExtensionStringFundamentoPriorizacion](StructureDefinition-ExtensionStringFundamentoPriorizacion.md), [ExtensionSubEspecialidadMedicaDestinoCodigo](StructureDefinition-ExtensionSubEspecialidadMedicaDestinoCodigo.md), [MedicationRequestLE](StructureDefinition-MedicationRequestLE.md), [Mencion](StructureDefinition-Mencion.md), [MessageHeaderLE](StructureDefinition-MessageHeaderLE.md), [ObservationAnamnesisLE](StructureDefinition-ObservationAnamnesisLE.md), [ObservationDiscapacidadLE](StructureDefinition-ObservationDiscapacidadLE.md), [ObservationIndiceComorbilidadLE](StructureDefinition-ObservationIndiceComorbilidadLE.md), [ObservationIniciarCuidadorLE](StructureDefinition-ObservationIniciarCuidadorLE.md), [ObservationResultadoExamen](StructureDefinition-ObservationResultadoExamen.md), [OrganizationLE](StructureDefinition-OrganizationLE.md), [PaisOrigenMPI](StructureDefinition-PaisOrigenMPI.md), [PatientLE](StructureDefinition-PatientLE.md), [PractitionerAdministrativoLE](StructureDefinition-PractitionerAdministrativoLE.md), [PractitionerProfesionalLE](StructureDefinition-PractitionerProfesionalLE.md), [PractitionerRoleLE](StructureDefinition-PractitionerRoleLE.md), [ProblemaSaludGESCS](CodeSystem-cs-problema-ges-tei.md), [ProblemaSaludGESVS](ValueSet-vs-problema-ges-tei.md), [ProvenanceLE](StructureDefinition-ProvenanceLE.md), [PueblosAfrodescendiente](StructureDefinition-PueblosAfrodescendiente.md), [PueblosOriginarios](StructureDefinition-PueblosOriginarios.md), [PueblosOriginariosCS](CodeSystem-PueblosOriginariosCS.md), [PueblosOriginariosPerteneciente](StructureDefinition-PueblosOriginariosPerteneciente.md), [PueblosOriginariosVS](ValueSet-PueblosOriginariosVS.md), [Questionnaire/MotivoDerivacion](Questionnaire-MotivoDerivacion.md), [QuestionnaireResponseIniciarLE](StructureDefinition-QuestionnaireResponseIniciarLE.md), [Religion](StructureDefinition-Religion.md), [ServiceRequestExamenLE](StructureDefinition-ServiceRequestExamenLE.md), [ServiceRequestLE](StructureDefinition-ServiceRequestLE.md), [SituacionCalle](StructureDefinition-SituacionCalle.md), [SospechaPatologiaGes](StructureDefinition-SospechaPatologiaGes.md), [TiemposdeEsperaInteroperable](index.md), [TipoDeObservacion](ValueSet-TipoDeObservacion.md), [VSConsecuenciaAtencionCodigo](ValueSet-VSConsecuenciaAtencionCodigo.md), [VSDerivadoParaCodigo](ValueSet-VSDerivadoParaCodigo.md), [VSDestinoReferenciaCodigo](ValueSet-VSDestinoReferenciaCodigo.md), [VSEspecialidadBioqca](ValueSet-VSEspecialidadBioqca.md), [VSEspecialidadFarma](ValueSet-VSEspecialidadFarma.md), [VSEspecialidadMed](ValueSet-VSEspecialidadMed.md), [VSEspecialidadOdont](ValueSet-VSEspecialidadOdont.md), [VSEstablecimientoDestino](ValueSet-VSEstablecimientoDestino.md), [VSEstadoCivil](ValueSet-VSEstadoCivil.md), [VSEstadoInterconsulta](ValueSet-VSEstadoInterconsulta.md), [VSIdentificadorPrestador](ValueSet-VSIdentificadorPrestador.md), [VSIndicecomorbilidad](ValueSet-VSIndicecomorbilidad.md), [VSMediodeContacto](ValueSet-VSMediodeContacto.md), [VSModalidadAtencionCodigo](ValueSet-VSModalidadAtencionCodigo.md), [VSMotivoCierreInterconsulta](ValueSet-VSMotivoCierreInterconsulta.md), [VSMotivoNoContactabilidad](ValueSet-VSMotivoNoContactabilidad.md), [VSMotivoNoPertinenciaCodigo](ValueSet-VSMotivoNoPertinenciaCodigo.md), [VSPertinenciaInterconsulta](ValueSet-VSPertinenciaInterconsulta.md), [VSPractitionerTipoRolLE](ValueSet-VSPractitionerTipoRolLE.md), [VSReligion](ValueSet-VSReligion.md), [VSServicioRequerido](ValueSet-VSServicioRequerido.md), [VSTerminologiasDiag](ValueSet-VSTerminologiasDiag.md), [VSTipoConsulta](ValueSet-VSTipoConsulta.md), [VSTipoEventoLE](ValueSet-VSTipoEventoLE.md), [VSTituloProfesional](ValueSet-VSTituloProfesional.md), [VSorigenInterconsulta](ValueSet-VSorigenInterconsulta.md) and [VsEspecialidadDest](ValueSet-VsEspecialidadDest.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://terminology.hl7.org/6.1.0/CodeSystem-v3-ucum.html): [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md) and [Observation/AnticuerpoAdrenal](Observation-AnticuerpoAdrenal.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.1.0/CodeSystem-v3-loinc.html): [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md), [CodigoExamen](ValueSet-CodigoExamen.md)... Show 12 more, [Observation/AnticuerpoAdrenal](Observation-AnticuerpoAdrenal.md), [Observation/EjemploObservationCuidador](Observation-EjemploObservationCuidador.md), [Observation/EjemploObservationDiscapacidadLE](Observation-EjemploObservationDiscapacidadLE.md), [ObservationAnamnesisLE](StructureDefinition-ObservationAnamnesisLE.md), [ObservationDiscapacidadLE](StructureDefinition-ObservationDiscapacidadLE.md), [ObservationIndiceComorbilidadLE](StructureDefinition-ObservationIndiceComorbilidadLE.md), [ObservationIniciarCuidadorLE](StructureDefinition-ObservationIniciarCuidadorLE.md), [ObservationResultadoExamen](StructureDefinition-ObservationResultadoExamen.md), [ServiceRequest/AbadrenalEjemplo](ServiceRequest-AbadrenalEjemplo.md), [ServiceRequest/EjemploSolicitudExamen](ServiceRequest-EjemploSolicitudExamen.md), [ServiceRequestExamenLE](StructureDefinition-ServiceRequestExamenLE.md) and [TipoDeObservacion](ValueSet-TipoDeObservacion.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [AllergyIntolerance/AllergyIntoleranceExample](AllergyIntolerance-AllergyIntoleranceExample.md), [AllergyIntoleranceIniciarLE](StructureDefinition-AllergyIntoleranceIniciarLE.md)... Show 19 more, [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md), [Condition/ConditionAtencionejemplo](Condition-ConditionAtencionejemplo.md), [Condition/ConditionInicialEjemplo](Condition-ConditionInicialEjemplo.md), [ConditionDiagnosticoLE](StructureDefinition-ConditionDiagnosticoLE.md), [Observation/AnamnesisEjemplo](Observation-AnamnesisEjemplo.md), [ObservationAnamnesisLE](StructureDefinition-ObservationAnamnesisLE.md), [ObservationDiscapacidadLE](StructureDefinition-ObservationDiscapacidadLE.md), [ObservationIndiceComorbilidadLE](StructureDefinition-ObservationIndiceComorbilidadLE.md), [ObservationIniciarCuidadorLE](StructureDefinition-ObservationIniciarCuidadorLE.md), [ProblemaSaludGESVS](ValueSet-vs-problema-ges-tei.md), [Questionnaire/MotivoDerivacion](Questionnaire-MotivoDerivacion.md), [QuestionnaireResponseIniciarLE](StructureDefinition-QuestionnaireResponseIniciarLE.md), [ServiceRequest/AbadrenalEjemplo](ServiceRequest-AbadrenalEjemplo.md), [ServiceRequest/EjemploSolicitudExamen](ServiceRequest-EjemploSolicitudExamen.md), [ServiceRequest/EjemploSolicitudInterconsultaFinalizada](ServiceRequest-EjemploSolicitudInterconsultaFinalizada.md), [ServiceRequestLE](StructureDefinition-ServiceRequestLE.md), [TipoDeObservacion](ValueSet-TipoDeObservacion.md), [VSServicioRequerido](ValueSet-VSServicioRequerido.md) and [VSTerminologiasDiag](ValueSet-VSTerminologiasDiag.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [AllergyIntolerance Clinical Status Codes](http://terminology.hl7.org/6.1.0/CodeSystem-allergyintolerance-clinical.html): [AllergyIntolerance/AllergyIntoleranceExample](AllergyIntolerance-AllergyIntoleranceExample.md) and [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md)
* [AllergyIntolerance Verification Status](http://terminology.hl7.org/6.1.0/CodeSystem-allergyintolerance-verification.html): [AllergyIntolerance/AllergyIntoleranceExample](AllergyIntolerance-AllergyIntoleranceExample.md) and [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md)
* [Condition Category Codes](http://terminology.hl7.org/6.1.0/CodeSystem-condition-category.html): [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md), [Condition/ConditionAtencionejemplo](Condition-ConditionAtencionejemplo.md) and [Condition/ConditionInicialEjemplo](Condition-ConditionInicialEjemplo.md)
* [Condition Clinical Status Codes](http://terminology.hl7.org/6.1.0/CodeSystem-condition-clinical.html): [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md), [Condition/ConditionAtencionejemplo](Condition-ConditionAtencionejemplo.md), [Condition/ConditionInicialEjemplo](Condition-ConditionInicialEjemplo.md) and [ConditionDiagnosticoLE](StructureDefinition-ConditionDiagnosticoLE.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/6.1.0/CodeSystem-condition-ver-status.html): [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md), [Condition/ConditionAtencionejemplo](Condition-ConditionAtencionejemplo.md), [Condition/ConditionInicialEjemplo](Condition-ConditionInicialEjemplo.md) and [ConditionDiagnosticoLE](StructureDefinition-ConditionDiagnosticoLE.md)
* [Observation Category Codes](http://terminology.hl7.org/6.1.0/CodeSystem-observation-category.html): [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md), [Observation/AnticuerpoAdrenal](Observation-AnticuerpoAdrenal.md), [Observation/IndiceConmorbilidadEjemplo](Observation-IndiceConmorbilidadEjemplo.md) and [ObservationIndiceComorbilidadLE](StructureDefinition-ObservationIndiceComorbilidadLE.md)


* Usado con el permiso de HL7 International, todos los derechos resevados en los Licencias de HL7 Internacional.

* [Códigos de Comunas en Chile](https://hl7chile.cl/fhir/ig/clcore/1.9.2/CodeSystem-CSCodComunasCL.html): [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md), [Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)](Organization-OrganizationLEEjemplo.md) and [Patient/EjemploPatientLE](Patient-EjemploPatientLE.md)
* [Códigos de Provincias en Chile](https://hl7chile.cl/fhir/ig/clcore/1.9.2/CodeSystem-CSCodProvinciasCL.html): [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md) and [Patient/EjemploPatientLE](Patient-EjemploPatientLE.md)
* [Códigos de Regiones en Chile](https://hl7chile.cl/fhir/ig/clcore/1.9.2/CodeSystem-CSCodRegionCL.html): [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md), [Patient/EjemploPatientLE](Patient-EjemploPatientLE.md), [Practitioner/PractitionerProfesionalLEEjemplo](Practitioner-PractitionerProfesionalLEEjemplo.md) and [Practitioner/ProfesionalAdministrativoEjemplo](Practitioner-ProfesionalAdministrativoEjemplo.md)
* [Identidad de Genero](https://hl7chile.cl/fhir/ig/clcore/1.9.2/CodeSystem-CSIdentidaddeGenero.html): [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md) and [Patient/EjemploPatientLE](Patient-EjemploPatientLE.md)
* [Tipo Identificador](https://hl7chile.cl/fhir/ig/clcore/1.9.2/CodeSystem-CSTipoIdentificador.html): [Bundle/BundleIniciarEjemplo](Bundle-BundleIniciarEjemplo.md), [Patient/EjemploPatientLE](Patient-EjemploPatientLE.md)... Show 7 more, [PatientLE](StructureDefinition-PatientLE.md), [Practitioner/PractitionerProfesionalLEAtendedor](Practitioner-PractitionerProfesionalLEAtendedor.md), [Practitioner/PractitionerProfesionalLEEjemplo](Practitioner-PractitionerProfesionalLEEjemplo.md), [Practitioner/ProfesionalAdministrativoEjemplo](Practitioner-ProfesionalAdministrativoEjemplo.md), [PractitionerAdministrativoLE](StructureDefinition-PractitionerAdministrativoLE.md), [PractitionerProfesionalLE](StructureDefinition-PractitionerProfesionalLE.md) and [VSIdentificadorPrestador](ValueSet-VSIdentificadorPrestador.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.cl.minsal.tei",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ImplementationGuide/hl7.fhir.cl.minsal.tei",
  "version" : "0.2.3",
  "name" : "TiemposdeEsperaInteroperable",
  "title" : "Tiempos de Espera Interoperable",
  "status" : "draft",
  "date" : "2026-07-22T14:55:14-04:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Jorge Mansilla",
    "telecom" : [{
      "system" : "email",
      "value" : "jorge.mansilla@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "Tiempos de Espera Interoperable",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "packageId" : "hl7.fhir.cl.minsal.tei",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7_fhir_cl_clcore",
    "uri" : "https://hl7chile.cl/fhir/ig/clcore/ImplementationGuide/hl7.fhir.cl.clcore",
    "packageId" : "hl7.fhir.cl.clcore",
    "version" : "1.9.2"
  },
  {
    "id" : "hl7_fhir_uv_extensions_r4",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.2.0"
  },
  {
    "id" : "hl7_terminology_r4",
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "5.5.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "draft"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-warninfo"
      },
      {
        "url" : "value",
        "valueString" : "CodeSystem.jurisdiction"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-warninfo"
      },
      {
        "url" : "value",
        "valueString" : "CodeSystem.language"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "draft"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-warninfo"
      },
      {
        "url" : "value",
        "valueString" : "CodeSystem.jurisdiction"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-warninfo"
      },
      {
        "url" : "value",
        "valueString" : "CodeSystem.language"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/AllergyIntoleranceIniciarLE"
      },
      "name" : "AllergyIntolerance Iniciar LE",
      "description" : "AllergyIntolerance Iniciar LE",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/AppointmentAgendarLE"
      },
      "name" : "Appointment Agendar LE",
      "description" : "Appointment Agendar LE",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BundleAgendarLE"
      },
      "name" : "Bundle Agendar LE",
      "description" : "Bundle Agendar LE, recurso utilizado para transportar todos los datos del mensaje relacionado al evento Agendar.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BundleAtenderLE"
      },
      "name" : "Bundle Atender LE",
      "description" : "Bundle Atender LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento Atender.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BundleIniciarLE"
      },
      "name" : "Bundle Iniciar LE",
      "description" : "Bundle Iniciar LE, recurso utilizado para transportar todos los datos del mensaje relacionado al evento iniciar.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BundlePriorizarLE"
      },
      "name" : "Bundle Priorizar LE",
      "description" : "Bundle Priorizar LE, recurso utilizado para transportar todos los datos del mensaje relacionado al evento Priorizar.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BundleReferenciarLE"
      },
      "name" : "Bundle Referenciar LE",
      "description" : "Bundle Referenciar LE, recurso utilizado para transportar todos los datos del mensaje relacionado al evento referenciar.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BundleRevisarLE"
      },
      "name" : "Bundle Revisar LE",
      "description" : "Bundle Revisar LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento revisar.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BundleTerminarLE"
      },
      "name" : "Bundle Terminar LE",
      "description" : "Bundle Terminar LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento terminar.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/CarePlanAtenderLE"
      },
      "name" : "CarePlan Atender LE",
      "description" : "CarePlan Atender LE es el recurso utilizado para representar las indicaciones entregadas por el profesional como resultado de la atención.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ConditionDiagnosticoLE"
      },
      "name" : "Condition Diagnostico LE",
      "description" : "Condicion Diagnostico LE, recurso que se utiliza para indicar el diagnóstico",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionConsecuenciaAtencionCodigo"
      },
      "name" : "Consecuencia Atención Codigo",
      "description" : "Consecuencia Atención Codigo",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSConsecuenciaAtencionCodigo"
      },
      "name" : "Consecuencia Atención Codigo",
      "description" : "Consecuencia Atención Codigo",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSConsecuenciaAtencionCodigo"
      },
      "name" : "Consecuencia Atención Codigo",
      "description" : "Consecuencia Atención Codigo",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ObservationIniciarCuidadorLE"
      },
      "name" : "Cuidador LE",
      "description" : "Indica que el paciente es cuidador, es decir es responsable del cuidado de otra persona",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/CodigoExamen"
      },
      "name" : "Códigos de Examenes",
      "description" : "Codigos de Examenes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSDerivadoParaCodigo"
      },
      "name" : "Derivado Para",
      "description" : "Derivado Para",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSDerivadoParaCodigo"
      },
      "name" : "Derivado Para",
      "description" : "Derivado Para",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSDestinoReferenciaCodigo"
      },
      "name" : "Destino Referencia Codigo",
      "description" : "Destino Referencia Codigo",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSDestinoReferenciaCodigo"
      },
      "name" : "Destino Referencia Codigo",
      "description" : "Destino Referencia Codigo",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ObservationDiscapacidadLE"
      },
      "name" : "Discapacidad LE",
      "description" : "Observación Discapacidad LE, para describir si un paciente presenta discapacidad",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Appointment"
      }],
      "reference" : {
        "reference" : "Appointment/AgendaEjemplo"
      },
      "name" : "Ejemplo Agenda",
      "description" : "Ejemplo de la agenda de un paciente",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AppointmentAgendarLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/BundleIniciarEjemplo"
      },
      "name" : "Ejemplo Bundle Iniciar",
      "description" : "Ejemplo de un mensaje del evento Iniciar",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/BundleIniciarLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/ConditionAtencionejemplo"
      },
      "name" : "Ejemplo Condición de Atención",
      "description" : "Ejemplo condición como resultado del evento atender",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ConditionDiagnosticoLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/ConditionInicialEjemplo"
      },
      "name" : "Ejemplo Condition Inicial",
      "description" : "Ejemplo de una condición como motivo de interconsulta",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ConditionDiagnosticoLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/AnamnesisEjemplo"
      },
      "name" : "Ejemplo de Anamnesis",
      "description" : "Una pequeña descripción del encuentro y el tratamiento, como relato",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationAnamnesisLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/IndiceConmorbilidadEjemplo"
      },
      "name" : "Ejemplo de Indice Conmorbilidad",
      "description" : "Indica el nivel de conmorbilidad que posee un paciente",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationIndiceComorbilidadLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/PractitionerProfesionalLEAtendedor"
      },
      "name" : "Ejemplo de Otro Profesional",
      "description" : "Ejemplo de otro profesional",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerProfesionalLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      }],
      "reference" : {
        "reference" : "CarePlan/CarePlanAtencionEjemplo"
      },
      "name" : "Ejemplo de Plan de Cuidados",
      "description" : "Ejemplo de un plan de cuidados de ejemplo como resultado de una atención",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/CarePlanAtenderLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/PractitionerProfesionalLEEjemplo"
      },
      "name" : "Ejemplo de Practitioner ProfesionalLE",
      "description" : "Ejemplo de un profesional de tiempos de espera",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerProfesionalLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/PrednisonaEjemplo"
      },
      "name" : "Ejemplo de Prescipción",
      "description" : "Ejemplo de una prescripción de ejemplo de una prednisona como resultado de una atención, más como parte del plan de cuidados",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/MedicationRequestLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/ProfesionalAdministrativoEjemplo"
      },
      "name" : "Ejemplo de Profesional Administrativo",
      "description" : "Ejemplo de un profesional administrativo que referenciara la interconsulta",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerAdministrativoLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      }],
      "reference" : {
        "reference" : "ServiceRequest/AbadrenalEjemplo"
      },
      "name" : "Ejemplo de Solicitud de AbAdrenal",
      "description" : "Ejemplo de Solicitud de AbAdrenal como resultado de la atención más un plan de cuidado, para realizar seguimiento",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestExamenLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/AtencionEjemplo"
      },
      "name" : "Ejemplo de un Encuentro",
      "description" : "Es un ejemplo de un encuentro que se realiza en al finalizar el evento atender",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterAtenderLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/EncounterIniciarEjemplo"
      },
      "name" : "Ejemplo de un Encuentro inicial",
      "description" : "Es un ejemplo de un encuentro que genera una interconsulta",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterIniciarLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/AllergyIntoleranceExample"
      },
      "name" : "Ejemplo de una Alergía",
      "description" : "Ejemplo de alergia a castaña de cajú",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AllergyIntoleranceIniciarLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      }],
      "reference" : {
        "reference" : "ServiceRequest/EjemploSolicitudInterconsultaFinalizada"
      },
      "name" : "Ejemplo de una Solicitud",
      "description" : "Ejemplo de una Solicitud finalizada",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      }],
      "reference" : {
        "reference" : "ServiceRequest/EjemploSolicitudExamen"
      },
      "name" : "Ejemplo de una Solicitud de Examen",
      "description" : "Ejemplo de la solicitud realizada junto a una interconsulta",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestExamenLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/EjemploObservationCuidador"
      },
      "name" : "Ejemplo Observation Cuidador",
      "description" : "Ejemplo del recurso que indica si el paciente es cuidador o no",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationIniciarCuidadorLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/EjemploObservationDiscapacidadLE"
      },
      "name" : "Ejemplo Observation Discapacidad LE",
      "description" : "Ejemplo que inidica si el paciente tiene discapacidad",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationDiscapacidadLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/OrganizationLEEjemplo"
      },
      "name" : "Ejemplo OrganizationLE",
      "description" : "Ejemplo de una organización que inicia una interconsulta",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/OrganizationLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/EjemploPatientLE"
      },
      "name" : "Ejemplo PatientLE",
      "description" : "Ejemplo de un paciente de la guía Tiempos de Espera",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/PractitionerRoleIniciador"
      },
      "name" : "Ejemplo PractitionerRole Iniciador",
      "description" : "Ejemplo de un profesional con el rol de iniciador de la interconsulta",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/AnticuerpoAdrenal"
      },
      "name" : "Ejemplo Resultado Examen",
      "description" : "Ejemplo de un resultado de laboratorio de Anticuerpo Adrenal",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationResultadoExamen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/PractitionerRoleAtendedor"
      },
      "name" : "Ejemplo Rol Atendedor",
      "description" : "Ejemplo de un profesional en el rol atendedor",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/OrganizationLEAtendedor"
      },
      "name" : "Ejemplo Simple Organization",
      "description" : "Ejemplo simple de una organización",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/OrganizationLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MessageHeader"
      }],
      "reference" : {
        "reference" : "MessageHeader/MesssageHeaderAtenderEjemplo"
      },
      "name" : "Ejemplod de Cabecera Mensaje",
      "description" : "Ejemplo de la cabecera de un mensaje, en este caso del evento atender",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/MessageHeaderLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EncounterAtenderLE"
      },
      "name" : "Encounter Atender LE",
      "description" : "Encounter Atender LE recurso que se utiliza para representar el encuentro médico, cuando se comienza a ejecutar la atención de la interconsulta.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EncounterIniciarLE"
      },
      "name" : "Encounter Iniciar LE",
      "description" : "Encounter Iniciar LE recurso que se utiliza para representar el encuentro médico, que representa el encuentro de cuando se solicita la interconsulta.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VsEspecialidadDest"
      },
      "name" : "Especialidad de Destino",
      "description" : "Son todas las especialidades de destino de una interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionEspecialidadMedicaDestinoCodigo"
      },
      "name" : "Especialidad Médica Destino Código",
      "description" : "Especialidad Médica Destino Código",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSEspecialidadFarma"
      },
      "name" : "Especialidades Farmaceúticas o Química Farmaceúticas",
      "description" : "Especialidades Farmaceúticas o Química Farmaceúticas",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSEspecialidadFarma"
      },
      "name" : "Especialidades Farmaceúticas o Química Farmaceúticas",
      "description" : "Especialidades Farmaceúticas o Química Farmaceúticas",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSEspecialidadOdont"
      },
      "name" : "Especialidades Odontológicas",
      "description" : "Especialidades Odontológicas",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSEspecialidadOdont"
      },
      "name" : "Especialidades Odontológicas",
      "description" : "Especialidades Odontológicas",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSEspecialidadBioqca"
      },
      "name" : "Especialidades y Subespecialidades Bioquímicas",
      "description" : "Especialidades y Subespecialidades Bioquímicas",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSEspecialidadBioqca"
      },
      "name" : "Especialidades y Subespecialidades Bioquímicas",
      "description" : "Especialidades y Subespecialidades Bioquímicas",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSEspecialidadMed"
      },
      "name" : "EspecialidadMed",
      "description" : "EspecialidadMed",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSEspecialidadMed"
      },
      "name" : "EspecialidadMed",
      "description" : "EspecialidadMed",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSEstablecimientoDestino"
      },
      "name" : "Establecimiento Destino Codigo",
      "description" : "Establecimiento Destino Codigo ejemplos hechos en base a este documento con los [Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSEstablecimientoDestino"
      },
      "name" : "Establecimiento Destino Codigo",
      "description" : "Establecimiento Destino Codigo ejemplos hechos en base a este documento con los [Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSEstadoInterconsulta"
      },
      "name" : "Estado Interconsulta",
      "description" : "Estado Interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSEstadoInterconsulta"
      },
      "name" : "Estado Interconsulta",
      "description" : "Estado Interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionEstadoInterconsultaCodigoLE"
      },
      "name" : "Estado Interconsulta Codigo",
      "description" : "Estado Interconsulta Codigo",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSEstadoCivil"
      },
      "name" : "EstadoCivil",
      "description" : "EstadoCivil",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSEstadoCivil"
      },
      "name" : "EstadoCivil",
      "description" : "EstadoCivil",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/exp-params"
      },
      "name" : "exp-params",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionBoolAtencionPreferente"
      },
      "name" : "ExtBool Atención Preferente",
      "description" : "ExtBool ¿Hace uso de atención preferente?",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionPertinenciaAtencionBox"
      },
      "name" : "ExtBool Pertinencia Atencion Box",
      "description" : "ExtBool Pertinencia Atencion Box",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionBoolRequiereExamen"
      },
      "name" : "ExtBool Requiere Examen",
      "description" : "ExtBool Requiere Examen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionBoolResolutividadAPS"
      },
      "name" : "ExtBool Resolutividad APS",
      "description" : "ExtBool Resolutividad APS",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionSolicitudExamenes"
      },
      "name" : "ExtBool Solicitud Examenes",
      "description" : "Extensión que indica si requiere solicitud examenes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Contactado"
      },
      "name" : "Extension ContactadoLE",
      "description" : "Extension ContactadoLE",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionStringFundamentoPriorizacion"
      },
      "name" : "Extension String Fundamento Priorizacion",
      "description" : "Extensión para fundamenta la priorización de la interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionMotivoNoPertinencia"
      },
      "name" : "ExtString Motivo No Pertinencia",
      "description" : "Extensión que declara un porque de la no pertinencia",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSIdentificadorPrestador"
      },
      "name" : "IdentificadorPrestador",
      "description" : "IdentificadorPrestador",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSIndicecomorbilidad"
      },
      "name" : "Indice Comorbilidad",
      "description" : "Indice Comorbilidad",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSIndicecomorbilidad"
      },
      "name" : "Indice Comorbilidad",
      "description" : "Indice Comorbilidad",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ObservationIndiceComorbilidadLE"
      },
      "name" : "Indice Comorbilidad LE",
      "description" : "Observation Iniciar Indice Comorbilidad LE, recurso que se utiliza para indicar el riesgo de un paciente según su índice de comorbilidad",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionMediodeContacto"
      },
      "name" : "Medio de Contacto",
      "description" : "Medio de Contacto",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSMediodeContacto"
      },
      "name" : "Medio Notificación",
      "description" : "Medio Notificación",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSMediodeContacto"
      },
      "name" : "Medio Notificación",
      "description" : "Medio Notificación",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Mencion"
      },
      "name" : "Mención profesional añadida al título profesional",
      "description" : "Mención profesional obtenida junto con el título, dato que se agrega en texto lible",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MessageHeaderLE"
      },
      "name" : "MessageHeader LE",
      "description" : "MessageHeaderLE",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSModalidadAtencionCodigo"
      },
      "name" : "Modalidad Atencion Codigo",
      "description" : "Modalidad Atencion Codigo",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSModalidadAtencionCodigo"
      },
      "name" : "Modalidad Atencion Codigo",
      "description" : "Modalidad Atencion Codigo",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionMotivoCierreInterconsulta"
      },
      "name" : "Motivo Cierre Interconsulta",
      "description" : "Motivo Cierre Interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSMotivoCierreInterconsulta"
      },
      "name" : "Motivo Cierre Interconsulta",
      "description" : "Motivo Cierre Interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSMotivoCierreInterconsulta"
      },
      "name" : "Motivo Cierre Interconsulta",
      "description" : "Motivo Cierre Interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/MotivoDerivacion"
      },
      "name" : "Motivo Derivacion",
      "description" : "Permite describir el motivo de derivacion de un paciente",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSMotivoNoContactabilidad"
      },
      "name" : "Motivo No Contactabilidad",
      "description" : "Motivo No Contactabilidad",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSMotivoNoContactabilidad"
      },
      "name" : "Motivo No Contactabilidad",
      "description" : "Motivo No Contactabilidad",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSMotivoNoPertinenciaCodigo"
      },
      "name" : "Motivo No Pertinencia Codigo",
      "description" : "Motivo No Pertinencia Codigo",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSMotivoNoPertinenciaCodigo"
      },
      "name" : "Motivo No Pertinencia Codigo",
      "description" : "Motivo No Pertinencia Codigo",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ObservationAnamnesisLE"
      },
      "name" : "Observation Anamnesis LE",
      "description" : "Observation Anamnesis LE",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ObservationResultadoExamen"
      },
      "name" : "Observation Resultado Examen",
      "description" : "Resultado de examen anterior como antecedente",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/OrganizationLE"
      },
      "name" : "Organization LE",
      "description" : "Organization LE según [Códigos DEIS del establecimientos](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionOrigenInterconsulta"
      },
      "name" : "Origen Interconsulta",
      "description" : "Origen Interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSorigenInterconsulta"
      },
      "name" : "Origen Interconsulta",
      "description" : "Origen Interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSorigenInterconsulta"
      },
      "name" : "Origen Interconsulta",
      "description" : "Origen Interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PatientLE"
      },
      "name" : "Patient LE",
      "description" : "Paciente definido para el Registro Maestro de Pacientes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PaisOrigenMPI"
      },
      "name" : "País de origen del paciente",
      "description" : "País de origen del paciente",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionPertinenciaInterconsulta"
      },
      "name" : "Pertinencia Interconsulta",
      "description" : "Pertinencia Interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSPertinenciaInterconsulta"
      },
      "name" : "Pertinencia Interconsulta",
      "description" : "Pertinencia Interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSPertinenciaInterconsulta"
      },
      "name" : "Pertinencia Interconsulta",
      "description" : "Pertinencia Interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PractitionerRoleLE"
      },
      "name" : "PractitionerRole LE",
      "description" : "PractitionerRole LE, recurso que se utiliza para representar la información de roles, un profesional de la salud.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PractitionerAdministrativoLE"
      },
      "name" : "Prestador Administrativo LE",
      "description" : "Prestador Administrativo definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PractitionerProfesionalLE"
      },
      "name" : "Prestador Profesional LE",
      "description" : "Prestador Profesional Individual definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ProvenanceLE"
      },
      "name" : "Provenance Atender LE",
      "description" : "Provenance Atender LE es el recurso utilizado para registrar cambios en los recursos de Atender LE, con el fin de mantener un seguimiento de las modificaciones realizadas en los registros del paciente.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PueblosAfrodescendiente"
      },
      "name" : "Pueblos Afrodescendiente",
      "description" : "Pueblos Afrodescendiente",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PueblosOriginarios"
      },
      "name" : "Pueblos Originarios",
      "description" : "Almacenar si el paciente pertenece a algun pueblo originario",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/PueblosOriginariosVS"
      },
      "name" : "Pueblos Originarios de Chile",
      "description" : "Pueblos Originarios de Chile",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/PueblosOriginariosCS"
      },
      "name" : "Pueblos Originarios de Chile",
      "description" : "Pueblos Originarios de Chile",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PueblosOriginariosPerteneciente"
      },
      "name" : "Pueblos Originarios Perteneciente",
      "description" : "Pueblos Originarios Perteneciente",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/MotivoDerivacionEjemplo3"
      },
      "name" : "QuestionnaireResponse Iniciar LE",
      "description" : "Respuesta Full Motivo de derivación, Problema de salud GES y Subproblema de salud GES",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/QuestionnaireResponseIniciarLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/MotivoDerivacionEjemplo1"
      },
      "name" : "QuestionnaireResponse Iniciar LE 1",
      "description" : "Respuesta Motivo de derivación",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/QuestionnaireResponseIniciarLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/MotivoDerivacionEjemplo2"
      },
      "name" : "QuestionnaireResponse Iniciar LE 2",
      "description" : "Respuesta Motivo de derivación y Problema de salud GES",
      "exampleCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/QuestionnaireResponseIniciarLE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/QuestionnaireResponseIniciarLE"
      },
      "name" : "QuestionnaireResponse Iniciar Motivo de la Derivación LE",
      "description" : "QuestionnaireResponse Iniciar para Motivo de Derivación LE",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSReligion"
      },
      "name" : "Religion",
      "description" : "Religion",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSReligion"
      },
      "name" : "Religion",
      "description" : "Religion",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Religion"
      },
      "name" : "Religión",
      "description" : "Religión",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSPractitionerTipoRolLE"
      },
      "name" : "Rol de profesionales",
      "description" : "Rol de profesionales(Practitioner) en algún evento, durante la intercosulta.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSPractitionerTipoRolLE"
      },
      "name" : "Rol de profesionales",
      "description" : "CodeSystem con códigos definidos para representar cada rol de profesional o funcionario administrativo dentro de la interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ServiceRequestLE"
      },
      "name" : "ServiceRequest LE",
      "description" : "ServiceRequest LE recurso utilizado para la representación de los datos de la interconsulta.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSServicioRequerido"
      },
      "name" : "Servicio Requerido",
      "description" : "Servicio Requerido",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-problema-ges-tei"
      },
      "name" : "Sitema de Codificación para los Problemas de Salud GES",
      "description" : "Sistema de codificación de los problemas de salud GES",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/SituacionCalle"
      },
      "name" : "Situacion Calle",
      "description" : "Situacion Calle",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ServiceRequestExamenLE"
      },
      "name" : "Solicitud de Examen LE",
      "description" : "ServiceRequestExamen LE recurso utilizado para la representación de la solicitud de examen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MedicationRequestLE"
      },
      "name" : "Solicitud de Medicamento LE",
      "description" : "Perfil para la prescripción de un medicamento al paciente",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/SospechaPatologiaGes"
      },
      "name" : "Sospecha Patologia Ges",
      "description" : "Indica si corresponde a GES",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtensionSubEspecialidadMedicaDestinoCodigo"
      },
      "name" : "SubEspecialidad Médica Destino Código",
      "description" : "SubEspecialidad Médica Destino Código",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSTerminologiasDiag"
      },
      "name" : "TerminologiasDiag",
      "description" : "TerminologiasDiag",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSTipoConsulta"
      },
      "name" : "Tipo Consulta",
      "description" : "Tipo Consulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSTipoConsulta"
      },
      "name" : "Tipo Consulta",
      "description" : "Tipo Consulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSTipoEventoLE"
      },
      "name" : "Tipo de Evento",
      "description" : "Tipo de evento en la interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSTipoEventoLE"
      },
      "name" : "Tipo de Evento",
      "description" : "CodeSystem con códigos definidos para representar cada evento en la interconsulta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/TipoDeObservacion"
      },
      "name" : "Tipo de Observación",
      "description" : "Estas son algunas de las observaciones que se pueden realizar en un encuentro, que permiten dar antecedentes a la interconsulta.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSTipoObservacionMinsal"
      },
      "name" : "Tipo de Observación",
      "description" : "Son todos los tipos de observaciones dadas por el Ministerio De Salud",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VSTituloProfesional"
      },
      "name" : "TituloProfesional",
      "description" : "TituloProfesional",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CSTituloProfesional"
      },
      "name" : "TituloProfesional",
      "description" : "TituloProfesional",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-problema-ges-tei"
      },
      "name" : "Value Set de los Problemas de Salud  GES",
      "description" : "Set de valores utilizados para los problemas de salud ges",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Index",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "workflow.html"
        }],
        "nameUrl" : "workflow.html",
        "title" : "Workflow",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "eventos_interoperabilidad_CNE.html"
        }],
        "nameUrl" : "eventos_interoperabilidad_CNE.html",
        "title" : "Eventos Interoperabilidad CNE",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "rol_de_actores.html"
        }],
        "nameUrl" : "rol_de_actores.html",
        "title" : "Rol De Actores",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "historias_de_usuario_segun_rol.html"
        }],
        "nameUrl" : "historias_de_usuario_segun_rol.html",
        "title" : "Historias De Usuario Segun Rol",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "Eventos.html"
        }],
        "nameUrl" : "Eventos.html",
        "title" : "Eventos",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "Transacciones.html"
        }],
        "nameUrl" : "Transacciones.html",
        "title" : "Transacciones",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "artifacts.html"
        }],
        "nameUrl" : "artifacts.html",
        "title" : "Artifacts",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "Mensajeria.html"
        }],
        "nameUrl" : "Mensajeria.html",
        "title" : "Mensajeria",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "historial_de_cambios.html"
        }],
        "nameUrl" : "historial_de_cambios.html",
        "title" : "Historial De Cambios",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
