Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(StudentMch))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(StudentMch))==(Machine(StudentMch));
  Level(Machine(StudentMch))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(StudentMch)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(StudentMch))==(SubjectMch,Student_ctx,CareerMch)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(StudentMch))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(StudentMch))==(?);
  List_Includes(Machine(StudentMch))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(StudentMch))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(StudentMch))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(StudentMch))==(?);
  Context_List_Variables(Machine(StudentMch))==(?);
  Abstract_List_Variables(Machine(StudentMch))==(?);
  Local_List_Variables(Machine(StudentMch))==(aprovedSubjects);
  List_Variables(Machine(StudentMch))==(aprovedSubjects);
  External_List_Variables(Machine(StudentMch))==(aprovedSubjects)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(StudentMch))==(?);
  Abstract_List_VisibleVariables(Machine(StudentMch))==(?);
  External_List_VisibleVariables(Machine(StudentMch))==(?);
  Expanded_List_VisibleVariables(Machine(StudentMch))==(?);
  List_VisibleVariables(Machine(StudentMch))==(?);
  Internal_List_VisibleVariables(Machine(StudentMch))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(StudentMch))==(btrue);
  Gluing_List_Invariant(Machine(StudentMch))==(btrue);
  Expanded_List_Invariant(Machine(StudentMch))==(btrue);
  Abstract_List_Invariant(Machine(StudentMch))==(btrue);
  Context_List_Invariant(Machine(StudentMch))==(preRequirement: SUBJECT <-> SUBJECT & requiredSubjects: CAREER <-> SUBJECT & optionalSubjects: CAREER <-> SUBJECT & requiredSubjects/\optionalSubjects = {} & enrolledStudents: STUDENT +-> CAREER);
  List_Invariant(Machine(StudentMch))==(aprovedSubjects: STUDENT <-> SUBJECT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(StudentMch))==(btrue);
  Abstract_List_Assertions(Machine(StudentMch))==(btrue);
  Context_List_Assertions(Machine(StudentMch))==(btrue);
  List_Assertions(Machine(StudentMch))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(StudentMch))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(StudentMch))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(StudentMch))==(aprovedSubjects:={});
  Context_List_Initialisation(Machine(StudentMch))==(skip);
  List_Initialisation(Machine(StudentMch))==(aprovedSubjects:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(StudentMch))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(StudentMch),Machine(SubjectMch))==(?);
  List_Instanciated_Parameters(Machine(StudentMch),Machine(Student_ctx))==(?);
  List_Instanciated_Parameters(Machine(StudentMch),Machine(CareerMch))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(StudentMch))==(btrue);
  List_Constraints(Machine(StudentMch))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(StudentMch))==(addaprovedSubjects);
  List_Operations(Machine(StudentMch))==(addaprovedSubjects)
END
&
THEORY ListInputX IS
  List_Input(Machine(StudentMch),addaprovedSubjects)==(aa,mm)
