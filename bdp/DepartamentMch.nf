Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(DepartamentMch))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(DepartamentMch))==(Machine(DepartamentMch));
  Level(Machine(DepartamentMch))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(DepartamentMch)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(DepartamentMch))==(Career_ctx,ProfessorMch,Departament_ctx)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(DepartamentMch))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(DepartamentMch))==(?);
  List_Includes(Machine(DepartamentMch))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(DepartamentMch))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(DepartamentMch))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(DepartamentMch))==(?);
  Context_List_Variables(Machine(DepartamentMch))==(?);
  Abstract_List_Variables(Machine(DepartamentMch))==(?);
  Local_List_Variables(Machine(DepartamentMch))==(career,members,coordination);
  List_Variables(Machine(DepartamentMch))==(career,members,coordination);
  External_List_Variables(Machine(DepartamentMch))==(career,members,coordination)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(DepartamentMch))==(?);
  Abstract_List_VisibleVariables(Machine(DepartamentMch))==(?);
  External_List_VisibleVariables(Machine(DepartamentMch))==(?);
  Expanded_List_VisibleVariables(Machine(DepartamentMch))==(?);
  List_VisibleVariables(Machine(DepartamentMch))==(?);
  Internal_List_VisibleVariables(Machine(DepartamentMch))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(DepartamentMch))==(btrue);
  Gluing_List_Invariant(Machine(DepartamentMch))==(btrue);
  Expanded_List_Invariant(Machine(DepartamentMch))==(btrue);
  Abstract_List_Invariant(Machine(DepartamentMch))==(btrue);
  Context_List_Invariant(Machine(DepartamentMch))==(btrue);
  List_Invariant(Machine(DepartamentMch))==(coordination: PROFESSOR +-> CAREER & members: PROFESSOR +-> DEPARTAMENT & career: CAREER +-> DEPARTAMENT & card(dom(coordination))<=2 & card(dom(coordination))>=0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(DepartamentMch))==(btrue);
  Abstract_List_Assertions(Machine(DepartamentMch))==(btrue);
  Context_List_Assertions(Machine(DepartamentMch))==(btrue);
  List_Assertions(Machine(DepartamentMch))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(DepartamentMch))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(DepartamentMch))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(DepartamentMch))==(coordination,members,career:={},{},{});
  Context_List_Initialisation(Machine(DepartamentMch))==(skip);
  List_Initialisation(Machine(DepartamentMch))==(coordination:={} || members:={} || career:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(DepartamentMch))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(DepartamentMch),Machine(Career_ctx))==(?);
  List_Instanciated_Parameters(Machine(DepartamentMch),Machine(ProfessorMch))==(?);
  List_Instanciated_Parameters(Machine(DepartamentMch),Machine(Departament_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(DepartamentMch))==(btrue);
  List_Constraints(Machine(DepartamentMch))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(DepartamentMch))==(addProfessorMember,removeProfessorMember,addCareerDepartament,removeCareerDepartament,addCoordenador,removeCoordination);
  List_Operations(Machine(DepartamentMch))==(addProfessorMember,removeProfessorMember,addCareerDepartament,removeCareerDepartament,addCoordenador,removeCoordination)
END
&
THEORY ListInputX IS
  List_Input(Machine(DepartamentMch),addProfessorMember)==(pp,dd);
  List_Input(Machine(DepartamentMch),removeProfessorMember)==(pp,dd);
  List_Input(Machine(DepartamentMch),addCareerDepartament)==(dd,cc);
  List_Input(Machine(DepartamentMch),removeCareerDepartament)==(dd,cc);
  List_Input(Machine(DepartamentMch),addCoordenador)==(pp,cc);
  List_Input(Machine(DepartamentMch),removeCoordination)==(cc,pp)
