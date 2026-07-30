# Patient LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Patient LE**

## Resource Profile: Patient LE 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE | *Version*:0.2.3 |
| Draft as of 2026-07-22 | *Computable Name*:PatientLE |

 
Paciente definido para el Registro Maestro de Pacientes 

**Usages:**

* Use this Profile: [Bundle Iniciar LE](StructureDefinition-BundleIniciarLE.md)
* Refer to this Profile: [AllergyIntolerance Iniciar LE](StructureDefinition-AllergyIntoleranceIniciarLE.md), [Appointment Agendar LE](StructureDefinition-AppointmentAgendarLE.md), [CarePlan Atender LE](StructureDefinition-CarePlanAtenderLE.md), [Condition Diagnostico LE](StructureDefinition-ConditionDiagnosticoLE.md)... Show 11 more, [Encounter Atender LE](StructureDefinition-EncounterAtenderLE.md), [Encounter Iniciar LE](StructureDefinition-EncounterIniciarLE.md), [Solicitud de Medicamento LE](StructureDefinition-MedicationRequestLE.md), [Observation Anamnesis LE](StructureDefinition-ObservationAnamnesisLE.md), [Discapacidad LE](StructureDefinition-ObservationDiscapacidadLE.md), [Indice Comorbilidad LE](StructureDefinition-ObservationIndiceComorbilidadLE.md), [Cuidador LE](StructureDefinition-ObservationIniciarCuidadorLE.md), [Observation Resultado Examen](StructureDefinition-ObservationResultadoExamen.md), [QuestionnaireResponse Iniciar Motivo de la Derivación LE](StructureDefinition-QuestionnaireResponseIniciarLE.md), [Solicitud de Examen LE](StructureDefinition-ServiceRequestExamenLE.md) and [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md)
* Examples for this Profile: [Patient/EjemploPatientLE](Patient-EjemploPatientLE.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-PatientLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PatientLE.csv), [Excel](StructureDefinition-PatientLE.xlsx), [Schematron](StructureDefinition-PatientLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PatientLE",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE",
  "version" : "0.2.3",
  "name" : "PatientLE",
  "title" : "Patient LE",
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
  "description" : "Paciente definido para el Registro Maestro de Pacientes",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient.id",
      "path" : "Patient.id",
      "short" : "Id temporal necesario para identificar el recurso",
      "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "min" : 4
    },
    {
      "id" : "Patient.extension:IdentidadDeGenero",
      "path" : "Patient.extension",
      "sliceName" : "IdentidadDeGenero",
      "min" : 1
    },
    {
      "id" : "Patient.extension:nacionalidad",
      "path" : "Patient.extension",
      "sliceName" : "nacionalidad",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.extension:PaisOrigen",
      "path" : "Patient.extension",
      "sliceName" : "PaisOrigen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PaisOrigenMPI"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:Religion",
      "path" : "Patient.extension",
      "sliceName" : "Religion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/Religion"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:PueblosOriginariosPerteneciente",
      "path" : "Patient.extension",
      "sliceName" : "PueblosOriginariosPerteneciente",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PueblosOriginariosPerteneciente"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:PueblosAfrodescendiente",
      "path" : "Patient.extension",
      "sliceName" : "PueblosAfrodescendiente",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PueblosAfrodescendiente"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:PueblosOriginarios",
      "path" : "Patient.extension",
      "sliceName" : "PueblosOriginarios",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PueblosOriginarios"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "short" : "Identificador de paciente",
      "min" : 1
    },
    {
      "id" : "Patient.identifier.type",
      "path" : "Patient.identifier.type",
      "short" : "Tipo de documento",
      "definition" : "Tipo de documento",
      "comment" : "Tipo de documento",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "description" : "Identificadores definidos por DEIS",
        "valueSet" : "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSTipoIdentificador"
      }
    },
    {
      "id" : "Patient.identifier.type.extension",
      "path" : "Patient.identifier.type.extension",
      "min" : 1
    },
    {
      "id" : "Patient.identifier.type.extension:paisEmisionDocumento",
      "path" : "Patient.identifier.type.extension",
      "sliceName" : "paisEmisionDocumento",
      "min" : 1
    },
    {
      "id" : "Patient.identifier.type.coding",
      "path" : "Patient.identifier.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1
    },
    {
      "id" : "Patient.identifier.value",
      "path" : "Patient.identifier.value",
      "short" : "Valor del identificador",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "min" : 1
    },
    {
      "id" : "Patient.telecom.system",
      "path" : "Patient.telecom.system",
      "short" : "phone | email",
      "definition" : "Sistema de contacto",
      "min" : 1
    },
    {
      "id" : "Patient.telecom.value",
      "path" : "Patient.telecom.value",
      "short" : "Valor de contacto",
      "min" : 1
    },
    {
      "id" : "Patient.telecom.rank",
      "path" : "Patient.telecom.rank",
      "short" : "Orden de uso del método de contacto, siendo 1 = prioritario",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom.period",
      "path" : "Patient.telecom.period",
      "short" : "Periodo de tiempo durante el cual es válido el contacto del paciente",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "Sexo Registral del paciente",
      "min" : 1
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "min" : 1
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "short" : "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento.",
      "definition" : "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.extension:SituacionCalle",
      "path" : "Patient.address.extension",
      "sliceName" : "SituacionCalle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/SituacionCalle"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.use",
      "path" : "Patient.address.use",
      "min" : 1
    },
    {
      "id" : "Patient.address.line",
      "path" : "Patient.address.line",
      "short" : "Calle o avenida, numero y casa o dpto",
      "definition" : "Calle o avenida, numero y casa o dpto",
      "min" : 1
    },
    {
      "id" : "Patient.address.period",
      "path" : "Patient.address.period",
      "short" : "Periodo de tiempo durante el  cual es válida la dirección entregada",
      "mustSupport" : true
    },
    {
      "id" : "Patient.maritalStatus",
      "path" : "Patient.maritalStatus",
      "short" : "Estado civil del paciente",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSEstadoCivil"
      }
    }]
  }
}

```
