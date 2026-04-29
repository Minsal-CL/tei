# TituloProfesional - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **TituloProfesional**

## CodeSystem: TituloProfesional 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSTituloProfesional |

 
TituloProfesional 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTituloProfesional](ValueSet-VSTituloProfesional.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSTituloProfesional",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional",
  "version" : "0.2.2",
  "name" : "CSTituloProfesional",
  "title" : "TituloProfesional",
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
  "description" : "TituloProfesional",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 31,
  "concept" : [{
    "code" : "1",
    "display" : "MÉDICO CIRUJANO",
    "definition" : "MÉDICO CIRUJANO"
  },
  {
    "code" : "2",
    "display" : "CIRUJANO DENTISTA",
    "definition" : "CIRUJANO DENTISTA"
  },
  {
    "code" : "3",
    "display" : "ENFERMERAS(OS)",
    "definition" : "ENFERMERAS(OS)"
  },
  {
    "code" : "4",
    "display" : "ENFERMERAS(OS) MATRONAS(ES)",
    "definition" : "ENFERMERAS(OS) MATRONAS(ES)"
  },
  {
    "code" : "5",
    "display" : "MATRONAS(ES)",
    "definition" : "MATRONAS(ES)"
  },
  {
    "code" : "6",
    "display" : "TECNÓLOGOS MÉDICOS",
    "definition" : "TECNÓLOGOS MÉDICOS"
  },
  {
    "code" : "7",
    "display" : "PSICÓLOGOS/AS",
    "definition" : "PSICÓLOGOS/AS"
  },
  {
    "code" : "8",
    "display" : "KINESIÓLOGOS/AS",
    "definition" : "KINESIÓLOGOS/AS"
  },
  {
    "code" : "9",
    "display" : "FARMACÉUTICOS Y QUÍMICO-FARMACÉUTICOS",
    "definition" : "FARMACÉUTICOS Y QUÍMICO-FARMACÉUTICOS"
  },
  {
    "code" : "10",
    "display" : "BIOQUÍMICOS",
    "definition" : "BIOQUÍMICOS"
  },
  {
    "code" : "11",
    "display" : "NUTRICIONISTAS",
    "definition" : "NUTRICIONISTAS"
  },
  {
    "code" : "12",
    "display" : "FONOAUDIÓLOGOS/AS",
    "definition" : "FONOAUDIÓLOGOS/AS"
  },
  {
    "code" : "13",
    "display" : "TERAPEUTAS OCUPACIONALES",
    "definition" : "TERAPEUTAS OCUPACIONALES"
  },
  {
    "code" : "14",
    "display" : "AUXILIARES PARAMÉDICOS DE ALIMENTACIÓN",
    "definition" : "AUXILIARES PARAMÉDICOS DE ALIMENTACIÓN"
  },
  {
    "code" : "15",
    "display" : "A.P. DE RADIOLOGÍA, RADIOTERAPIA, LAB",
    "definition" : "A.P. DE RADIOLOGÍA, RADIOTERAPIA, LAB"
  },
  {
    "code" : "16",
    "display" : "AUXILIARES PARAMÉDICOS DE ODONTOLOGÍA",
    "definition" : "AUXILIARES PARAMÉDICOS DE ODONTOLOGÍA"
  },
  {
    "code" : "17",
    "display" : "AUXILIARES PARAMÉDICOS DE FARMACIA",
    "definition" : "AUXILIARES PARAMÉDICOS DE FARMACIA"
  },
  {
    "code" : "18",
    "display" : "AUXILIARES DE ENFERMERÍA",
    "definition" : "AUXILIARES DE ENFERMERÍA"
  },
  {
    "code" : "19",
    "display" : "TÉCNICO EN NIVEL SUPERIOR EN SALUD",
    "definition" : "TÉCNICO EN NIVEL SUPERIOR EN SALUD"
  },
  {
    "code" : "20",
    "display" : "TÉCNICOS EN SALUD",
    "definition" : "TÉCNICOS EN SALUD"
  },
  {
    "code" : "21",
    "display" : "TÉCNICOS NIVEL MEDIO EN SALUD",
    "definition" : "TÉCNICOS NIVEL MEDIO EN SALUD"
  },
  {
    "code" : "22",
    "display" : "LABORATORISTAS DENTALES",
    "definition" : "LABORATORISTAS DENTALES"
  },
  {
    "code" : "23",
    "display" : "PODÓLOGOS/AS",
    "definition" : "PODÓLOGOS/AS"
  },
  {
    "code" : "24",
    "display" : "ÓPTICOS/AS",
    "definition" : "ÓPTICOS/AS"
  },
  {
    "code" : "25",
    "display" : "CONTACTÓLOGOS/AS",
    "definition" : "CONTACTÓLOGOS/AS"
  },
  {
    "code" : "26",
    "display" : "HOMEÓPATAS",
    "definition" : "HOMEÓPATAS"
  },
  {
    "code" : "27",
    "display" : "ACUPUNTURISTAS",
    "definition" : "ACUPUNTURISTAS"
  },
  {
    "code" : "28",
    "display" : "NATURÓPATAS",
    "definition" : "NATURÓPATAS"
  },
  {
    "code" : "29",
    "display" : "COSMETÓLOGOS/AS",
    "definition" : "COSMETÓLOGOS/AS"
  },
  {
    "code" : "30",
    "display" : "MÉDICO GENERAL",
    "definition" : "MÉDICO GENERAL"
  },
  {
    "code" : "99",
    "display" : "DESCONOCIDA",
    "definition" : "DESCONOCIDA"
  }]
}

```
