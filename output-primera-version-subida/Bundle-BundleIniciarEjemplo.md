# Ejemplo Bundle Iniciar - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo Bundle Iniciar**

## Example Bundle: Ejemplo Bundle Iniciar



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "BundleIniciarEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/BundleIniciarLE"]
  },
  "type" : "message",
  "timestamp" : "2024-01-17T16:00:00-03:00",
  "entry" : [{
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/MessageHeader/MesssageHeaderIniciar",
    "resource" : {
      "resourceType" : "MessageHeader",
      "id" : "MesssageHeaderIniciar",
      "meta" : {
        "lastUpdated" : "2024-01-17T16:00:00-03:00",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/MessageHeaderLE"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MessageHeader_MesssageHeaderIniciar\"> </a><p class=\"res-header-id\"><b>Generated Narrative: CabeceraMensaje MesssageHeaderIniciar</b></p><a name=\"MesssageHeaderIniciar\"> </a><a name=\"hcMesssageHeaderIniciar\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Last updated: 2024-01-17 16:00:00-0300</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MessageHeaderLE.html\">MessageHeader LE</a></p></div><p><b>event</b>: <a href=\"CodeSystem-CSTipoEventoLE.html#CSTipoEventoLE-iniciar\">Tipo de Evento: iniciar</a> (Iniciar)</p><p><b>author</b>: <a href=\"PractitionerRole-PractitionerRoleIniciador.html\">PractitionerRole Iniciador</a></p><h3>Sources</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Software</b></td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td>SISMaule</td><td>llp:10.11.12.13:5432</td></tr></table><p><b>focus</b>: <a href=\"Bundle-BundleIniciarEjemplo.html#ServiceRequest_SolicitudInterconsultaEjemplo\">ServiceRequest Patient referral to specialist</a></p></div>"
      },
      "eventCoding" : {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoEventoLE",
        "code" : "iniciar"
      },
      "author" : {
        "reference" : "PractitionerRole/PractitionerRoleIniciador"
      },
      "source" : {
        "software" : "SISMaule",
        "endpoint" : "llp:10.11.12.13:5432"
      },
      "focus" : [{
        "reference" : "ServiceRequest/SolicitudInterconsultaEjemplo"
      }]
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ServiceRequest/SolicitudInterconsultaEjemplo",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "SolicitudInterconsultaEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestLE"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_SolicitudInterconsultaEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PeticiónServicio SolicitudInterconsultaEjemplo</b></p><a name=\"SolicitudInterconsultaEjemplo\"> </a><a name=\"hcSolicitudInterconsultaEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ServiceRequestLE.html\">ServiceRequest LE</a></p></div><p><b>ExtBool Requiere Examen</b>: true</p><p><b>ExtBool Resolutividad APS</b>: true</p><p><b>Origen Interconsulta</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSorigenInterconsulta 1}\">APS</span></p><p><b>Estado Interconsulta Codigo</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta 1}\">A la espera de referencia</span></p><p><b>Especialidad Médica Destino Código</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed 30}\">MEDICINA INTERNA</span></p><p><b>SubEspecialidad Médica Destino Código</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed 14}\">ENDOCRINOLOGÍA ADULTO</span></p><p><b>Sospecha Patologia Ges</b>: false</p><p><b>identifier</b>: 123</p><p><b>status</b>: Draft</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSModalidadAtencionCodigo 1}\">Presencial</span></p><p><b>priority</b>: Routine</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 103696004}\">Interconsulta para atención presencial</span></p><p><b>subject</b>: <a href=\"Patient-EjemploPatientLE.html\">María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-EncounterIniciarEjemplo.html\">Encounter: extension = Derivación; identifier = http://example.org/sampleencounter-identifier#123 (use: official, ); status = finished; class = Presencial (Modalidad Atencion Codigo#1); period = 2024-01-17 16:00:00+1000 --&gt; 2024-01-17 16:30:00+1000</a></p><p><b>authoredOn</b>: 2024-12-10 09:00:00+0000</p><p><b>requester</b>: <a href=\"PractitionerRole-PractitionerRoleIniciador.html\">PractitionerRole Iniciador</a></p><p><b>locationCode</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDestinoReferenciaCodigo 1}\">Nivel Secundario</span></p><p><b>reasonCode</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDerivadoParaCodigo 1}\">Confirmación</span></p><p><b>supportingInfo</b>: </p><ul><li><a href=\"Condition-ConditionInicialEjemplo.html\">Condition Typhoid and paratyphoid fevers</a></li><li><a href=\"AllergyIntolerance-AllergyIntoleranceExample.html\">AllergyIntolerance Cashew nuts</a></li><li><a href=\"Observation-IndiceConmorbilidadEjemplo.html\">Observation Estrategia de cuidado integral centrado en las personas</a></li><li><a href=\"Observation-EjemploObservationCuidador.html\">Observation Cuidador de personas con molestias relacionadas con la edad, enfermedades crónicas o fragilidad.: Paciente:Punto temporal:Tipo:Ordinal:</a></li><li><a href=\"Observation-EjemploObservationDiscapacidadLE.html\">Observation Disability status</a></li><li><a href=\"QuestionnaireResponse-MotivoDerivacionEjemplo1.html\">Response to Questionnaire '-&gt;Motivo de Derivación' about '-&gt;María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))'</a></li><li><a href=\"ServiceRequest-EjemploSolicitudExamen.html\">ServiceRequest Ag específico de próstata: Suero o Plasma : Punto temporal: Concentración de masa: Cuantitativo:</a></li><li><a href=\"Observation-AnticuerpoAdrenal.html\">Observation Ab adrenal: Suero : Punto temporal: Concentración arbitraria: Cuantitativo:</a></li></ul></div>"
      },
      "extension" : [{
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolRequiereExamen",
        "valueBoolean" : true
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionBoolResolutividadAPS",
        "valueBoolean" : true
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionOrigenInterconsulta",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSorigenInterconsulta",
            "code" : "1",
            "display" : "APS"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionEstadoInterconsultaCodigoLE",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta",
            "code" : "1",
            "display" : "A la espera de referencia"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionEspecialidadMedicaDestinoCodigo",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed",
            "code" : "30",
            "display" : "MEDICINA INTERNA"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionSubEspecialidadMedicaDestinoCodigo",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed",
            "code" : "14",
            "display" : "ENDOCRINOLOGÍA ADULTO"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/SospechaPatologiaGes",
        "valueBoolean" : false
      }],
      "identifier" : [{
        "value" : "123"
      }],
      "status" : "draft",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSModalidadAtencionCodigo",
          "code" : "1",
          "display" : "Presencial"
        }]
      }],
      "priority" : "routine",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "103696004"
        }],
        "text" : "Interconsulta para atención presencial"
      },
      "subject" : {
        "reference" : "Patient/EjemploPatientLE"
      },
      "encounter" : {
        "reference" : "Encounter/EncounterIniciarEjemplo"
      },
      "authoredOn" : "2024-12-10T09:00:00Z",
      "requester" : {
        "reference" : "PractitionerRole/PractitionerRoleIniciador"
      },
      "locationCode" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDestinoReferenciaCodigo",
          "code" : "1",
          "display" : "Nivel Secundario"
        }]
      }],
      "reasonCode" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDerivadoParaCodigo",
          "code" : "1",
          "display" : "Confirmación"
        }]
      }],
      "supportingInfo" : [{
        "reference" : "Condition/ConditionInicialEjemplo"
      },
      {
        "reference" : "AllergyIntolerance/AllergyIntoleranceExample"
      },
      {
        "reference" : "Observation/IndiceConmorbilidadEjemplo"
      },
      {
        "reference" : "Observation/EjemploObservationCuidador"
      },
      {
        "reference" : "Observation/EjemploObservationDiscapacidadLE"
      },
      {
        "reference" : "QuestionnaireResponse/MotivoDerivacionEjemplo1"
      },
      {
        "reference" : "ServiceRequest/EjemploSolicitudExamen"
      },
      {
        "reference" : "Observation/AnticuerpoAdrenal"
      }]
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Encounter/EncounterIniciarEjemplo",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "EncounterIniciarEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterIniciarLE"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_EncounterIniciarEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encuentro EncounterIniciarEjemplo</b></p><a name=\"EncounterIniciarEjemplo\"> </a><a name=\"hcEncounterIniciarEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-EncounterIniciarLE.html\">Encounter Iniciar LE</a></p></div><p><b>Consecuencia Atención Codigo</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSConsecuenciaAtencionCodigo 3}\">Derivación</span></p><p><b>identifier</b>: <code>http://example.org/sampleencounter-identifier</code>/123 (use: official, )</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"CodeSystem-CSModalidadAtencionCodigo.html#CSModalidadAtencionCodigo-1\">Modalidad Atencion Codigo: 1</a> (Presencial)</p><p><b>subject</b>: <a href=\"Patient-EjemploPatientLE.html\">María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))</a></p><h3>Participants</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Individual</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"PractitionerRole-PractitionerRoleIniciador.html\">PractitionerRole Iniciador</a></td></tr></table><p><b>period</b>: 2024-01-17 16:00:00+1000 --&gt; 2024-01-17 16:30:00+1000</p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td><td><b>Rank</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Condition-ConditionInicialEjemplo.html\">Condition Typhoid and paratyphoid fevers</a></td><td>1</td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionConsecuenciaAtencionCodigo",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSConsecuenciaAtencionCodigo",
            "code" : "3",
            "display" : "Derivación"
          }]
        }
      }],
      "identifier" : [{
        "use" : "official",
        "system" : "http://example.org/sampleencounter-identifier",
        "value" : "123"
      }],
      "status" : "finished",
      "class" : {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSModalidadAtencionCodigo",
        "code" : "1",
        "display" : "Presencial"
      },
      "subject" : {
        "reference" : "Patient/EjemploPatientLE"
      },
      "participant" : [{
        "individual" : {
          "reference" : "PractitionerRole/PractitionerRoleIniciador"
        }
      }],
      "period" : {
        "start" : "2024-01-17T16:00:00+10:00",
        "end" : "2024-01-17T16:30:00+10:00"
      },
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/ConditionInicialEjemplo"
        },
        "rank" : 1
      }]
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Patient/EjemploPatientLE",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "EjemploPatientLE",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_EjemploPatientLE\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Paciente EjemploPatientLE</b></p><a name=\"EjemploPatientLE\"> </a><a name=\"hcEjemploPatientLE\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PatientLE.html\">Patient LE</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td>true</td><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li>ph: (562) 5555 6473(Work)</li><li>Calle Arrabal Conchita Tejeda Nº 24, Esc. 432(home)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Esta extensión incluye códigos de países\"><a href=\"https://hl7chile.cl/fhir/ig/clcore/1.9.2/StructureDefinition-CodigoPaises.html\">Código de Países</a></td><td colspan=\"3\"><span title=\"Codes:{https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais 152}\">Chile</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Pueblos Originarios Perteneciente\"><a href=\"StructureDefinition-PueblosOriginariosPerteneciente.html\">Pueblos Originarios Perteneciente</a></td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Almacenar si el paciente pertenece a algun pueblo originario\"><a href=\"StructureDefinition-PueblosOriginarios.html\">Pueblos Originarios</a></td><td colspan=\"3\"><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/PueblosOriginariosCS 07}\">Diaguita</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Identidad De Género\"><a href=\"https://hl7chile.cl/fhir/ig/clcore/1.9.2/StructureDefinition-IdentidadDeGenero.html\">Identidad De Género</a></td><td colspan=\"3\"><span title=\"Codes:{https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero 2}\">Femenina</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Pueblos Afrodescendiente\"><a href=\"StructureDefinition-PueblosAfrodescendiente.html\">Pueblos Afrodescendiente</a></td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"País de origen del paciente\"><a href=\"StructureDefinition-PaisOrigenMPI.html\">País de origen del paciente</a></td><td colspan=\"3\"><span title=\"Codes:{https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais 152}\">Chile</span></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero",
            "code" : "2",
            "display" : "Femenina"
          }]
        }
      },
      {
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
            "code" : "152",
            "display" : "Chile"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PaisOrigenMPI",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
            "code" : "152",
            "display" : "Chile"
          }]
        }
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PueblosOriginariosPerteneciente",
        "valueBoolean" : true
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PueblosAfrodescendiente",
        "valueBoolean" : false
      },
      {
        "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PueblosOriginarios",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/PueblosOriginariosCS",
            "code" : "07",
            "display" : "Diaguita"
          }]
        }
      }],
      "identifier" : [{
        "use" : "official",
        "type" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
                "code" : "152",
                "display" : "Chile"
              }]
            }
          }],
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
            "code" : "01",
            "display" : "RUN"
          }],
          "text" : "Rol Único Nacional"
        },
        "value" : "90000000-6",
        "assigner" : {
          "display" : "Republica de Chile"
        }
      }],
      "active" : true,
      "name" : [{
        "use" : "official",
        "family" : "Gonzalez",
        "_family" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Morales"
          }]
        },
        "given" : ["María", "Josefina"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "(562) 5555 6473",
        "use" : "work",
        "rank" : 1
      }],
      "gender" : "male",
      "birthDate" : "1974-12-25",
      "deceasedBoolean" : false,
      "address" : [{
        "use" : "home",
        "text" : "Calle Arrabal Conchita Tejeda Nº 24, Esc. 432",
        "line" : ["Calle Arrabal Conchita Tejeda"],
        "city" : "Huara",
        "_city" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
                "code" : "01404",
                "display" : "Huara"
              }]
            }
          }]
        },
        "district" : "Provincia del Tamarugal",
        "_district" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL",
                "code" : "014",
                "display" : "Tamarugal"
              }]
            }
          }]
        },
        "state" : "Región de Tarapacá",
        "_state" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL",
                "code" : "01",
                "display" : "Tarapacá"
              }]
            }
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Condition/ConditionInicialEjemplo",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "ConditionInicialEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ConditionDiagnosticoLE"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_ConditionInicialEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condición ConditionInicialEjemplo</b></p><a name=\"ConditionInicialEjemplo\"> </a><a name=\"hcConditionInicialEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ConditionDiagnosticoLE.html\">Condition Diagnostico LE</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Activo</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmado</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Diagnostico del encuentro</span></p><p><b>severity</b>: <span title=\"Codes:{http://snomed.info/sct 24484000}\">Severo</span></p><p><b>code</b>: <span title=\"Codes:{http://hl7.org/fhir/sid/icd-10 A01}\">anticuerpos contra glándulas suprarrenales detectados</span></p><p><b>subject</b>: <a href=\"Patient-EjemploPatientLE.html\">María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-EncounterIniciarEjemplo.html\">Encounter: extension = Derivación; identifier = http://example.org/sampleencounter-identifier#123 (use: official, ); status = finished; class = Presencial (Modalidad Atencion Codigo#1); period = 2024-01-17 16:00:00+1000 --&gt; 2024-01-17 16:30:00+1000</a></p></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active",
          "display" : "Active"
        }],
        "text" : "Activo"
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed",
          "display" : "Confirmed"
        }],
        "text" : "Confirmado"
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis",
          "display" : "Encounter Diagnosis"
        }],
        "text" : "Diagnostico del encuentro"
      }],
      "severity" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "24484000",
          "display" : "Severe"
        }],
        "text" : "Severo"
      },
      "code" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/sid/icd-10",
          "code" : "A01"
        }],
        "text" : "anticuerpos contra glándulas suprarrenales detectados"
      },
      "subject" : {
        "reference" : "Patient/EjemploPatientLE"
      },
      "encounter" : {
        "reference" : "Encounter/EncounterIniciarEjemplo"
      }
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Observation/IndiceConmorbilidadEjemplo",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "IndiceConmorbilidadEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationIndiceComorbilidadLE"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_IndiceConmorbilidadEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observación IndiceConmorbilidadEjemplo</b></p><a name=\"IndiceConmorbilidadEjemplo\"> </a><a name=\"hcIndiceConmorbilidadEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ObservationIndiceComorbilidadLE.html\">Indice Comorbilidad LE</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoObservacionMinsal ECICEP}\">Indice Comorbilidad</span></p><p><b>subject</b>: <a href=\"Patient-EjemploPatientLE.html\">María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-EncounterIniciarEjemplo.html\">Encounter: extension = Derivación; identifier = http://example.org/sampleencounter-identifier#123 (use: official, ); status = finished; class = Presencial (Modalidad Atencion Codigo#1); period = 2024-01-17 16:00:00+1000 --&gt; 2024-01-17 16:30:00+1000</a></p><p><b>value</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSIndicecomorbilidad G2}\">Riesgo Moderado, 2 a 4 condiciones crónicas</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoObservacionMinsal",
          "code" : "ECICEP"
        }],
        "text" : "Indice Comorbilidad"
      },
      "subject" : {
        "reference" : "Patient/EjemploPatientLE"
      },
      "encounter" : {
        "reference" : "Encounter/EncounterIniciarEjemplo"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSIndicecomorbilidad",
          "code" : "G2",
          "display" : "Riesgo Moderado, 2 a 4 condiciones crónicas"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Observation/EjemploObservationDiscapacidadLE",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "EjemploObservationDiscapacidadLE",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationDiscapacidadLE"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_EjemploObservationDiscapacidadLE\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observación EjemploObservationDiscapacidadLE</b></p><a name=\"EjemploObservationDiscapacidadLE\"> </a><a name=\"hcEjemploObservationDiscapacidadLE\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ObservationDiscapacidadLE.html\">Discapacidad LE</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 101720-1}\">Discapacidad</span></p><p><b>subject</b>: <a href=\"Patient-EjemploPatientLE.html\">María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))</a></p><p><b>value</b>: true</p></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "101720-1",
          "display" : "Disability status"
        }],
        "text" : "Discapacidad"
      },
      "subject" : {
        "reference" : "Patient/EjemploPatientLE"
      },
      "valueBoolean" : true
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Observation/EjemploObservationCuidador",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "EjemploObservationCuidador",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationIniciarCuidadorLE"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_EjemploObservationCuidador\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observación EjemploObservationCuidador</b></p><a name=\"EjemploObservationCuidador\"> </a><a name=\"hcEjemploObservationCuidador\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ObservationIniciarCuidadorLE.html\">Cuidador LE</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 95385-1}\">Cuidador de una persona con dolencias relacionadas con la edad o enfermedades crónicas.</span></p><p><b>subject</b>: <a href=\"Patient-EjemploPatientLE.html\">María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))</a></p><p><b>value</b>: true</p></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "95385-1",
          "display" : "Cuidador de personas con molestias relacionadas con la edad, enfermedades crónicas o fragilidad.: Paciente:Punto temporal:Tipo:Ordinal:"
        }],
        "text" : "Cuidador de una persona con dolencias relacionadas con la edad o enfermedades crónicas."
      },
      "subject" : {
        "reference" : "Patient/EjemploPatientLE"
      },
      "valueBoolean" : true
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Observation/AnticuerpoAdrenal",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "AnticuerpoAdrenal",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationResultadoExamen"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AnticuerpoAdrenal\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observación AnticuerpoAdrenal</b></p><a name=\"AnticuerpoAdrenal\"> </a><a name=\"hcAnticuerpoAdrenal\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ObservationResultadoExamen.html\">Observation Resultado Examen</a></p></div><p><b>status</b>: Registered</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8059-8}\">Ab adrenal en Sérum</span></p><p><b>subject</b>: <a href=\"Patient-EjemploPatientLE.html\">María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-EncounterIniciarEjemplo.html\">Encounter: extension = Derivación; identifier = http://example.org/sampleencounter-identifier#123 (use: official, ); status = finished; class = Presencial (Modalidad Atencion Codigo#1); period = 2024-01-17 16:00:00+1000 --&gt; 2024-01-17 16:30:00+1000</a></p><p><b>effective</b>: 2024-01-17 15:00:00-0300</p><p><b>value</b>: 10 arb'U/mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[arb'U]/mL = '[arb'U]/mL')</span></p></div>"
      },
      "status" : "registered",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
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
      "encounter" : {
        "reference" : "Encounter/EncounterIniciarEjemplo"
      },
      "effectiveDateTime" : "2024-01-17T15:00:00-03:00",
      "valueQuantity" : {
        "value" : 10,
        "unit" : "arb'U/mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "[arb'U]/mL"
      }
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/AllergyIntolerance/AllergyIntoleranceExample",
    "resource" : {
      "resourceType" : "AllergyIntolerance",
      "id" : "AllergyIntoleranceExample",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AllergyIntoleranceIniciarLE"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"AllergyIntolerance_AllergyIntoleranceExample\"> </a><p class=\"res-header-id\"><b>Generated Narrative: AllergiaIntolerancia AllergyIntoleranceExample</b></p><a name=\"AllergyIntoleranceExample\"> </a><a name=\"hcAllergyIntoleranceExample\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-AllergyIntoleranceIniciarLE.html\">AllergyIntolerance Iniciar LE</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical active}\">Activo</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-verification confirmed}\">Confirmado</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 227493005}\">Alergía a castaña de cajú</span></p><p><b>patient</b>: <a href=\"Patient-EjemploPatientLE.html\">María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))</a></p></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
          "code" : "active",
          "display" : "Active"
        }],
        "text" : "Activo"
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
          "code" : "confirmed",
          "display" : "Confirmed"
        }],
        "text" : "Confirmado"
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "227493005"
        }],
        "text" : "Alergía a castaña de cajú"
      },
      "patient" : {
        "reference" : "Patient/EjemploPatientLE"
      }
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/PractitionerRole/PractitionerRoleIniciador",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "PractitionerRoleIniciador",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_PractitionerRoleIniciador\"> </a><p class=\"res-header-id\"><b>Generated Narrative: RolProfesional PractitionerRoleIniciador</b></p><a name=\"PractitionerRoleIniciador\"> </a><a name=\"hcPractitionerRoleIniciador\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PractitionerRoleLE.html\">PractitionerRole LE</a></p></div><p><b>active</b>: true</p><p><b>practitioner</b>: <a href=\"Practitioner-PractitionerProfesionalLEEjemplo.html\">Practitioner Víctor Gonzalez </a></p><p><b>organization</b>: <a href=\"Organization-OrganizationLEEjemplo.html\">Organization Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)</a></p><p><b>code</b>: <span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE iniciador}\">Iniciador</span></p></div>"
      },
      "active" : true,
      "practitioner" : {
        "reference" : "Practitioner/PractitionerProfesionalLEEjemplo"
      },
      "organization" : {
        "reference" : "Organization/OrganizationLEEjemplo"
      },
      "code" : [{
        "coding" : [{
          "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE",
          "code" : "iniciador",
          "display" : "Iniciador"
        }]
      }]
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Practitioner/PractitionerProfesionalLEEjemplo",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "PractitionerProfesionalLEEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerProfesionalLE"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_PractitionerProfesionalLEEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practicante / Profesional PractitionerProfesionalLEEjemplo</b></p><a name=\"PractitionerProfesionalLEEjemplo\"> </a><a name=\"hcPractitionerProfesionalLEEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PractitionerProfesionalLE.html\">Prestador Profesional LE</a></p></div><p><b>identifier</b>: Rol Único Nacional/90000000-6 (use: official, ), Registro Nacional de Prestadores Individuales/9999999 (use: secondary, )</p><p><b>active</b>: true</p><p><b>name</b>: Víctor Gonzalez </p><p><b>address</b>: Dirección falsa 123,depto 1202 null (work)</p><p><b>gender</b>: Male</p><p><b>birthDate</b>: 1980-01-01</p><h3>Qualifications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Identifier</b></td><td><b>Code</b></td><td><b>Period</b></td><td><b>Issuer</b></td></tr><tr><td style=\"display: none\">*</td><td>cert</td><td><span title=\"Codes:{https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional 1}\">MÉDICO CIRUJANO</span></td><td>2007-11-01 --&gt; (ongoing)</td><td>Universidad de Chile</td></tr></table></div>"
      },
      "identifier" : [{
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
            "code" : "01",
            "display" : "RUN"
          }],
          "text" : "Rol Único Nacional"
        },
        "value" : "90000000-6",
        "assigner" : {
          "display" : "Republica de Chile"
        }
      },
      {
        "use" : "secondary",
        "type" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
            "code" : "13",
            "display" : "RNPI"
          }],
          "text" : "Registro Nacional de Prestadores Individuales"
        },
        "value" : "9999999",
        "assigner" : {
          "display" : "Intendencia de prestadores individuales - Superintendencia de Salud"
        }
      }],
      "active" : true,
      "name" : [{
        "family" : "Gonzalez",
        "_family" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString" : "Torres"
          }]
        },
        "given" : ["Víctor"],
        "prefix" : ["Dr"]
      }],
      "address" : [{
        "use" : "work",
        "line" : ["Dirección falsa 123,depto 1202"],
        "_state" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL",
                "code" : "13",
                "display" : "Metropolitana de Santiago"
              }]
            }
          }]
        }
      }],
      "gender" : "male",
      "birthDate" : "1980-01-01",
      "qualification" : [{
        "identifier" : [{
          "value" : "cert"
        }],
        "code" : {
          "coding" : [{
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional",
            "code" : "1",
            "display" : "MÉDICO CIRUJANO"
          }],
          "text" : "MÉDICO CIRUJANO"
        },
        "period" : {
          "start" : "2007-11-01"
        },
        "issuer" : {
          "display" : "Universidad de Chile"
        }
      }]
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Organization/OrganizationLEEjemplo",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "OrganizationLEEjemplo",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/OrganizationLE"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_OrganizationLEEjemplo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organización OrganizationLEEjemplo</b></p><a name=\"OrganizationLEEjemplo\"> </a><a name=\"hcOrganizationLEEjemplo\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-OrganizationLE.html\">Organization LE</a></p></div><p><b>identifier</b>: <code>https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino</code>/120101</p><p><b>name</b>: Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)</p><p><b>alias</b>: Hospital de Los Ángeles</p><p><b>telecom</b>: ph: (+56) 432336000</p><p><b>address</b>: Ricardo Vicuña 147 Los Ángeles 4451055 Chile </p></div>"
      },
      "identifier" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino",
        "value" : "120101"
      }],
      "name" : "Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)",
      "alias" : ["Hospital de Los Ángeles"],
      "telecom" : [{
        "system" : "phone",
        "value" : "(+56) 432336000"
      }],
      "address" : [{
        "line" : ["Ricardo Vicuña 147"],
        "city" : "Los Ángeles",
        "_city" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
                "code" : "08301",
                "display" : "Los Ángeles"
              }]
            }
          }]
        },
        "postalCode" : "4451055",
        "country" : "Chile",
        "_country" : {
          "extension" : [{
            "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
                "code" : "152",
                "display" : "Chile"
              }]
            }
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/QuestionnaireResponse/MotivoDerivacionEjemplo1",
    "resource" : {
      "resourceType" : "QuestionnaireResponse",
      "id" : "MotivoDerivacionEjemplo1",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/QuestionnaireResponseIniciarLE"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"QuestionnaireResponse_MotivoDerivacionEjemplo1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: RespuestaAlCuestionario MotivoDerivacionEjemplo1</b></p><a name=\"MotivoDerivacionEjemplo1\"> </a><a name=\"hcMotivoDerivacionEjemplo1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-QuestionnaireResponseIniciarLE.html\">QuestionnaireResponse Iniciar Motivo de la Derivación LE</a></p></div><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The linkID for the item\">LinkID</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the item can appear in the instance\">Definition</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Answer</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"QuestionnaireResponseRoot\" class=\"hierarchy\"/> MotivoDerivacionEjemplo1</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Questionnaire:<a href=\"Questionnaire-MotivoDerivacion.html\">Motivo de Derivación</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck00.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> MotivoDerivacion</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Motivo de Derivación</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Paciente requiere derivación por evaluación de especialidad.</td></tr>\r\n<tr><td colspan=\"4\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
      },
      "questionnaire" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Questionnaire/MotivoDerivacion",
      "status" : "completed",
      "subject" : {
        "reference" : "Patient/EjemploPatientLE"
      },
      "encounter" : {
        "reference" : "Encounter/AtencionEjemplo"
      },
      "author" : {
        "reference" : "Practitioner/PractitionerProfesionalLEEjemplo"
      },
      "item" : [{
        "linkId" : "MotivoDerivacion",
        "text" : "Motivo de Derivación",
        "answer" : [{
          "valueString" : "Paciente requiere derivación por evaluación de especialidad."
        }]
      }]
    }
  },
  {
    "fullUrl" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ServiceRequest/EjemploSolicitudExamen",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "EjemploSolicitudExamen",
      "meta" : {
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestExamenLE"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_EjemploSolicitudExamen\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PeticiónServicio EjemploSolicitudExamen</b></p><a name=\"EjemploSolicitudExamen\"> </a><a name=\"hcEjemploSolicitudExamen\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-ServiceRequestExamenLE.html\">Solicitud de Examen LE</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-EjemploSolicitudInterconsultaFinalizada.html\">ServiceRequest Patient referral to specialist</a></p><p><b>status</b>: Draft</p><p><b>intent</b>: Order</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2857-1}\">Antigeno Prostático Específico en Suero o Plasma</span></p><p><b>subject</b>: <a href=\"Patient-EjemploPatientLE.html\">María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))</a></p><p><b>occurrence</b>: 2024-01-19 16:00:00-0300</p><p><b>authoredOn</b>: 2024-01-17 16:00:00-0300</p><p><b>requester</b>: <a href=\"Practitioner-PractitionerProfesionalLEEjemplo.html\">Practitioner Víctor Gonzalez </a></p><p><b>reasonCode</b>: <span title=\"Codes:{http://snomed.info/sct 414205003}\">antecedente familiar de neoplasia maligna de próstata</span></p><p><b>note</b>: </p><blockquote><div><p>paciente con APE elevado en 2022, se solicita examen vigente previo a atención con especialidad</p>\n</div></blockquote></div>"
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
  }]
}

```
