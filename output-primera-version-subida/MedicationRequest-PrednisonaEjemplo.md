# Ejemplo de Prescipción - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de Prescipción**

## Example MedicationRequest: Ejemplo de Prescipción

Profile: [Solicitud de Medicamento LE](StructureDefinition-MedicationRequestLE.md)

**status**: Draft

**intent**: Order

**medication**: Prednisona 5mg

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

**encounter**: [Encounter: extension = true; identifier = 123; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-02-22 08:00:00-0300 --> 2024-02-22 08:30:00-0300](Encounter-AtencionEjemplo.md)

**requester**: [Practitioner Gonzalo Gonzalez ](Practitioner-PractitionerProfesionalLEAtendedor.md)

**note**: 

> 

2 veces al día por 1 mes




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "PrednisonaEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/MedicationRequestLE"]
  },
  "status" : "draft",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "text" : "Prednisona 5mg"
  },
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "encounter" : {
    "reference" : "Encounter/AtencionEjemplo"
  },
  "requester" : {
    "reference" : "Practitioner/PractitionerProfesionalLEAtendedor"
  },
  "note" : [{
    "text" : "2 veces al día por 1 mes"
  }]
}

```
