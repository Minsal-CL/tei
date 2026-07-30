# Ejemplo de Solicitud de AbAdrenal - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de Solicitud de AbAdrenal**

## Example ServiceRequest: Ejemplo de Solicitud de AbAdrenal

Profile: [Solicitud de Examen LE](StructureDefinition-ServiceRequestExamenLE.md)

**basedOn**: [ServiceRequest Patient referral to specialist](ServiceRequest-EjemploSolicitudInterconsultaFinalizada.md)

**status**: Draft

**intent**: Order

**code**: Ab adrenal en Sérum

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

**authoredOn**: 2024-02-22 08:30:00-0300

**requester**: [Practitioner Gonzalo Gonzalez ](Practitioner-PractitionerProfesionalLEAtendedor.md)

**reasonCode**: insuficiencia adrenal severa

**note**: 

> 

para dar seguimiento al tratamiento del paciente




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "AbadrenalEjemplo",
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
      "code" : "8059-8"
    }],
    "text" : "Ab adrenal en Sérum"
  },
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "authoredOn" : "2024-02-22T08:30:00-03:00",
  "requester" : {
    "reference" : "Practitioner/PractitionerProfesionalLEAtendedor"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "24867002",
      "display" : "Severe adrenal insufficiency"
    }],
    "text" : "insuficiencia adrenal severa"
  }],
  "note" : [{
    "text" : "para dar seguimiento al tratamiento del paciente"
  }]
}

```
