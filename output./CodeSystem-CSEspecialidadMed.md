# EspecialidadMed - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **EspecialidadMed**

## CodeSystem: EspecialidadMed 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSEspecialidadMed |

 
EspecialidadMed 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEspecialidadMed](ValueSet-VSEspecialidadMed.md)
* [VsEspecialidadDest](ValueSet-VsEspecialidadDest.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEspecialidadMed",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed",
  "version" : "0.2.2",
  "name" : "CSEspecialidadMed",
  "title" : "EspecialidadMed",
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
  "description" : "EspecialidadMed",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 76,
  "concept" : [{
    "code" : "1",
    "display" : "ANATOMÍA PATOLÓGICA",
    "definition" : "ANATOMÍA PATOLÓGICA"
  },
  {
    "code" : "2",
    "display" : "ANESTESIOLOGÍA",
    "definition" : "ANESTESIOLOGÍA"
  },
  {
    "code" : "3",
    "display" : "CARDIOLOGÍA",
    "definition" : "CARDIOLOGÍA"
  },
  {
    "code" : "4",
    "display" : "CIRUGÍA GENERAL",
    "definition" : "CIRUGÍA GENERAL"
  },
  {
    "code" : "5",
    "display" : "CIRUGÍA DE CABEZA, CUELLO Y MAXILOFACIAL",
    "definition" : "CIRUGÍA DE CABEZA, CUELLO Y MAXILOFACIAL"
  },
  {
    "code" : "6",
    "display" : "CIRUGÍA CARDIOVASCULAR",
    "definition" : "CIRUGÍA CARDIOVASCULAR"
  },
  {
    "code" : "7",
    "display" : "CIRUGÍA DE TÓRAX",
    "definition" : "CIRUGÍA DE TÓRAX"
  },
  {
    "code" : "8",
    "display" : "CIRUGÍA PLÁSTICA Y REPARADORA",
    "definition" : "CIRUGÍA PLÁSTICA Y REPARADORA"
  },
  {
    "code" : "9",
    "display" : "CIRUGÍA PEDIÁTRICA",
    "definition" : "CIRUGÍA PEDIÁTRICA"
  },
  {
    "code" : "10",
    "display" : "CIRUGÍA VASCULAR PERIFÉRICA",
    "definition" : "CIRUGÍA VASCULAR PERIFÉRICA"
  },
  {
    "code" : "11",
    "display" : "COLOPROCTOLOGÍA",
    "definition" : "COLOPROCTOLOGÍA"
  },
  {
    "code" : "12",
    "display" : "DERMATOLOGÍA",
    "definition" : "DERMATOLOGÍA"
  },
  {
    "code" : "13",
    "display" : "DIABETOLOGÍA",
    "definition" : "DIABETOLOGÍA"
  },
  {
    "code" : "14",
    "display" : "ENDOCRINOLOGÍA ADULTO",
    "definition" : "ENDOCRINOLOGÍA ADULTO"
  },
  {
    "code" : "15",
    "display" : "ENDOCRINOLOGÍA PEDIÁTRICA",
    "definition" : "ENDOCRINOLOGÍA PEDIÁTRICA"
  },
  {
    "code" : "16",
    "display" : "ENFERMEDADES RESPIRATORIAS DEL ADULTO (BRONCOPULMONAR)",
    "definition" : "ENFERMEDADES RESPIRATORIAS DEL ADULTO (BRONCOPULMONAR)"
  },
  {
    "code" : "17",
    "display" : "ENFERMEDADES RESPIRATORIAS PEDIÁTRICAS (BRONCOPULMONAR PEDIATRICO)",
    "definition" : "ENFERMEDADES RESPIRATORIAS PEDIÁTRICAS (BRONCOPULMONAR PEDIATRICO)"
  },
  {
    "code" : "18",
    "display" : "GASTROENTEROLOGÍA ADULTO",
    "definition" : "GASTROENTEROLOGÍA ADULTO"
  },
  {
    "code" : "19",
    "display" : "GASTROENTEROLOGÍA PEDIÁTRICA",
    "definition" : "GASTROENTEROLOGÍA PEDIÁTRICA"
  },
  {
    "code" : "20",
    "display" : "GENÉTICA CLÍNICA",
    "definition" : "GENÉTICA CLÍNICA"
  },
  {
    "code" : "21",
    "display" : "GERIATRÍA",
    "definition" : "GERIATRÍA"
  },
  {
    "code" : "22",
    "display" : "GINECOLOGÍA PEDIÁTRICA Y DE LA ADOLESCENCIA",
    "definition" : "GINECOLOGÍA PEDIÁTRICA Y DE LA ADOLESCENCIA"
  },
  {
    "code" : "23",
    "display" : "HEMATOLOGÍA",
    "definition" : "HEMATOLOGÍA"
  },
  {
    "code" : "24",
    "display" : "IMAGENOLOGÍA",
    "definition" : "IMAGENOLOGÍA"
  },
  {
    "code" : "25",
    "display" : "INFECTOLOGÍA",
    "definition" : "INFECTOLOGÍA"
  },
  {
    "code" : "26",
    "display" : "INMUNOLOGÍA",
    "definition" : "INMUNOLOGÍA"
  },
  {
    "code" : "27",
    "display" : "LABORATORIO CLÍNICO",
    "definition" : "LABORATORIO CLÍNICO"
  },
  {
    "code" : "28",
    "display" : "MEDICINA FAMILIAR",
    "definition" : "MEDICINA FAMILIAR"
  },
  {
    "code" : "29",
    "display" : "MEDICINA FÍSICA Y REHABILITACIÓN (FISIATRIA ADULTO)",
    "definition" : "MEDICINA FÍSICA Y REHABILITACIÓN (FISIATRIA ADULTO)"
  },
  {
    "code" : "30",
    "display" : "MEDICINA INTERNA",
    "definition" : "MEDICINA INTERNA"
  },
  {
    "code" : "31",
    "display" : "MEDICINA INTENSIVA ADULTO",
    "definition" : "MEDICINA INTENSIVA ADULTO"
  },
  {
    "code" : "32",
    "display" : "MEDICINA INTENSIVA PEDIÁTRICA",
    "definition" : "MEDICINA INTENSIVA PEDIÁTRICA"
  },
  {
    "code" : "33",
    "display" : "MEDICINA LEGAL",
    "definition" : "MEDICINA LEGAL"
  },
  {
    "code" : "34",
    "display" : "MEDICINA MATERNO INFANTIL",
    "definition" : "MEDICINA MATERNO INFANTIL"
  },
  {
    "code" : "35",
    "display" : "MEDICINA NUCLEAR",
    "definition" : "MEDICINA NUCLEAR"
  },
  {
    "code" : "36",
    "display" : "MEDICINA DE URGENCIA",
    "definition" : "MEDICINA DE URGENCIA"
  },
  {
    "code" : "37",
    "display" : "NEFROLOGÍA ADULTO",
    "definition" : "NEFROLOGÍA ADULTO"
  },
  {
    "code" : "38",
    "display" : "NEFROLOGÍA PEDIÁTRICO",
    "definition" : "NEFROLOGÍA PEDIÁTRICO"
  },
  {
    "code" : "39",
    "display" : "NEONATOLOGÍA",
    "definition" : "NEONATOLOGÍA"
  },
  {
    "code" : "40",
    "display" : "NEUROCIRUGÍA",
    "definition" : "NEUROCIRUGÍA"
  },
  {
    "code" : "41",
    "display" : "NEUROLOGÍA ADULTO",
    "definition" : "NEUROLOGÍA ADULTO"
  },
  {
    "code" : "42",
    "display" : "NEUROLOGÍA PEDIÁTRICA",
    "definition" : "NEUROLOGÍA PEDIÁTRICA"
  },
  {
    "code" : "43",
    "display" : "OBSTETRICIA Y GINECOLOGÍA",
    "definition" : "OBSTETRICIA Y GINECOLOGÍA"
  },
  {
    "code" : "44",
    "display" : "OFTALMOLOGÍA",
    "definition" : "OFTALMOLOGÍA"
  },
  {
    "code" : "45",
    "display" : "ONCOLOGÍA MÉDICA",
    "definition" : "ONCOLOGÍA MÉDICA"
  },
  {
    "code" : "46",
    "display" : "OTORRINOLARINGOLOGÍA",
    "definition" : "OTORRINOLARINGOLOGÍA"
  },
  {
    "code" : "47",
    "display" : "PEDIATRÍA",
    "definition" : "PEDIATRÍA"
  },
  {
    "code" : "48",
    "display" : "PSIQUIATRÍA ADULTO",
    "definition" : "PSIQUIATRÍA ADULTO"
  },
  {
    "code" : "49",
    "display" : "PSIQUIATRÍA PEDIÁTRICA Y DE LA ADOLESCENCIA",
    "definition" : "PSIQUIATRÍA PEDIÁTRICA Y DE LA ADOLESCENCIA"
  },
  {
    "code" : "50",
    "display" : "RADIOTERAPIA ONCOLÓGICA",
    "definition" : "RADIOTERAPIA ONCOLÓGICA"
  },
  {
    "code" : "51",
    "display" : "REUMATOLOGÍA",
    "definition" : "REUMATOLOGÍA"
  },
  {
    "code" : "52",
    "display" : "SALUD PÚBLICA",
    "definition" : "SALUD PÚBLICA"
  },
  {
    "code" : "53",
    "display" : "TRAUMATOLOGÍA Y ORTOPEDIA",
    "definition" : "TRAUMATOLOGÍA Y ORTOPEDIA"
  },
  {
    "code" : "54",
    "display" : "UROLOGÍA",
    "definition" : "UROLOGÍA"
  },
  {
    "code" : "55",
    "display" : "CARDIOLOGÍA PEDIÁTRICA",
    "definition" : "CARDIOLOGÍA PEDIÁTRICA"
  },
  {
    "code" : "56",
    "display" : "CIRUGÍA DIGESTIVA",
    "definition" : "CIRUGÍA DIGESTIVA"
  },
  {
    "code" : "57",
    "display" : "CIRUGÍA PLASTICA Y REPARADORA PEDIÁTRICA",
    "definition" : "CIRUGÍA PLASTICA Y REPARADORA PEDIÁTRICA"
  },
  {
    "code" : "58",
    "display" : "GINECOLOGÍA",
    "definition" : "GINECOLOGÍA"
  },
  {
    "code" : "59",
    "display" : "HEMATO-ONCOLOGÍA PEDIÁTRICA",
    "definition" : "HEMATO-ONCOLOGÍA PEDIÁTRICA"
  },
  {
    "code" : "60",
    "display" : "INFECTOLOGÍA PEDIATRICA",
    "definition" : "INFECTOLOGÍA PEDIATRICA"
  },
  {
    "code" : "61",
    "display" : "MEDICINA FAMILIAR DEL NIÑO",
    "definition" : "MEDICINA FAMILIAR DEL NIÑO"
  },
  {
    "code" : "62",
    "display" : "MEDICINA FISICA Y REHABILITACIÓN PEDIÁTRICA (FISIATRIA PEDIATRICA)",
    "definition" : "MEDICINA FISICA Y REHABILITACIÓN PEDIÁTRICA (FISIATRIA PEDIATRICA)"
  },
  {
    "code" : "63",
    "display" : "NUTRIÓLOGO",
    "definition" : "NUTRIÓLOGO"
  },
  {
    "code" : "64",
    "display" : "NUTRIÓLOGO PEDIÁTRICO",
    "definition" : "NUTRIÓLOGO PEDIÁTRICO"
  },
  {
    "code" : "65",
    "display" : "REUMATOLOGÍA PEDIÁTRICA",
    "definition" : "REUMATOLOGÍA PEDIÁTRICA"
  },
  {
    "code" : "66",
    "display" : "OBSTETRICIA",
    "definition" : "OBSTETRICIA"
  },
  {
    "code" : "67",
    "display" : "TRAUMATOLOGÍA Y ORTOPEDIA PEDIÁTRICA",
    "definition" : "TRAUMATOLOGÍA Y ORTOPEDIA PEDIÁTRICA"
  },
  {
    "code" : "68",
    "display" : "UROLOGÍA PEDIÁTRICA",
    "definition" : "UROLOGÍA PEDIÁTRICA"
  },
  {
    "code" : "69",
    "display" : "GINECOLOGÍA ONCOLÓGICA",
    "definition" : "GINECOLOGÍA ONCOLÓGICA"
  },
  {
    "code" : "70",
    "display" : "MASTOLOGÍA (CIRUGÍA DE LA MAMA)",
    "definition" : "MASTOLOGÍA (CIRUGÍA DE LA MAMA)"
  },
  {
    "code" : "71",
    "display" : "MEDICINA PALEATIVA Y DE MANEJO DEL DOLOR",
    "definition" : "MEDICINA PALEATIVA Y DE MANEJO DEL DOLOR"
  },
  {
    "code" : "72",
    "display" : "MEDICINA REPRODUCTIVA E INFERTILIDAD",
    "definition" : "MEDICINA REPRODUCTIVA E INFERTILIDAD"
  },
  {
    "code" : "73",
    "display" : "MEDICINA DEL ADOLESCENTE",
    "definition" : "MEDICINA DEL ADOLESCENTE"
  },
  {
    "code" : "74",
    "display" : "MEDICINA DEL DEPORTE",
    "definition" : "MEDICINA DEL DEPORTE"
  },
  {
    "code" : "75",
    "display" : "MICROBIOLOGÍA",
    "definition" : "MICROBIOLOGÍA"
  },
  {
    "code" : "76",
    "display" : "NEURORRADIOLOGÍA",
    "definition" : "NEURORRADIOLÓGIA"
  }]
}

```
