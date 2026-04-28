# Especialidades Odontológicas - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Especialidades Odontológicas**

## CodeSystem: Especialidades Odontológicas 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadOdont | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSEspecialidadOdont |

 
Especialidades Odontológicas 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEspecialidadOdont](ValueSet-VSEspecialidadOdont.md)
* [VsEspecialidadDest](ValueSet-VsEspecialidadDest.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEspecialidadOdont",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadOdont",
  "version" : "0.2.2",
  "name" : "CSEspecialidadOdont",
  "title" : "Especialidades Odontológicas",
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
  "description" : "Especialidades Odontológicas",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 16,
  "concept" : [{
    "code" : "1",
    "display" : "Cirugía y Traumatología Buco Maxilofacial",
    "definition" : "Cirugía y Traumatología Buco Maxilofacial"
  },
  {
    "code" : "2",
    "display" : "Cirugía Bucal",
    "definition" : "Cirugía Bucal"
  },
  {
    "code" : "3",
    "display" : "Endodoncia",
    "definition" : "Endodoncia"
  },
  {
    "code" : "4",
    "display" : "Imagenología Oral y Maxilofacial",
    "definition" : "Imagenología Oral y Maxilofacial"
  },
  {
    "code" : "5",
    "display" : "Implantología Buco Maxilofacial",
    "definition" : "Implantología Buco Maxilofacial"
  },
  {
    "code" : "6",
    "display" : "Odontología legal",
    "definition" : "Odontología legal"
  },
  {
    "code" : "7",
    "display" : "Odontopediatría",
    "definition" : "Odontopediatría"
  },
  {
    "code" : "8",
    "display" : "Ortodoncia y Ortopedia Dento Máxilo Facial",
    "definition" : "Ortodoncia y Ortopedia Dento Máxilo Facial"
  },
  {
    "code" : "9",
    "display" : "Patología Oral Maxilofacial",
    "definition" : "Patología Oral Maxilofacial"
  },
  {
    "code" : "10",
    "display" : "Periodoncia",
    "definition" : "Periodoncia"
  },
  {
    "code" : "11",
    "display" : "Rehabilitación Oral Removible",
    "definition" : "Rehabilitación Oral Removible"
  },
  {
    "code" : "12",
    "display" : "Salud Pública",
    "definition" : "Salud Pública"
  },
  {
    "code" : "13",
    "display" : "Somato-Prótesis",
    "definition" : "Somato-Prótesis"
  },
  {
    "code" : "14",
    "display" : "Trastornos Temporomandibulares Y Dolor Orofacial",
    "definition" : "Trastornos Temporomandibulares Y Dolor Orofacial"
  },
  {
    "code" : "15",
    "display" : "Odontogeriatría",
    "definition" : "Odontogeriatría"
  },
  {
    "code" : "16",
    "display" : "Rehabilitación Oral Fija",
    "definition" : "Rehabilitación Oral Fija"
  }]
}

```
