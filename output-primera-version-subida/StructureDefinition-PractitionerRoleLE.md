# PractitionerRole LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **PractitionerRole LE**

## Resource Profile: PractitionerRole LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE | *Version*:0.2.3 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:PractitionerRoleLE |

 
PractitionerRole LE, recurso que se utiliza para representar la información de roles, un profesional de la salud. 

**Usages:**

* Use this Profile: [Bundle Agendar LE](StructureDefinition-BundleAgendarLE.md), [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md), [Bundle Iniciar LE](StructureDefinition-BundleIniciarLE.md), [Bundle Priorizar LE](StructureDefinition-BundlePriorizarLE.md)... Show 3 more, [Bundle Referenciar LE](StructureDefinition-BundleReferenciarLE.md), [Bundle Revisar LE](StructureDefinition-BundleRevisarLE.md) and [Bundle Terminar LE](StructureDefinition-BundleTerminarLE.md)
* Refer to this Profile: [Appointment Agendar LE](StructureDefinition-AppointmentAgendarLE.md), [Encounter Atender LE](StructureDefinition-EncounterAtenderLE.md), [Encounter Iniciar LE](StructureDefinition-EncounterIniciarLE.md), [MessageHeader LE](StructureDefinition-MessageHeaderLE.md) and [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md)
* Examples for this Profile: [PractitionerRole/PractitionerRoleAtendedor](PractitionerRole-PractitionerRoleAtendedor.md) and [PractitionerRole/PractitionerRoleIniciador](PractitionerRole-PractitionerRoleIniciador.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-PractitionerRoleLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PractitionerRoleLE.csv), [Excel](StructureDefinition-PractitionerRoleLE.xlsx), [Schematron](StructureDefinition-PractitionerRoleLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PractitionerRoleLE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE",
  "version" : "0.2.3",
  "name" : "PractitionerRoleLE",
  "title" : "PractitionerRole LE",
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
  "description" : "PractitionerRole LE, recurso que se utiliza para representar la información de roles, un profesional de la salud.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole.id",
      "path" : "PractitionerRole.id",
      "short" : "Id temporal necesario para identificar el recurso",
      "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "short" : "Referencia al prestador, profesional o administrativo, que varía según evento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerProfesionalLE",
        "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerAdministrativoLE"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "short" : "Organización, que se identifica con el código de establecimiento",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/OrganizationLE"]
      }]
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "Roles que el prestador puede realizar",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSPractitionerTipoRolLE"
      }
    },
    {
      "id" : "PractitionerRole.code.coding",
      "path" : "PractitionerRole.code.coding",
      "short" : "Códigos definidos por un sistema terminológico",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.code.coding.system",
      "path" : "PractitionerRole.code.coding.system",
      "short" : "Sistema terminológico, url/uri/uuid"
    },
    {
      "id" : "PractitionerRole.code.coding.code",
      "path" : "PractitionerRole.code.coding.code",
      "short" : "Código definido en un sistema terminológico",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
