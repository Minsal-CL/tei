# AllergyIntolerance Iniciar LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **AllergyIntolerance Iniciar LE**

## Resource Profile: AllergyIntolerance Iniciar LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AllergyIntoleranceIniciarLE | *Version*:0.2.3 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:AllergyIntoleranceIniciarLE |

 
AllergyIntolerance Iniciar LE 

**Usages:**

* Use this Profile: [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md), [Bundle Iniciar LE](StructureDefinition-BundleIniciarLE.md) and [Bundle Referenciar LE](StructureDefinition-BundleReferenciarLE.md)
* Refer to this Profile: [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md)
* Examples for this Profile: [AllergyIntolerance/AllergyIntoleranceExample](AllergyIntolerance-AllergyIntoleranceExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-AllergyIntoleranceIniciarLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AllergyIntoleranceIniciarLE.csv), [Excel](StructureDefinition-AllergyIntoleranceIniciarLE.xlsx), [Schematron](StructureDefinition-AllergyIntoleranceIniciarLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AllergyIntoleranceIniciarLE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AllergyIntoleranceIniciarLE",
  "version" : "0.2.3",
  "name" : "AllergyIntoleranceIniciarLE",
  "title" : "AllergyIntolerance Iniciar LE",
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
  "description" : "AllergyIntolerance Iniciar LE",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AllergyIntolerance",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreAlergiaIntCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AllergyIntolerance",
      "path" : "AllergyIntolerance"
    },
    {
      "id" : "AllergyIntolerance.id",
      "path" : "AllergyIntolerance.id",
      "short" : "Id temporal necesario para identificar el recurso",
      "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "definition" : "Estado clínico de la alergía o la intolerancia"
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "definition" : "Estado de verificación de la alergía o la intolerancia"
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "short" : "Seccion para identificar la alergia o intolerancia del paciente",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/allergyintolerance-code"
      }
    },
    {
      "id" : "AllergyIntolerance.code.coding",
      "path" : "AllergyIntolerance.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.code.coding.system",
      "path" : "AllergyIntolerance.code.coding.system",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.code.coding.code",
      "path" : "AllergyIntolerance.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.code.coding.display",
      "path" : "AllergyIntolerance.code.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.code.text",
      "path" : "AllergyIntolerance.code.text",
      "short" : "Alergia del paciente",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.patient",
      "path" : "AllergyIntolerance.patient",
      "short" : "Referencia al paciente",
      "definition" : "Referencia al paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE"]
      }]
    },
    {
      "id" : "AllergyIntolerance.patient.reference",
      "path" : "AllergyIntolerance.patient.reference",
      "short" : "URL del paciente",
      "definition" : "URL del paciente",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.patient.display",
      "path" : "AllergyIntolerance.patient.display",
      "short" : "Informacion extra o nombre del paciente",
      "definition" : "Informacion extra o nombre del paciente",
      "mustSupport" : true
    }]
  }
}

```
