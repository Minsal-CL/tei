# Ejemplo de Plan de Cuidados - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de Plan de Cuidados**

## Example CarePlan: Ejemplo de Plan de Cuidados

Profile: [CarePlan Atender LE](StructureDefinition-CarePlanAtenderLE.md)

**ExtBool Solicitud Examenes**: true

**status**: Active

**intent**: Plan

**description**: Se le dara un tratamiento de prednisona de 500 mg, 2 veces al día por por 1 mes. Pasado ese tiempo debe realizarse un examen de Ab Adrenal después de ver mejorias, se hara control cada mes

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

**encounter**: [Encounter: extension = true; identifier = 123; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-02-22 08:00:00-0300 --> 2024-02-22 08:30:00-0300](Encounter-AtencionEjemplo.md)

> **activity****reference**: [ServiceRequest Ab adrenal: Suero : Punto temporal: Concentración arbitraria: Cuantitativo:](ServiceRequest-AbadrenalEjemplo.md)

> **activity****reference**: [MedicationRequest: status = draft; intent = order; medication[x] = ; note = 2 veces al día por 1 mes](MedicationRequest-PrednisonaEjemplo.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "CarePlanAtencionEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/CarePlanAtenderLE"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionSolicitudExamenes",
    "valueBoolean" : true
  }],
  "status" : "active",
  "intent" : "plan",
  "description" : "Se le dara un tratamiento de prednisona de 500 mg, 2 veces al día por por 1 mes. Pasado ese tiempo debe realizarse un examen de Ab Adrenal después de ver mejorias, se hara control cada mes",
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "encounter" : {
    "reference" : "Encounter/AtencionEjemplo"
  },
  "activity" : [{
    "reference" : {
      "reference" : "ServiceRequest/AbadrenalEjemplo"
    }
  },
  {
    "reference" : {
      "reference" : "MedicationRequest/PrednisonaEjemplo"
    }
  }]
}

```
