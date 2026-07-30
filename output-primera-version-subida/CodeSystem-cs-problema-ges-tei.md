# Sitema de Codificación para los Problemas de Salud GES - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Sitema de Codificación para los Problemas de Salud GES**

## CodeSystem: Sitema de Codificación para los Problemas de Salud GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/cs-problema-ges-tei | *Version*:0.2.3 |
| Active as of 2026-07-22 | *Computable Name*:ProblemaSaludGESCS |

 
Sistema de codificación de los problemas de salud GES 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-problema-ges-tei",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/cs-problema-ges-tei",
  "version" : "0.2.3",
  "name" : "ProblemaSaludGESCS",
  "title" : "Sitema de Codificación para los Problemas de Salud GES",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Sistema de codificación de los problemas de salud GES",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 90,
  "concept" : [{
    "code" : "1",
    "display" : "Enfermedad renal crónica etapa 4 y 5",
    "definition" : "Enfermedad renal crónica etapa 4 y 5"
  },
  {
    "code" : "2",
    "display" : "Cardiopatías congénitas operables",
    "definition" : "Cardiopatías congénitas operables"
  },
  {
    "code" : "3",
    "display" : "Cáncer cervicouterino en personas de 15 años y más",
    "definition" : "Cáncer cervicouterino en personas de 15 años y más"
  },
  {
    "code" : "4",
    "display" : "Alivio del dolor y cuidados paliativos por cáncer",
    "definition" : "Alivio del dolor y cuidados paliativos por cáncer"
  },
  {
    "code" : "5",
    "display" : "Infarto agudo del miocardio",
    "definition" : "Infarto agudo del miocardio"
  },
  {
    "code" : "6",
    "display" : "Diabetes mellitus tipo 1",
    "definition" : "Diabetes mellitus tipo 1"
  },
  {
    "code" : "7",
    "display" : "Diabetes mellitus tipo 2",
    "definition" : "Diabetes mellitus tipo 2"
  },
  {
    "code" : "8",
    "display" : "Cáncer de mama en personas de 15 años y más",
    "definition" : "Cáncer de mama en personas de 15 años y más"
  },
  {
    "code" : "9",
    "display" : "Disrafias espinales",
    "definition" : "Disrafias espinales"
  },
  {
    "code" : "10",
    "display" : "Tratamiento quirúrgico de escoliosis en personas menores de 25 años",
    "definition" : "Tratamiento quirúrgico de escoliosis en personas menores de 25 años"
  },
  {
    "code" : "11",
    "display" : "Tratamiento quirúrgico de cataratas",
    "definition" : "Tratamiento quirúrgico de cataratas"
  },
  {
    "code" : "12",
    "display" : "Endoprótesis total de cadera en personas de 65 años y más con artrosis de cadera con limitación funcional severa",
    "definition" : "Endoprótesis total de cadera en personas de 65 años y más con artrosis de cadera con limitación funcional severa"
  },
  {
    "code" : "13",
    "display" : "Fisura labiopalatina",
    "definition" : "Fisura labiopalatina"
  },
  {
    "code" : "14",
    "display" : "Cáncer en personas menores de 15 años",
    "definition" : "Cáncer en personas menores de 15 años"
  },
  {
    "code" : "15",
    "display" : "Esquizofrenia",
    "definition" : "Esquizofrenia"
  },
  {
    "code" : "16",
    "display" : "Cáncer de testículo en personas de 15 años y más",
    "definition" : "Cáncer de testículo en personas de 15 años y más"
  },
  {
    "code" : "17",
    "display" : "Linfomas en personas de 15 años y más",
    "definition" : "Linfomas en personas de 15 años y más"
  },
  {
    "code" : "18",
    "display" : "Síndrome de la inmunodeficiencia adquirida vih/sida",
    "definition" : "Síndrome de la inmunodeficiencia adquirida vih/sida"
  },
  {
    "code" : "19",
    "display" : "Infección respiratoria aguda (ira) de manejo ambulatorio en personas menores de 5 años",
    "definition" : "Infección respiratoria aguda (ira) de manejo ambulatorio en personas menores de 5 años"
  },
  {
    "code" : "20",
    "display" : "Neumonía adquirida en la comunidad de manejo ambulatorio en personas de 65 años y más",
    "definition" : "Neumonía adquirida en la comunidad de manejo ambulatorio en personas de 65 años y más"
  },
  {
    "code" : "21",
    "display" : "Hipertensión arterial primaria o esencial en personas de 15 años y más",
    "definition" : "Hipertensión arterial primaria o esencial en personas de 15 años y más"
  },
  {
    "code" : "22",
    "display" : "Epilepsia en personas desde 1 año y menores de 15 años",
    "definition" : "Epilepsia en personas desde 1 año y menores de 15 años"
  },
  {
    "code" : "23",
    "display" : "Salud oral integral para niños y niñas de 6 años",
    "definition" : "Salud oral integral para niños y niñas de 6 años"
  },
  {
    "code" : "24",
    "display" : "Prevención de parto prematuro",
    "definition" : "Prevención de parto prematuro"
  },
  {
    "code" : "25",
    "display" : "Trastornos de generación del impulso y conducción en personas de 15 años y más, que requieren marcapasos",
    "definition" : "Trastornos de generación del impulso y conducción en personas de 15 años y más, que requieren marcapasos"
  },
  {
    "code" : "26",
    "display" : "Colecistectomía preventiva del cáncer de vesícula en personas de 35 a 49 años",
    "definition" : "Colecistectomía preventiva del cáncer de vesícula en personas de 35 a 49 años"
  },
  {
    "code" : "27",
    "display" : "Cáncer gástrico",
    "definition" : "Cáncer gástrico"
  },
  {
    "code" : "28",
    "display" : "Cáncer de próstata en personas de 15 años y más",
    "definition" : "Cáncer de próstata en personas de 15 años y más"
  },
  {
    "code" : "29",
    "display" : "Vicios de refracción en personas de 65 años y más",
    "definition" : "Vicios de refracción en personas de 65 años y más"
  },
  {
    "code" : "30",
    "display" : "Estrabismo en personas menores de 9 años",
    "definition" : "Estrabismo en personas menores de 9 años"
  },
  {
    "code" : "31",
    "display" : "Retinopatía diabética",
    "definition" : "Retinopatía diabética"
  },
  {
    "code" : "32",
    "display" : "Desprendimiento de retina regmatógeno no traumático",
    "definition" : "Desprendimiento de retina regmatógeno no traumático"
  },
  {
    "code" : "33",
    "display" : "Hemofilia",
    "definition" : "Hemofilia"
  },
  {
    "code" : "34",
    "display" : "Depresión en personas de 15 años y más",
    "definition" : "Depresión en personas de 15 años y más"
  },
  {
    "code" : "35",
    "display" : "Tratamiento de la hiperplasia benigna de la próstata en personas sintomáticas",
    "definition" : "Tratamiento de la hiperplasia benigna de la próstata en personas sintomáticas"
  },
  {
    "code" : "36",
    "display" : "Ayudas técnicas para personas de 65 años y más",
    "definition" : "Ayudas técnicas para personas de 65 años y más"
  },
  {
    "code" : "37",
    "display" : "Ataque cerebrovascular isquémico en personas de 15 años y más",
    "definition" : "Ataque cerebrovascular isquémico en personas de 15 años y más"
  },
  {
    "code" : "38",
    "display" : "Enfermedad pulmonar obstructiva crónica de tratamiento ambulatorio",
    "definition" : "Enfermedad pulmonar obstructiva crónica de tratamiento ambulatorio"
  },
  {
    "code" : "39",
    "display" : "Asma bronquial moderada y grave en personas menores de 15 años",
    "definition" : "Asma bronquial moderada y grave en personas menores de 15 años"
  },
  {
    "code" : "40",
    "display" : "Síndrome de dificultad respiratoria en el recién nacido",
    "definition" : "Síndrome de dificultad respiratoria en el recién nacido"
  },
  {
    "code" : "41",
    "display" : "Tratamiento médico en personas de 55 años y más con artrosis de cadera y/o rodilla, leve o moderada",
    "definition" : "Tratamiento médico en personas de 55 años y más con artrosis de cadera y/o rodilla, leve o moderada"
  },
  {
    "code" : "42",
    "display" : "Hemorragia subaracnoidea secundaria a ruptura de uno o más aneurismas cerebrales",
    "definition" : "Hemorragia subaracnoidea secundaria a ruptura de uno o más aneurismas cerebrales"
  },
  {
    "code" : "43",
    "display" : "Tumores primarios del sistema nervioso central en personas de 15 años y más",
    "definition" : "Tumores primarios del sistema nervioso central en personas de 15 años y más"
  },
  {
    "code" : "44",
    "display" : "Tratamiento quirúrgico de hernia del núcleo pulposo lumbar",
    "definition" : "Tratamiento quirúrgico de hernia del núcleo pulposo lumbar"
  },
  {
    "code" : "45",
    "display" : "Leucemia en personas de 15 años y más",
    "definition" : "Leucemia en personas de 15 años y más"
  },
  {
    "code" : "46",
    "display" : "Urgencia odontológica ambulatoria",
    "definition" : "Urgencia odontológica ambulatoria"
  },
  {
    "code" : "47",
    "display" : "Salud oral integral de personas de 60 años",
    "definition" : "Salud oral integral de personas de 60 años"
  },
  {
    "code" : "48",
    "display" : "Politraumatizado grave",
    "definition" : "Politraumatizado grave"
  },
  {
    "code" : "49",
    "display" : "Traumatismo cráneo encefálico moderado o grave",
    "definition" : "Traumatismo cráneo encefálico moderado o grave"
  },
  {
    "code" : "50",
    "display" : "Trauma ocular grave",
    "definition" : "Trauma ocular grave"
  },
  {
    "code" : "51",
    "display" : "Fibrosis quística",
    "definition" : "Fibrosis quística"
  },
  {
    "code" : "52",
    "display" : "Artritis reumatoidea",
    "definition" : "Artritis reumatoidea"
  },
  {
    "code" : "53",
    "display" : "Consumo perjudicial o dependencia de riesgo bajo a moderado de alcohol y drogas en personas menores de 20 años",
    "definition" : "Consumo perjudicial o dependencia de riesgo bajo a moderado de alcohol y drogas en personas menores de 20 años"
  },
  {
    "code" : "54",
    "display" : "Analgesia del parto",
    "definition" : "Analgesia del parto"
  },
  {
    "code" : "55",
    "display" : "Gran quemado",
    "definition" : "Gran quemado"
  },
  {
    "code" : "56",
    "display" : "Hipoacusia bilateral en personas de 65 años y más que requieren uso de audífono",
    "definition" : "Hipoacusia bilateral en personas de 65 años y más que requieren uso de audífono"
  },
  {
    "code" : "57",
    "display" : "Retinopatía del prematuro",
    "definition" : "Retinopatía del prematuro"
  },
  {
    "code" : "58",
    "display" : "Displasia broncopulmonar del prematuro",
    "definition" : "Displasia broncopulmonar del prematuro"
  },
  {
    "code" : "59",
    "display" : "Hipoacusia neurosensorial bilateral del prematuro",
    "definition" : "Hipoacusia neurosensorial bilateral del prematuro"
  },
  {
    "code" : "60",
    "display" : "Epilepsia en personas de 15 años y más",
    "definition" : "Epilepsia en personas de 15 años y más"
  },
  {
    "code" : "61",
    "display" : "Asma bronquial en personas de 15 años y más",
    "definition" : "Asma bronquial en personas de 15 años y más"
  },
  {
    "code" : "62",
    "display" : "Enfermedad de parkinson",
    "definition" : "Enfermedad de parkinson"
  },
  {
    "code" : "63",
    "display" : "Artritis idiopática juvenil",
    "definition" : "Artritis idiopática juvenil"
  },
  {
    "code" : "64",
    "display" : "Prevención secundaria enfermedad renal crónica terminal",
    "definition" : "Prevención secundaria enfermedad renal crónica terminal"
  },
  {
    "code" : "65",
    "display" : "Displasia luxante de caderas",
    "definition" : "Displasia luxante de caderas"
  },
  {
    "code" : "66",
    "display" : "Salud oral integral de la persona gestante",
    "definition" : "Salud oral integral de la persona gestante"
  },
  {
    "code" : "67",
    "display" : "Esclerosis múltiple remitente recurrente",
    "definition" : "Esclerosis múltiple remitente recurrente"
  },
  {
    "code" : "68",
    "display" : "Hepatitis crónica por virus hepatitis b",
    "definition" : "Hepatitis crónica por virus hepatitis b"
  },
  {
    "code" : "69",
    "display" : "Hepatitis crónica por virus hepatitis c",
    "definition" : "Hepatitis crónica por virus hepatitis c"
  },
  {
    "code" : "70",
    "display" : "Cáncer colorrectal en personas de 15 años y más",
    "definition" : "Cáncer colorrectal en personas de 15 años y más"
  },
  {
    "code" : "71",
    "display" : "Cáncer de ovario epitelial",
    "definition" : "Cáncer de ovario epitelial"
  },
  {
    "code" : "72",
    "display" : "Cáncer vesical en personas de 15 años y más",
    "definition" : "Cáncer vesical en personas de 15 años y más"
  },
  {
    "code" : "73",
    "display" : "Osteosarcoma en personas de 15 años y más",
    "definition" : "Osteosarcoma en personas de 15 años y más"
  },
  {
    "code" : "74",
    "display" : "Tratamiento quirúrgico de lesiones crónicas de la válvula aórtica en personas de 15 años y más",
    "definition" : "Tratamiento quirúrgico de lesiones crónicas de la válvula aórtica en personas de 15 años y más"
  },
  {
    "code" : "75",
    "display" : "Trastorno bipolar en personas de 15 años y más",
    "definition" : "Trastorno bipolar en personas de 15 años y más"
  },
  {
    "code" : "76",
    "display" : "Hipotiroidismo en personas de 15 años y más",
    "definition" : "Hipotiroidismo en personas de 15 años y más"
  },
  {
    "code" : "77",
    "display" : "Hipoacusia moderada, severa y profunda en personas menores de 4 años",
    "definition" : "Hipoacusia moderada, severa y profunda en personas menores de 4 años"
  },
  {
    "code" : "78",
    "display" : "Lupus eritematoso sistémico",
    "definition" : "Lupus eritematoso sistémico"
  },
  {
    "code" : "79",
    "display" : "Tratamiento quirúrgico de lesiones crónicas de las válvulas mitral y tricúspide en personas de 15 años y más",
    "definition" : "Tratamiento quirúrgico de lesiones crónicas de las válvulas mitral y tricúspide en personas de 15 años y más"
  },
  {
    "code" : "80",
    "display" : "Tratamiento de erradicación del helicobacter pylori",
    "definition" : "Tratamiento de erradicación del helicobacter pylori"
  },
  {
    "code" : "81",
    "display" : "Cáncer de pulmón en personas de 15 años y más",
    "definition" : "Cáncer de pulmón en personas de 15 años y más"
  },
  {
    "code" : "82",
    "display" : "Cáncer de tiroides en personas de 15 años y más",
    "definition" : "Cáncer de tiroides en personas de 15 años y más"
  },
  {
    "code" : "83",
    "display" : "Cáncer renal en personas de 15 años y más",
    "definition" : "Cáncer renal en personas de 15 años y más"
  },
  {
    "code" : "84",
    "display" : "Mieloma múltiple en personas de 15 años y más",
    "definition" : "Mieloma múltiple en personas de 15 años y más"
  },
  {
    "code" : "85",
    "display" : "Enfermedad de alzheimer y otras demencias",
    "definition" : "Enfermedad de alzheimer y otras demencias"
  },
  {
    "code" : "86",
    "display" : "Atención integral de salud en agresión sexual aguda",
    "definition" : "Atención integral de salud en agresión sexual aguda"
  },
  {
    "code" : "87",
    "display" : "Rehabilitación sars cov-2",
    "definition" : "Rehabilitación sars cov-2"
  },
  {
    "code" : "88",
    "display" : "Tratamiento farmacológico tras alta hospitalaria por cirrosis hepática",
    "definition" : "Tratamiento farmacológico tras alta hospitalaria por cirrosis hepática"
  },
  {
    "code" : "89",
    "display" : "Tratamiento hospitalario para personas menores de 15 años con depresión grave refractaria o psicótica con riesgo suicida",
    "definition" : "Tratamiento hospitalario para personas menores de 15 años con depresión grave refractaria o psicótica con riesgo suicida"
  },
  {
    "code" : "90",
    "display" : "Cesación del consumo de tabaco en personas de 25 años y más",
    "definition" : "Cesación del consumo de tabaco en personas de 25 años y más"
  }]
}

```
