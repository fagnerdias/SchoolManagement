Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(CareerMch))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(CareerMch))==(Machine(CareerMch));
  Level(Machine(CareerMch))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(CareerMch)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(CareerMch))==(SubjectMch,Student_ctx,Career_ctx,DepartamentMch)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(CareerMch))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(CareerMch))==(?);
  List_Includes(Machine(CareerMch))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(CareerMch))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(CareerMch))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(CareerMch))==(?);
  Context_List_Variables(Machine(CareerMch))==(?);
  Abstract_List_Variables(Machine(CareerMch))==(?);
  Local_List_Variables(Machine(CareerMch))==(enrolledStudents,optionalSubjects,requiredSubjects);
  List_Variables(Machine(CareerMch))==(enrolledStudents,optionalSubjects,requiredSubjects);
  External_List_Variables(Machine(CareerMch))==(enrolledStudents,optionalSubjects,requiredSubjects)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(CareerMch))==(?);
  Abstract_List_VisibleVariables(Machine(CareerMch))==(?);
  External_List_VisibleVariables(Machine(CareerMch))==(?);
  Expanded_List_VisibleVariables(Machine(CareerMch))==(?);
  List_VisibleVariables(Machine(CareerMch))==(?);
  Internal_List_VisibleVariables(Machine(CareerMch))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(CareerMch))==(btrue);
  Gluing_List_Invariant(Machine(CareerMch))==(btrue);
  Expanded_List_Invariant(Machine(CareerMch))==(btrue);
  Abstract_List_Invariant(Machine(CareerMch))==(btrue);
  Context_List_Invariant(Machine(CareerMch))==(preRequirement: SUBJECT <-> SUBJECT & coordination: PROFESSOR +-> CAREER & members: PROFESSOR +-> DEPARTAMENT & career: CAREER +-> DEPARTAMENT & card(dom(coordination))<=2 & card(dom(coordination))>=0);
  List_Invariant(Machine(CareerMch))==(requiredSubjects: CAREER <-> SUBJECT & optionalSubjects: CAREER <-> SUBJECT & requiredSubjects/\optionalSubjects = {} & enrolledStudents: STUDENT +-> CAREER)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(CareerMch))==(btrue);
  Abstract_List_Assertions(Machine(CareerMch))==(btrue);
  Context_List_Assertions(Machine(CareerMch))==(btrue);
  List_Assertions(Machine(CareerMch))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(CareerMch))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(CareerMch))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(CareerMch))==(optionalSubjects,requiredSubjects,enrolledStudents:={},{},{});
  Context_List_Initialisation(Machine(CareerMch))==(skip);
  List_Initialisation(Machine(CareerMch))==(optionalSubjects:={} || requiredSubjects:={} || enrolledStudents:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(CareerMch))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(CareerMch),Machine(SubjectMch))==(?);
  List_Instanciated_Parameters(Machine(CareerMch),Machine(Student_ctx))==(?);
  List_Instanciated_Parameters(Machine(CareerMch),Machine(Career_ctx))==(?);
  List_Instanciated_Parameters(Machine(CareerMch),Machine(DepartamentMch))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(CareerMch))==(btrue);
  List_Constraints(Machine(CareerMch))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(CareerMch))==(addStudentCarrer,removeStudentCareer,addRequiredSubjects,removeRequiredSubjects,addOptionalSubjects,removeOptionalSubjects);
  List_Operations(Machine(CareerMch))==(addStudentCarrer,removeStudentCareer,addRequiredSubjects,removeRequiredSubjects,addOptionalSubjects,removeOptionalSubjects)
END
&
THEORY ListInputX IS
  List_Input(Machine(CareerMch),addStudentCarrer)==(cc,aa);
  List_Input(Machine(CareerMch),removeStudentCareer)==(cc,aa);
  List_Input(Machine(CareerMch),addRequiredSubjects)==(cc,mm);
  List_Input(Machine(CareerMch),removeRequiredSubjects)==(cc,mm);
  List_Input(Machine(CareerMch),addOptionalSubjects)==(cc,mm);
  List_Input(Machine(CareerMch),removeOptionalSubjects)==(cc,mm)
