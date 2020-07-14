Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(SubjectMch))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(SubjectMch))==(Machine(SubjectMch));
  Level(Machine(SubjectMch))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(SubjectMch)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(SubjectMch))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(SubjectMch))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(SubjectMch))==(?);
  List_Includes(Machine(SubjectMch))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(SubjectMch))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(SubjectMch))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(SubjectMch))==(?);
  Context_List_Variables(Machine(SubjectMch))==(?);
  Abstract_List_Variables(Machine(SubjectMch))==(?);
  Local_List_Variables(Machine(SubjectMch))==(preRequirement);
  List_Variables(Machine(SubjectMch))==(preRequirement);
  External_List_Variables(Machine(SubjectMch))==(preRequirement)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(SubjectMch))==(?);
  Abstract_List_VisibleVariables(Machine(SubjectMch))==(?);
  External_List_VisibleVariables(Machine(SubjectMch))==(?);
  Expanded_List_VisibleVariables(Machine(SubjectMch))==(?);
  List_VisibleVariables(Machine(SubjectMch))==(?);
  Internal_List_VisibleVariables(Machine(SubjectMch))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(SubjectMch))==(btrue);
  Gluing_List_Invariant(Machine(SubjectMch))==(btrue);
  Expanded_List_Invariant(Machine(SubjectMch))==(btrue);
  Abstract_List_Invariant(Machine(SubjectMch))==(btrue);
  Context_List_Invariant(Machine(SubjectMch))==(btrue);
  List_Invariant(Machine(SubjectMch))==(preRequirement: SUBJECT <-> SUBJECT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(SubjectMch))==(btrue);
  Abstract_List_Assertions(Machine(SubjectMch))==(btrue);
  Context_List_Assertions(Machine(SubjectMch))==(btrue);
  List_Assertions(Machine(SubjectMch))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(SubjectMch))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(SubjectMch))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(SubjectMch))==(preRequirement:={});
  Context_List_Initialisation(Machine(SubjectMch))==(skip);
  List_Initialisation(Machine(SubjectMch))==(preRequirement:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(SubjectMch))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(SubjectMch))==(btrue);
  List_Constraints(Machine(SubjectMch))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(SubjectMch))==(addPreRequirement,removePreRequirement);
  List_Operations(Machine(SubjectMch))==(addPreRequirement,removePreRequirement)
END
&
THEORY ListInputX IS
  List_Input(Machine(SubjectMch),addPreRequirement)==(mm,pp);
  List_Input(Machine(SubjectMch),removePreRequirement)==(mm,pp)
END
&
THEORY ListOutputX IS
  List_Output(Machine(SubjectMch),addPreRequirement)==(?);
  List_Output(Machine(SubjectMch),removePreRequirement)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(SubjectMch),addPreRequirement)==(addPreRequirement(mm,pp));
  List_Header(Machine(SubjectMch),removePreRequirement)==(removePreRequirement(mm,pp))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(SubjectMch),addPreRequirement)==(mm: SUBJECT & pp: SUBJECT & pp/:ran({mm}<|preRequirement));
  List_Precondition(Machine(SubjectMch),removePreRequirement)==(mm: SUBJECT & pp: SUBJECT & pp: ran({mm}<|preRequirement))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(SubjectMch),removePreRequirement)==(mm: SUBJECT & pp: SUBJECT & pp: ran({mm}<|preRequirement) | preRequirement:=preRequirement-{mm|->pp});
  Expanded_List_Substitution(Machine(SubjectMch),addPreRequirement)==(mm: SUBJECT & pp: SUBJECT & pp/:ran({mm}<|preRequirement) | preRequirement:=preRequirement\/{mm|->pp});
  List_Substitution(Machine(SubjectMch),addPreRequirement)==(preRequirement:=preRequirement\/{mm|->pp});
  List_Substitution(Machine(SubjectMch),removePreRequirement)==(preRequirement:=preRequirement-{mm|->pp})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(SubjectMch))==(?);
  Inherited_List_Constants(Machine(SubjectMch))==(?);
  List_Constants(Machine(SubjectMch))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(SubjectMch),SUBJECT)==(?);
  Context_List_Enumerated(Machine(SubjectMch))==(?);
  Context_List_Defered(Machine(SubjectMch))==(?);
  Context_List_Sets(Machine(SubjectMch))==(?);
  List_Valuable_Sets(Machine(SubjectMch))==(SUBJECT);
  Inherited_List_Enumerated(Machine(SubjectMch))==(?);
  Inherited_List_Defered(Machine(SubjectMch))==(?);
  Inherited_List_Sets(Machine(SubjectMch))==(?);
  List_Enumerated(Machine(SubjectMch))==(?);
  List_Defered(Machine(SubjectMch))==(SUBJECT);
  List_Sets(Machine(SubjectMch))==(SUBJECT)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(SubjectMch))==(?);
  Expanded_List_HiddenConstants(Machine(SubjectMch))==(?);
  List_HiddenConstants(Machine(SubjectMch))==(?);
  External_List_HiddenConstants(Machine(SubjectMch))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(SubjectMch))==(btrue);
  Context_List_Properties(Machine(SubjectMch))==(btrue);
  Inherited_List_Properties(Machine(SubjectMch))==(btrue);
  List_Properties(Machine(SubjectMch))==(SUBJECT: FIN(INTEGER) & not(SUBJECT = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(SubjectMch),addPreRequirement)==(?);
  List_ANY_Var(Machine(SubjectMch),removePreRequirement)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(SubjectMch)) == (SUBJECT | ? | preRequirement | ? | addPreRequirement,removePreRequirement | ? | ? | ? | SubjectMch);
  List_Of_HiddenCst_Ids(Machine(SubjectMch)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SubjectMch)) == (?);
  List_Of_VisibleVar_Ids(Machine(SubjectMch)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SubjectMch)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(SubjectMch)) == (Type(SUBJECT) == Cst(SetOf(atype(SUBJECT,"[SUBJECT","]SUBJECT"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(SubjectMch)) == (Type(preRequirement) == Mvl(SetOf(atype(SUBJECT,?,?)*atype(SUBJECT,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(SubjectMch)) == (Type(removePreRequirement) == Cst(No_type,atype(SUBJECT,?,?)*atype(SUBJECT,?,?));Type(addPreRequirement) == Cst(No_type,atype(SUBJECT,?,?)*atype(SUBJECT,?,?)))
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