END
&
THEORY ListOutputX IS
  List_Output(Machine(DepartamentMch),addProfessorMember)==(?);
  List_Output(Machine(DepartamentMch),removeProfessorMember)==(?);
  List_Output(Machine(DepartamentMch),addCareerDepartament)==(?);
  List_Output(Machine(DepartamentMch),removeCareerDepartament)==(?);
  List_Output(Machine(DepartamentMch),addCoordenador)==(?);
  List_Output(Machine(DepartamentMch),removeCoordination)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(DepartamentMch),addProfessorMember)==(addProfessorMember(pp,dd));
  List_Header(Machine(DepartamentMch),removeProfessorMember)==(removeProfessorMember(pp,dd));
  List_Header(Machine(DepartamentMch),addCareerDepartament)==(addCareerDepartament(dd,cc));
  List_Header(Machine(DepartamentMch),removeCareerDepartament)==(removeCareerDepartament(dd,cc));
  List_Header(Machine(DepartamentMch),addCoordenador)==(addCoordenador(pp,cc));
  List_Header(Machine(DepartamentMch),removeCoordination)==(removeCoordination(cc,pp))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(DepartamentMch),addProfessorMember)==(pp: PROFESSOR & dd: DEPARTAMENT & pp/:dom(members));
  List_Precondition(Machine(DepartamentMch),removeProfessorMember)==(pp: PROFESSOR & dd: DEPARTAMENT & pp: dom(members) & dd: ran({pp}<|members));
  List_Precondition(Machine(DepartamentMch),addCareerDepartament)==(dd: DEPARTAMENT & cc: CAREER & cc/:dom(career));
  List_Precondition(Machine(DepartamentMch),removeCareerDepartament)==(dd: DEPARTAMENT & cc: CAREER & cc: dom(career) & dd: ran({cc}<|career));
  List_Precondition(Machine(DepartamentMch),addCoordenador)==(pp: PROFESSOR & cc: CAREER & pp: dom(members) & pp/:dom(coordination) & ran({cc}<|career) = ran({pp}<|members) & card(dom(coordination))<2);
  List_Precondition(Machine(DepartamentMch),removeCoordination)==(cc: CAREER & pp: PROFESSOR & cc: dom(career) & pp: dom(members) & card(dom(coordination))>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(DepartamentMch),removeCoordination)==(cc: CAREER & pp: PROFESSOR & cc: dom(career) & pp: dom(members) & card(dom(coordination))>0 | coordination:=coordination-{pp|->cc});
  Expanded_List_Substitution(Machine(DepartamentMch),addCoordenador)==(pp: PROFESSOR & cc: CAREER & pp: dom(members) & pp/:dom(coordination) & ran({cc}<|career) = ran({pp}<|members) & card(dom(coordination))<2 | coordination:=coordination\/{pp|->cc});
  Expanded_List_Substitution(Machine(DepartamentMch),removeCareerDepartament)==(dd: DEPARTAMENT & cc: CAREER & cc: dom(career) & dd: ran({cc}<|career) | career:=career-{cc|->dd});
  Expanded_List_Substitution(Machine(DepartamentMch),addCareerDepartament)==(dd: DEPARTAMENT & cc: CAREER & cc/:dom(career) | career:=career\/{cc|->dd});
  Expanded_List_Substitution(Machine(DepartamentMch),removeProfessorMember)==(pp: PROFESSOR & dd: DEPARTAMENT & pp: dom(members) & dd: ran({pp}<|members) | members:=members-{pp|->dd});
  Expanded_List_Substitution(Machine(DepartamentMch),addProfessorMember)==(pp: PROFESSOR & dd: DEPARTAMENT & pp/:dom(members) | members:=members\/{pp|->dd});
  List_Substitution(Machine(DepartamentMch),addProfessorMember)==(members:=members\/{pp|->dd});
  List_Substitution(Machine(DepartamentMch),removeProfessorMember)==(members:=members-{pp|->dd});
  List_Substitution(Machine(DepartamentMch),addCareerDepartament)==(career:=career\/{cc|->dd});
  List_Substitution(Machine(DepartamentMch),removeCareerDepartament)==(career:=career-{cc|->dd});
  List_Substitution(Machine(DepartamentMch),addCoordenador)==(coordination:=coordination\/{pp|->cc});
  List_Substitution(Machine(DepartamentMch),removeCoordination)==(coordination:=coordination-{pp|->cc})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(DepartamentMch))==(?);
  Inherited_List_Constants(Machine(DepartamentMch))==(?);
  List_Constants(Machine(DepartamentMch))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(DepartamentMch))==(?);
  Context_List_Defered(Machine(DepartamentMch))==(CAREER,PROFESSOR,DEPARTAMENT);
  Context_List_Sets(Machine(DepartamentMch))==(CAREER,PROFESSOR,DEPARTAMENT);
  List_Valuable_Sets(Machine(DepartamentMch))==(?);
  Inherited_List_Enumerated(Machine(DepartamentMch))==(?);
  Inherited_List_Defered(Machine(DepartamentMch))==(?);
  Inherited_List_Sets(Machine(DepartamentMch))==(?);
  List_Enumerated(Machine(DepartamentMch))==(?);
  List_Defered(Machine(DepartamentMch))==(?);
  List_Sets(Machine(DepartamentMch))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(DepartamentMch))==(?);
  Expanded_List_HiddenConstants(Machine(DepartamentMch))==(?);
  List_HiddenConstants(Machine(DepartamentMch))==(?);
  External_List_HiddenConstants(Machine(DepartamentMch))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(DepartamentMch))==(btrue);
  Context_List_Properties(Machine(DepartamentMch))==(CAREER: FIN(INTEGER) & not(CAREER = {}) & PROFESSOR: FIN(INTEGER) & not(PROFESSOR = {}) & DEPARTAMENT: FIN(INTEGER) & not(DEPARTAMENT = {}));
  Inherited_List_Properties(Machine(DepartamentMch))==(btrue);
  List_Properties(Machine(DepartamentMch))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(DepartamentMch),Machine(Departament_ctx))==(?);
  Seen_Context_List_Enumerated(Machine(DepartamentMch))==(?);
  Seen_Context_List_Invariant(Machine(DepartamentMch))==(btrue);
  Seen_Context_List_Assertions(Machine(DepartamentMch))==(btrue);
  Seen_Context_List_Properties(Machine(DepartamentMch))==(btrue);
  Seen_List_Constraints(Machine(DepartamentMch))==(btrue);
  Seen_List_Operations(Machine(DepartamentMch),Machine(Departament_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(DepartamentMch),Machine(Departament_ctx))==(btrue);
  Seen_Internal_List_Operations(Machine(DepartamentMch),Machine(ProfessorMch))==(?);
  Seen_List_Operations(Machine(DepartamentMch),Machine(ProfessorMch))==(?);
  Seen_Expanded_List_Invariant(Machine(DepartamentMch),Machine(ProfessorMch))==(btrue);
  Seen_Internal_List_Operations(Machine(DepartamentMch),Machine(Career_ctx))==(?);
  Seen_List_Operations(Machine(DepartamentMch),Machine(Career_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(DepartamentMch),Machine(Career_ctx))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(DepartamentMch),addProfessorMember)==(?);
  List_ANY_Var(Machine(DepartamentMch),removeProfessorMember)==(?);
  List_ANY_Var(Machine(DepartamentMch),addCareerDepartament)==(?);
  List_ANY_Var(Machine(DepartamentMch),removeCareerDepartament)==(?);
  List_ANY_Var(Machine(DepartamentMch),addCoordenador)==(?);
  List_ANY_Var(Machine(DepartamentMch),removeCoordination)==(?)
END
&
THEORY ListOfIdsX IS
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
  List_Of_Ids_SeenBNU(Machine(Career_ctx)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(DepartamentMch)) == (Type(career) == Mvl(SetOf(atype(CAREER,?,?)*atype(DEPARTAMENT,?,?)));Type(members) == Mvl(SetOf(atype(PROFESSOR,?,?)*atype(DEPARTAMENT,?,?)));Type(coordination) == Mvl(SetOf(atype(PROFESSOR,?,?)*atype(CAREER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(DepartamentMch)) == (Type(removeCoordination) == Cst(No_type,atype(CAREER,?,?)*atype(PROFESSOR,?,?));Type(addCoordenador) == Cst(No_type,atype(PROFESSOR,?,?)*atype(CAREER,?,?));Type(removeCareerDepartament) == Cst(No_type,atype(DEPARTAMENT,?,?)*atype(CAREER,?,?));Type(addCareerDepartament) == Cst(No_type,atype(DEPARTAMENT,?,?)*atype(CAREER,?,?));Type(removeProfessorMember) == Cst(No_type,atype(PROFESSOR,?,?)*atype(DEPARTAMENT,?,?));Type(addProfessorMember) == Cst(No_type,atype(PROFESSOR,?,?)*atype(DEPARTAMENT,?,?)))
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