END
&
THEORY ListOutputX IS
  List_Output(Machine(CareerMch),addStudentCarrer)==(?);
  List_Output(Machine(CareerMch),removeStudentCareer)==(?);
  List_Output(Machine(CareerMch),addRequiredSubjects)==(?);
  List_Output(Machine(CareerMch),removeRequiredSubjects)==(?);
  List_Output(Machine(CareerMch),addOptionalSubjects)==(?);
  List_Output(Machine(CareerMch),removeOptionalSubjects)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(CareerMch),addStudentCarrer)==(addStudentCarrer(cc,aa));
  List_Header(Machine(CareerMch),removeStudentCareer)==(removeStudentCareer(cc,aa));
  List_Header(Machine(CareerMch),addRequiredSubjects)==(addRequiredSubjects(cc,mm));
  List_Header(Machine(CareerMch),removeRequiredSubjects)==(removeRequiredSubjects(cc,mm));
  List_Header(Machine(CareerMch),addOptionalSubjects)==(addOptionalSubjects(cc,mm));
  List_Header(Machine(CareerMch),removeOptionalSubjects)==(removeOptionalSubjects(cc,mm))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(CareerMch),addStudentCarrer)==(aa: STUDENT & cc: CAREER & aa/:dom(enrolledStudents) & cc: dom(career));
  List_Precondition(Machine(CareerMch),removeStudentCareer)==(aa: STUDENT & cc: CAREER & aa: dom(enrolledStudents) & cc: ran({aa}<|enrolledStudents));
  List_Precondition(Machine(CareerMch),addRequiredSubjects)==(cc: CAREER & mm: SUBJECT & mm/:ran({cc}<|optionalSubjects) & mm/:ran({cc}<|requiredSubjects) & cc: dom(career));
  List_Precondition(Machine(CareerMch),removeRequiredSubjects)==(cc: CAREER & mm: SUBJECT & mm: ran({cc}<|requiredSubjects));
  List_Precondition(Machine(CareerMch),addOptionalSubjects)==(cc: CAREER & mm: SUBJECT & mm/:ran({cc}<|requiredSubjects) & mm/:ran({cc}<|optionalSubjects) & cc: dom(career));
  List_Precondition(Machine(CareerMch),removeOptionalSubjects)==(cc: CAREER & mm: SUBJECT & mm: ran({cc}<|optionalSubjects))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(CareerMch),removeOptionalSubjects)==(cc: CAREER & mm: SUBJECT & mm: ran({cc}<|optionalSubjects) | optionalSubjects:=optionalSubjects-{cc|->mm});
  Expanded_List_Substitution(Machine(CareerMch),addOptionalSubjects)==(cc: CAREER & mm: SUBJECT & mm/:ran({cc}<|requiredSubjects) & mm/:ran({cc}<|optionalSubjects) & cc: dom(career) | optionalSubjects:=optionalSubjects\/{cc|->mm});
  Expanded_List_Substitution(Machine(CareerMch),removeRequiredSubjects)==(cc: CAREER & mm: SUBJECT & mm: ran({cc}<|requiredSubjects) | requiredSubjects:=requiredSubjects-{cc|->mm});
  Expanded_List_Substitution(Machine(CareerMch),addRequiredSubjects)==(cc: CAREER & mm: SUBJECT & mm/:ran({cc}<|optionalSubjects) & mm/:ran({cc}<|requiredSubjects) & cc: dom(career) | requiredSubjects:=requiredSubjects\/{cc|->mm});
  Expanded_List_Substitution(Machine(CareerMch),removeStudentCareer)==(aa: STUDENT & cc: CAREER & aa: dom(enrolledStudents) & cc: ran({aa}<|enrolledStudents) | enrolledStudents:=enrolledStudents-{aa|->cc});
  Expanded_List_Substitution(Machine(CareerMch),addStudentCarrer)==(aa: STUDENT & cc: CAREER & aa/:dom(enrolledStudents) & cc: dom(career) | enrolledStudents:=enrolledStudents\/{aa|->cc});
  List_Substitution(Machine(CareerMch),addStudentCarrer)==(enrolledStudents:=enrolledStudents\/{aa|->cc});
  List_Substitution(Machine(CareerMch),removeStudentCareer)==(enrolledStudents:=enrolledStudents-{aa|->cc});
  List_Substitution(Machine(CareerMch),addRequiredSubjects)==(requiredSubjects:=requiredSubjects\/{cc|->mm});
  List_Substitution(Machine(CareerMch),removeRequiredSubjects)==(requiredSubjects:=requiredSubjects-{cc|->mm});
  List_Substitution(Machine(CareerMch),addOptionalSubjects)==(optionalSubjects:=optionalSubjects\/{cc|->mm});
  List_Substitution(Machine(CareerMch),removeOptionalSubjects)==(optionalSubjects:=optionalSubjects-{cc|->mm})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(CareerMch))==(?);
  Inherited_List_Constants(Machine(CareerMch))==(?);
  List_Constants(Machine(CareerMch))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(CareerMch))==(?);
  Context_List_Defered(Machine(CareerMch))==(SUBJECT,STUDENT,CAREER);
  Context_List_Sets(Machine(CareerMch))==(SUBJECT,STUDENT,CAREER);
  List_Valuable_Sets(Machine(CareerMch))==(?);
  Inherited_List_Enumerated(Machine(CareerMch))==(?);
  Inherited_List_Defered(Machine(CareerMch))==(?);
  Inherited_List_Sets(Machine(CareerMch))==(?);
  List_Enumerated(Machine(CareerMch))==(?);
  List_Defered(Machine(CareerMch))==(?);
  List_Sets(Machine(CareerMch))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(CareerMch))==(?);
  Expanded_List_HiddenConstants(Machine(CareerMch))==(?);
  List_HiddenConstants(Machine(CareerMch))==(?);
  External_List_HiddenConstants(Machine(CareerMch))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(CareerMch))==(btrue);
  Context_List_Properties(Machine(CareerMch))==(SUBJECT: FIN(INTEGER) & not(SUBJECT = {}) & STUDENT: FIN(INTEGER) & not(STUDENT = {}) & CAREER: FIN(INTEGER) & not(CAREER = {}));
  Inherited_List_Properties(Machine(CareerMch))==(btrue);
  List_Properties(Machine(CareerMch))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(CareerMch),Machine(DepartamentMch))==(addProfessorMember,removeProfessorMember,addCareerDepartament,removeCareerDepartament,addCoordenador,removeCoordination);
  Seen_Context_List_Enumerated(Machine(CareerMch))==(?);
  Seen_Context_List_Invariant(Machine(CareerMch))==(btrue);
  Seen_Context_List_Assertions(Machine(CareerMch))==(btrue);
  Seen_Context_List_Properties(Machine(CareerMch))==(CAREER: FIN(INTEGER) & not(CAREER = {}) & PROFESSOR: FIN(INTEGER) & not(PROFESSOR = {}) & DEPARTAMENT: FIN(INTEGER) & not(DEPARTAMENT = {}));
  Seen_List_Constraints(Machine(CareerMch))==(btrue);
  Seen_List_Precondition(Machine(CareerMch),removeCoordination)==(cc: CAREER & pp: PROFESSOR & cc: dom(career) & pp: dom(members) & card(dom(coordination))>0);
  Seen_Expanded_List_Substitution(Machine(CareerMch),removeCoordination)==(coordination:=coordination-{pp|->cc});
  Seen_List_Precondition(Machine(CareerMch),addCoordenador)==(pp: PROFESSOR & cc: CAREER & pp: dom(members) & pp/:dom(coordination) & ran({cc}<|career) = ran({pp}<|members) & card(dom(coordination))<2);
  Seen_Expanded_List_Substitution(Machine(CareerMch),addCoordenador)==(coordination:=coordination\/{pp|->cc});
  Seen_List_Precondition(Machine(CareerMch),removeCareerDepartament)==(dd: DEPARTAMENT & cc: CAREER & cc: dom(career) & dd: ran({cc}<|career));
  Seen_Expanded_List_Substitution(Machine(CareerMch),removeCareerDepartament)==(career:=career-{cc|->dd});
  Seen_List_Precondition(Machine(CareerMch),addCareerDepartament)==(dd: DEPARTAMENT & cc: CAREER & cc/:dom(career));
  Seen_Expanded_List_Substitution(Machine(CareerMch),addCareerDepartament)==(career:=career\/{cc|->dd});
  Seen_List_Precondition(Machine(CareerMch),removeProfessorMember)==(pp: PROFESSOR & dd: DEPARTAMENT & pp: dom(members) & dd: ran({pp}<|members));
  Seen_Expanded_List_Substitution(Machine(CareerMch),removeProfessorMember)==(members:=members-{pp|->dd});
  Seen_List_Precondition(Machine(CareerMch),addProfessorMember)==(pp: PROFESSOR & dd: DEPARTAMENT & pp/:dom(members));
  Seen_Expanded_List_Substitution(Machine(CareerMch),addProfessorMember)==(members:=members\/{pp|->dd});
  Seen_List_Operations(Machine(CareerMch),Machine(DepartamentMch))==(addProfessorMember,removeProfessorMember,addCareerDepartament,removeCareerDepartament,addCoordenador,removeCoordination);
  Seen_Expanded_List_Invariant(Machine(CareerMch),Machine(DepartamentMch))==(btrue);
  Seen_Internal_List_Operations(Machine(CareerMch),Machine(Career_ctx))==(?);
  Seen_List_Operations(Machine(CareerMch),Machine(Career_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(CareerMch),Machine(Career_ctx))==(btrue);
  Seen_Internal_List_Operations(Machine(CareerMch),Machine(Student_ctx))==(?);
  Seen_List_Operations(Machine(CareerMch),Machine(Student_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(CareerMch),Machine(Student_ctx))==(btrue);
  Seen_Internal_List_Operations(Machine(CareerMch),Machine(SubjectMch))==(addPreRequirement,removePreRequirement);
  Seen_List_Precondition(Machine(CareerMch),removePreRequirement)==(mm: SUBJECT & pp: SUBJECT & pp: ran({mm}<|preRequirement));
  Seen_Expanded_List_Substitution(Machine(CareerMch),removePreRequirement)==(preRequirement:=preRequirement-{mm|->pp});
  Seen_List_Precondition(Machine(CareerMch),addPreRequirement)==(mm: SUBJECT & pp: SUBJECT & pp/:ran({mm}<|preRequirement));
  Seen_Expanded_List_Substitution(Machine(CareerMch),addPreRequirement)==(preRequirement:=preRequirement\/{mm|->pp});
  Seen_List_Operations(Machine(CareerMch),Machine(SubjectMch))==(addPreRequirement,removePreRequirement);
  Seen_Expanded_List_Invariant(Machine(CareerMch),Machine(SubjectMch))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(CareerMch),addStudentCarrer)==(?);
  List_ANY_Var(Machine(CareerMch),removeStudentCareer)==(?);
  List_ANY_Var(Machine(CareerMch),addRequiredSubjects)==(?);
  List_ANY_Var(Machine(CareerMch),removeRequiredSubjects)==(?);
  List_ANY_Var(Machine(CareerMch),addOptionalSubjects)==(?);
  List_ANY_Var(Machine(CareerMch),removeOptionalSubjects)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(CareerMch)) == (? | ? | enrolledStudents,optionalSubjects,requiredSubjects | ? | addStudentCarrer,removeStudentCareer,addRequiredSubjects,removeRequiredSubjects,addOptionalSubjects,removeOptionalSubjects | ? | seen(Machine(SubjectMch)),seen(Machine(Student_ctx)),seen(Machine(Career_ctx)),seen(Machine(DepartamentMch)) | ? | CareerMch);
  List_Of_HiddenCst_Ids(Machine(CareerMch)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(CareerMch)) == (?);
  List_Of_VisibleVar_Ids(Machine(CareerMch)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CareerMch)) == (?: ?);
  List_Of_Ids(Machine(DepartamentMch)) == (? | ? | career,members,coordination | ? | addProfessorMember,removeProfessorMember,addCareerDepartament,removeCareerDepartament,addCoordenador,removeCoordination | ? | seen(Machine(Career_ctx)),seen(Machine(ProfessorMch)),seen(Machine(Departament_ctx)) | ? | DepartamentMch);
  List_Of_HiddenCst_Ids(Machine(DepartamentMch)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(DepartamentMch)) == (?);
  List_Of_VisibleVar_Ids(Machine(DepartamentMch)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(DepartamentMch)) == (?: ?);
  List_Of_Ids(Machine(Departament_ctx)) == (DEPARTAMENT | ? | ? | ? | ? | ? | ? | ? | Departament_ctx);
  List_Of_HiddenCst_Ids(Machine(Departament_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Departament_ctx)) == (?);
  List_Of_VisibleVar_Ids(Machine(Departament_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Departament_ctx)) == (?: ?);
  List_Of_Ids(Machine(ProfessorMch)) == (PROFESSOR | ? | ? | ? | ? | ? | ? | ? | ProfessorMch);
  List_Of_HiddenCst_Ids(Machine(ProfessorMch)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ProfessorMch)) == (?);
  List_Of_VisibleVar_Ids(Machine(ProfessorMch)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ProfessorMch)) == (?: ?);
  List_Of_Ids(Machine(Career_ctx)) == (CAREER | ? | ? | ? | ? | ? | ? | ? | Career_ctx);
  List_Of_HiddenCst_Ids(Machine(Career_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Career_ctx)) == (?);
  List_Of_VisibleVar_Ids(Machine(Career_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Career_ctx)) == (?: ?);
  List_Of_Ids(Machine(Student_ctx)) == (STUDENT | ? | ? | ? | ? | ? | ? | ? | Student_ctx);
  List_Of_HiddenCst_Ids(Machine(Student_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Student_ctx)) == (?);
  List_Of_VisibleVar_Ids(Machine(Student_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Student_ctx)) == (?: ?);
  List_Of_Ids(Machine(SubjectMch)) == (SUBJECT | ? | preRequirement | ? | addPreRequirement,removePreRequirement | ? | ? | ? | SubjectMch);
  List_Of_HiddenCst_Ids(Machine(SubjectMch)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SubjectMch)) == (?);
  List_Of_VisibleVar_Ids(Machine(SubjectMch)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SubjectMch)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(CareerMch)) == (Type(enrolledStudents) == Mvl(SetOf(atype(STUDENT,?,?)*atype(CAREER,?,?)));Type(optionalSubjects) == Mvl(SetOf(atype(CAREER,?,?)*atype(SUBJECT,?,?)));Type(requiredSubjects) == Mvl(SetOf(atype(CAREER,?,?)*atype(SUBJECT,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(CareerMch)) == (Type(removeOptionalSubjects) == Cst(No_type,atype(CAREER,?,?)*atype(SUBJECT,?,?));Type(addOptionalSubjects) == Cst(No_type,atype(CAREER,?,?)*atype(SUBJECT,?,?));Type(removeRequiredSubjects) == Cst(No_type,atype(CAREER,?,?)*atype(SUBJECT,?,?));Type(addRequiredSubjects) == Cst(No_type,atype(CAREER,?,?)*atype(SUBJECT,?,?));Type(removeStudentCareer) == Cst(No_type,atype(CAREER,?,?)*atype(STUDENT,?,?));Type(addStudentCarrer) == Cst(No_type,atype(CAREER,?,?)*atype(STUDENT,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