END
&
THEORY ListOutputX IS
  List_Output(Machine(StudentMch),addaprovedSubjects)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(StudentMch),addaprovedSubjects)==(addaprovedSubjects(aa,mm))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(StudentMch),addaprovedSubjects)==(aa: STUDENT & mm: SUBJECT & aa: dom(enrolledStudents))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(StudentMch),addaprovedSubjects)==(aa: STUDENT & mm: SUBJECT & aa: dom(enrolledStudents) | aprovedSubjects:=aprovedSubjects\/{aa|->mm});
  List_Substitution(Machine(StudentMch),addaprovedSubjects)==(aprovedSubjects:=aprovedSubjects\/{aa|->mm})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(StudentMch))==(?);
  Inherited_List_Constants(Machine(StudentMch))==(?);
  List_Constants(Machine(StudentMch))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(StudentMch))==(?);
  Context_List_Defered(Machine(StudentMch))==(SUBJECT,STUDENT);
  Context_List_Sets(Machine(StudentMch))==(SUBJECT,STUDENT);
  List_Valuable_Sets(Machine(StudentMch))==(?);
  Inherited_List_Enumerated(Machine(StudentMch))==(?);
  Inherited_List_Defered(Machine(StudentMch))==(?);
  Inherited_List_Sets(Machine(StudentMch))==(?);
  List_Enumerated(Machine(StudentMch))==(?);
  List_Defered(Machine(StudentMch))==(?);
  List_Sets(Machine(StudentMch))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(StudentMch))==(?);
  Expanded_List_HiddenConstants(Machine(StudentMch))==(?);
  List_HiddenConstants(Machine(StudentMch))==(?);
  External_List_HiddenConstants(Machine(StudentMch))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(StudentMch))==(btrue);
  Context_List_Properties(Machine(StudentMch))==(SUBJECT: FIN(INTEGER) & not(SUBJECT = {}) & STUDENT: FIN(INTEGER) & not(STUDENT = {}));
  Inherited_List_Properties(Machine(StudentMch))==(btrue);
  List_Properties(Machine(StudentMch))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(StudentMch),Machine(CareerMch))==(addStudentCarrer,removeStudentCareer,addRequiredSubjects,removeRequiredSubjects,addOptionalSubjects,removeOptionalSubjects);
  Seen_Context_List_Enumerated(Machine(StudentMch))==(?);
  Seen_Context_List_Invariant(Machine(StudentMch))==(preRequirement: SUBJECT <-> SUBJECT & coordination: PROFESSOR +-> CAREER & members: PROFESSOR +-> DEPARTAMENT & career: CAREER +-> DEPARTAMENT & card(dom(coordination))<=2 & card(dom(coordination))>=0);
  Seen_Context_List_Assertions(Machine(StudentMch))==(btrue);
  Seen_Context_List_Properties(Machine(StudentMch))==(SUBJECT: FIN(INTEGER) & not(SUBJECT = {}) & STUDENT: FIN(INTEGER) & not(STUDENT = {}) & CAREER: FIN(INTEGER) & not(CAREER = {}));
  Seen_List_Constraints(Machine(StudentMch))==(btrue);
  Seen_List_Precondition(Machine(StudentMch),removeOptionalSubjects)==(cc: CAREER & mm: SUBJECT & mm: ran({cc}<|optionalSubjects));
  Seen_Expanded_List_Substitution(Machine(StudentMch),removeOptionalSubjects)==(optionalSubjects:=optionalSubjects-{cc|->mm});
  Seen_List_Precondition(Machine(StudentMch),addOptionalSubjects)==(cc: CAREER & mm: SUBJECT & mm/:ran({cc}<|requiredSubjects) & mm/:ran({cc}<|optionalSubjects) & cc: dom(career));
  Seen_Expanded_List_Substitution(Machine(StudentMch),addOptionalSubjects)==(optionalSubjects:=optionalSubjects\/{cc|->mm});
  Seen_List_Precondition(Machine(StudentMch),removeRequiredSubjects)==(cc: CAREER & mm: SUBJECT & mm: ran({cc}<|requiredSubjects));
  Seen_Expanded_List_Substitution(Machine(StudentMch),removeRequiredSubjects)==(requiredSubjects:=requiredSubjects-{cc|->mm});
  Seen_List_Precondition(Machine(StudentMch),addRequiredSubjects)==(cc: CAREER & mm: SUBJECT & mm/:ran({cc}<|optionalSubjects) & mm/:ran({cc}<|requiredSubjects) & cc: dom(career));
  Seen_Expanded_List_Substitution(Machine(StudentMch),addRequiredSubjects)==(requiredSubjects:=requiredSubjects\/{cc|->mm});
  Seen_List_Precondition(Machine(StudentMch),removeStudentCareer)==(aa: STUDENT & cc: CAREER & aa: dom(enrolledStudents) & cc: ran({aa}<|enrolledStudents));
  Seen_Expanded_List_Substitution(Machine(StudentMch),removeStudentCareer)==(enrolledStudents:=enrolledStudents-{aa|->cc});
  Seen_List_Precondition(Machine(StudentMch),addStudentCarrer)==(aa: STUDENT & cc: CAREER & aa/:dom(enrolledStudents) & cc: dom(career));
  Seen_Expanded_List_Substitution(Machine(StudentMch),addStudentCarrer)==(enrolledStudents:=enrolledStudents\/{aa|->cc});
  Seen_List_Operations(Machine(StudentMch),Machine(CareerMch))==(addStudentCarrer,removeStudentCareer,addRequiredSubjects,removeRequiredSubjects,addOptionalSubjects,removeOptionalSubjects);
  Seen_Expanded_List_Invariant(Machine(StudentMch),Machine(CareerMch))==(btrue);
  Seen_Internal_List_Operations(Machine(StudentMch),Machine(Student_ctx))==(?);
  Seen_List_Operations(Machine(StudentMch),Machine(Student_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(StudentMch),Machine(Student_ctx))==(btrue);
  Seen_Internal_List_Operations(Machine(StudentMch),Machine(SubjectMch))==(addPreRequirement,removePreRequirement);
  Seen_List_Precondition(Machine(StudentMch),removePreRequirement)==(mm: SUBJECT & pp: SUBJECT & pp: ran({mm}<|preRequirement));
  Seen_Expanded_List_Substitution(Machine(StudentMch),removePreRequirement)==(preRequirement:=preRequirement-{mm|->pp});
  Seen_List_Precondition(Machine(StudentMch),addPreRequirement)==(mm: SUBJECT & pp: SUBJECT & pp/:ran({mm}<|preRequirement));
  Seen_Expanded_List_Substitution(Machine(StudentMch),addPreRequirement)==(preRequirement:=preRequirement\/{mm|->pp});
  Seen_List_Operations(Machine(StudentMch),Machine(SubjectMch))==(addPreRequirement,removePreRequirement);
  Seen_Expanded_List_Invariant(Machine(StudentMch),Machine(SubjectMch))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(StudentMch),addaprovedSubjects)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(StudentMch)) == (? | ? | aprovedSubjects | ? | addaprovedSubjects | ? | seen(Machine(SubjectMch)),seen(Machine(Student_ctx)),seen(Machine(CareerMch)) | ? | StudentMch);
  List_Of_HiddenCst_Ids(Machine(StudentMch)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(StudentMch)) == (?);
  List_Of_VisibleVar_Ids(Machine(StudentMch)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(StudentMch)) == (?: ?);
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
  Variables(Machine(StudentMch)) == (Type(aprovedSubjects) == Mvl(SetOf(atype(STUDENT,?,?)*atype(SUBJECT,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(StudentMch)) == (Type(addaprovedSubjects) == Cst(No_type,atype(STUDENT,?,?)*atype(SUBJECT,?,?)))
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
