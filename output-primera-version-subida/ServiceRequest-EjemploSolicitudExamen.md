# Ejemplo de una Solicitud de Examen - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de una Solicitud de Examen**

## Example ServiceRequest: Ejemplo de una Solicitud de Examen

Profile: [Solicitud de Examen LE](StructureDefinition-ServiceRequestExamenLE.md)

**basedOn**: [ServiceRequest Patient referral to specialist](ServiceRequest-EjemploSolicitudInterconsultaFinalizada.md)

**status**: Draft

**intent**: Order

**code**: Antigeno Prostático Específico en Suero o Plasma

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

**occurrence**: 2024-01-19 16:00:00-0300

**authoredOn**: 2024-01-17 16:00:00-0300

**requester**: [Practitioner Víctor Gonzalez ](Practitioner-PractitionerProfesionalLEEjemplo.md)

**reasonCode**: antecedente familiar de neoplasia maligna de próstata

**note**: 

> 

paciente con APE elevado en 2022, se solicita examen vigente previo a atención con especialidad




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "EjemploSolicitudExamen",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestExamenLE"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/EjemploSolicitudInterconsultaFinalizada"
  }],
  "status" : "draft",
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "2857-1",
      "display" : "Ag específico de próstata: Suero o Plasma : Punto temporal: Concentración de masa: Cuantitativo:"
    }],
    "text" : "Antigeno Prostático Específico en Suero o Plasma"
  },
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "occurrenceDateTime" : "2024-01-19T16:00:00-03:00",
  "authoredOn" : "2024-01-17T16:00:00-03:00",
  "requester" : {
    "reference" : "Practitioner/PractitionerProfesionalLEEjemplo"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "414205003"
    }],
    "text" : "antecedente familiar de neoplasia maligna de próstata"
  }],
  "note" : [{
    "text" : "paciente con APE elevado en 2022, se solicita examen vigente previo a atención con especialidad"
  }]
}

```
