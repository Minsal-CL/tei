# ServiceRequest LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **ServiceRequest LE**

## Resource Profile: ServiceRequest LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestLE | *Version*:0.2.3 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:ServiceRequestLE |

 
ServiceRequest LE recurso utilizado para la representación de los datos de la interconsulta. 

**Usages:**

* Use this Profile: [Bundle Agendar LE](StructureDefinition-BundleAgendarLE.md), [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md), [Bundle Iniciar LE](StructureDefinition-BundleIniciarLE.md), [Bundle Priorizar LE](StructureDefinition-BundlePriorizarLE.md)... Show 3 more, [Bundle Referenciar LE](StructureDefinition-BundleReferenciarLE.md), [Bundle Revisar LE](StructureDefinition-BundleRevisarLE.md) and [Bundle Terminar LE](StructureDefinition-BundleTerminarLE.md)
* Refer to this Profile: [Encounter Atender LE](StructureDefinition-EncounterAtenderLE.md), [MessageHeader LE](StructureDefinition-MessageHeaderLE.md) and [Solicitud de Examen LE](StructureDefinition-ServiceRequestExamenLE.md)
* Examples for this Profile: [ServiceRequest/EjemploSolicitudInterconsultaFinalizada](ServiceRequest-EjemploSolicitudInterconsultaFinalizada.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-ServiceRequestLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ServiceRequestLE.csv), [Excel](StructureDefinition-ServiceRequestLE.xlsx), [Schematron](StructureDefinition-ServiceRequestLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ServiceRequestLE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestLE",
  "version" : "0.2.3",
  "name" : "ServiceRequestLE",
  "title" : "ServiceRequest LE",
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
  "description" : "ServiceRequest LE recurso utilizado para la representación de los datos de la interconsulta.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest.id",
      "path" : "ServiceRequest.id",
      "short" : "Id temporal necesario para identificar el recurso",
      "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "ServiceRequest.extension:MotivoCierreInterconsulta",
      "path" : "ServiceRequest.extension",
      "sliceName" : "MotivoCierreInterconsulta",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionMotivoCierreInterconsulta"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:RequiereExamen",
      "path" : "ServiceRequest.extension",
      "sliceName" : "RequiereExamen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolRequiereExamen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:AtencionPreferente",
      "path" : "ServiceRequest.extension",
      "sliceName" : "AtencionPreferente",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolAtencionPreferente"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:ResolutividadAPS",
      "path" : "ServiceRequest.extension",
      "sliceName" : "ResolutividadAPS",
      "short" : "Programa de Resolutividad local.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolResolutividadAPS"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:OrigenInterconsulta",
      "path" : "ServiceRequest.extension",
      "sliceName" : "OrigenInterconsulta",
      "short" : "Origen de la interconsulta",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionOrigenInterconsulta"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:FundamentoPriorizacion",
      "path" : "ServiceRequest.extension",
      "sliceName" : "FundamentoPriorizacion",
      "short" : "Razones del porque se prioriza esta Interconsulta.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionStringFundamentoPriorizacion"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:EstadoInterconsultaCodigo",
      "path" : "ServiceRequest.extension",
      "sliceName" : "EstadoInterconsultaCodigo",
      "short" : "Estado de la Interconsulta en relación al proceso de negocio.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionEstadoInterconsultaCodigoLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:EspecialidadMedicaDestinoCodigo",
      "path" : "ServiceRequest.extension",
      "sliceName" : "EspecialidadMedicaDestinoCodigo",
      "short" : "Código de la especialidad médica de destino.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionEspecialidadMedicaDestinoCodigo"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:SubEspecialidadMedicaDestinoCodigo",
      "path" : "ServiceRequest.extension",
      "sliceName" : "SubEspecialidadMedicaDestinoCodigo",
      "short" : "Código de la subespecialidad médica de destino",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionSubEspecialidadMedicaDestinoCodigo"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:PertinenciaInterconsulta",
      "path" : "ServiceRequest.extension",
      "sliceName" : "PertinenciaInterconsulta",
      "short" : "Descripción de la evaluación de pertinencia de la interconsulta",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionPertinenciaInterconsulta"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:CorrespondeGES",
      "path" : "ServiceRequest.extension",
      "sliceName" : "CorrespondeGES",
      "short" : "Indica si corresponde a GES la interconsulta",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/SospechaPatologiaGes"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "short" : "Identificador de la Interconsulta (Se asigna a nivel central)",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.identifier.value",
      "path" : "ServiceRequest.identifier.value",
      "short" : "Identificador de la Interconsulta",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "short" : "Estado de la Interconsulta. Por defecto, se utiliza 'draft'",
      "patternCode" : "draft",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "short" : "Tipo de solicitud",
      "patternCode" : "order",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "short" : "Modalidad de atención",
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSModalidadAtencionCodigo"
      }
    },
    {
      "id" : "ServiceRequest.category.coding",
      "path" : "ServiceRequest.category.coding",
      "short" : "Códigos definidos por un sistema terminológico",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category.coding.system",
      "path" : "ServiceRequest.category.coding.system",
      "short" : "Sistema terminológico, url/uri/uuid",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category.coding.code",
      "path" : "ServiceRequest.category.coding.code",
      "short" : "Código definido en un sistema terminológico",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category.coding.display",
      "path" : "ServiceRequest.category.coding.display",
      "short" : "Representación visual, definida por el sistema terminológico",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.priority",
      "path" : "ServiceRequest.priority",
      "short" : "Prioridad Recomendada Interconsulta de Origen: routine=normal | urgent=urgente",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Correspondencia al servicio que se requiere.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSServicioRequerido"
      }
    },
    {
      "id" : "ServiceRequest.code.coding",
      "path" : "ServiceRequest.code.coding",
      "short" : "Códigos definidos por un sistema terminológico",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding.system",
      "path" : "ServiceRequest.code.coding.system",
      "short" : "Sistema terminológico, url/uri/uuid",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding.code",
      "path" : "ServiceRequest.code.coding.code",
      "short" : "Código definido en un sistema terminológico",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding.display",
      "path" : "ServiceRequest.code.coding.display",
      "short" : "Representación visual, definida por el sistema terminológico",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "short" : "Paciente a quien se le hace la orden de IC",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "short" : "Referencia al encuentro que da Iniciar a la interconsulta",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterIniciarLE"]
      }]
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "short" : "Fecha en que se solicita la Interconsulta. El formato corresponde a año, mes, día y hora (hh:mm) YYYY-MM-DDTHH:MMZ",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "short" : "Rol del médico que solicita la interconsulta",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.performer",
      "path" : "ServiceRequest.performer",
      "short" : "Rol especialista que resuelve la solicitud de interconsulta",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.locationCode",
      "path" : "ServiceRequest.locationCode",
      "short" : "Destino al que se referencia.",
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSDestinoReferenciaCodigo"
      }
    },
    {
      "id" : "ServiceRequest.locationCode.coding",
      "path" : "ServiceRequest.locationCode.coding",
      "short" : "Códigos definidos por un sistema terminológico",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.locationCode.coding.system",
      "path" : "ServiceRequest.locationCode.coding.system",
      "short" : "Sistema terminológico, url/uri/uuid",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.locationCode.coding.code",
      "path" : "ServiceRequest.locationCode.coding.code",
      "short" : "Código definido en un sistema terminológico",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.locationCode.coding.display",
      "path" : "ServiceRequest.locationCode.coding.display",
      "short" : "Representación visual, definida por el sistema terminológico",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "short" : "Para qué se envia a consulta el paciente.",
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSDerivadoParaCodigo"
      }
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "description" : "Slice creado para almacenar referencias",
        "rules" : "open"
      },
      "short" : "Información clínica adicional",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo:DiagnosticoInicio",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "DiagnosticoInicio",
      "short" : "Referencia a la condición que especifica el diagnóstico inicial por el cual se emite la IC",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ConditionDiagnosticoLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo:TipoAlergia",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "TipoAlergia",
      "short" : "Referencia  a los tipos de alergia",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AllergyIntoleranceIniciarLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo:IndiceComorbilidad",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "IndiceComorbilidad",
      "short" : "Referencia al indice de comorbilidad",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationIndiceComorbilidadLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo:Cuidador",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "Cuidador",
      "short" : "Referencia a la observación de si el paciente es cuidador",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationIniciarCuidadorLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo:Discapacidad",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "Discapacidad",
      "short" : "Referencia a la observación que indica si el paciente tiene discapacidad",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationDiscapacidadLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo:motivoDerivacion",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "motivoDerivacion",
      "short" : "Referencia al motivo de derivación",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/QuestionnaireResponseIniciarLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo:SolicitudExamen",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "SolicitudExamen",
      "short" : "Referencia a las solicitudes de examenes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestExamenLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo:ResultadoExamen",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "ResultadoExamen",
      "short" : "Referencia al los resultados de examenes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationResultadoExamen"]
      }],
      "mustSupport" : true
    }]
  }
}

```
