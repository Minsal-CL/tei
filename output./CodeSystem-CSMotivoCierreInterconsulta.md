# Motivo Cierre Interconsulta - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Motivo Cierre Interconsulta**

## CodeSystem: Motivo Cierre Interconsulta 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoCierreInterconsulta | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSMotivoCierreInterconsulta |

 
Motivo Cierre Interconsulta 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSMotivoCierreInterconsulta](ValueSet-VSMotivoCierreInterconsulta.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSMotivoCierreInterconsulta",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoCierreInterconsulta",
  "version" : "0.2.2",
  "name" : "CSMotivoCierreInterconsulta",
  "title" : "Motivo Cierre Interconsulta",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-01-15",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Franco Ulloa",
    "telecom" : [{
      "system" : "email",
      "value" : "franco.ulloa@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "Motivo Cierre Interconsulta",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 18,
  "concept" : [{
    "code" : "1",
    "display" : "GES (0)",
    "definition" : "GES (0)"
  },
  {
    "code" : "2",
    "display" : "Atención Realizada (1)",
    "definition" : "Atención Realizada (1)"
  },
  {
    "code" : "3",
    "display" : "Corresponde a la realización del examen procedimiento ejecutado (2)",
    "definition" : "Corresponde a la realización del examen procedimiento ejecutado (2)"
  },
  {
    "code" : "4",
    "display" : "Atención Otorgada en el Extra sistema (4)",
    "definition" : "Atención Otorgada en el Extra sistema (4)"
  },
  {
    "code" : "5",
    "display" : "No beneficiario (5)",
    "definition" : "No beneficiario (5)"
  },
  {
    "code" : "6",
    "display" : "Renuncia o rechazo voluntario (6)",
    "definition" : "Renuncia o rechazo voluntario (6)"
  },
  {
    "code" : "7",
    "display" : "Recuperación espontánea (7)",
    "definition" : "Recuperación espontánea (7)"
  },
  {
    "code" : "8",
    "display" : "Inasistencia (2 NSP) (8)",
    "definition" : "Inasistencia (2 NSP) (8)"
  },
  {
    "code" : "9",
    "display" : "Fallecimiento (9)",
    "definition" : "Fallecimiento (9)"
  },
  {
    "code" : "10",
    "display" : "Solicitud de indicación duplicada (10)",
    "definition" : "Solicitud de indicación duplicada (10)"
  },
  {
    "code" : "11",
    "display" : "Contacto no corresponde (11)",
    "definition" : "Contacto no corresponde (11)"
  },
  {
    "code" : "12",
    "display" : "Traslado coordinado (12)",
    "definition" : "Traslado coordinado (12)"
  },
  {
    "code" : "13",
    "display" : "No pertinencia (13)",
    "definition" : "No pertinencia (13)"
  },
  {
    "code" : "14",
    "display" : "Error de digitación(15)",
    "definition" : "Error de digitación(15)"
  },
  {
    "code" : "15",
    "display" : "Atención por resolutividad (16)",
    "definition" : "Atención por resolutividad (16)"
  },
  {
    "code" : "16",
    "display" : "Atención por telemedicina (17)",
    "definition" : "Atención por telemedicina (17)"
  },
  {
    "code" : "17",
    "display" : "Modificación de condicion clínica del paciente (18)",
    "definition" : "Modificación de condicion clínica del paciente (18)"
  },
  {
    "code" : "18",
    "display" : "Atención hospital digital (19)",
    "definition" : "Atención hospital digital (19)"
  }]
}

```
