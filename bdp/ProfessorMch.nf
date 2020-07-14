Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(ProfessorMch))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(ProfessorMch))==(Machine(ProfessorMch));
  Level(Machine(ProfessorMch))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(ProfessorMch)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(ProfessorMch))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(ProfessorMch))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(ProfessorMch))==(?);
  List_Includes(Machine(ProfessorMch))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(ProfessorMch))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(ProfessorMch))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(ProfessorMch))==(?);
  Context_List_Variables(Machine(ProfessorMch))==(?);
  Abstract_List_Variables(Machine(ProfessorMch))==(?);
  Local_List_Variables(Machine(ProfessorMch))==(?);
  List_Variables(Machine(ProfessorMch))==(?);
  External_List_Variables(Machine(ProfessorMch))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(ProfessorMch))==(?);
  Abstract_List_VisibleVariables(Machine(ProfessorMch))==(?);
  External_List_VisibleVariables(Machine(ProfessorMch))==(?);
  Expanded_List_VisibleVariables(Machine(ProfessorMch))==(?);
  List_VisibleVariables(Machine(ProfessorMch))==(?);
  Internal_List_VisibleVariables(Machine(ProfessorMch))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(ProfessorMch))==(btrue);
  Gluing_List_Invariant(Machine(ProfessorMch))==(btrue);
  Expanded_List_Invariant(Machine(ProfessorMch))==(btrue);
  Abstract_List_Invariant(Machine(ProfessorMch))==(btrue);
  Context_List_Invariant(Machine(ProfessorMch))==(btrue);
  List_Invariant(Machine(ProfessorMch))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(ProfessorMch))==(btrue);
  Abstract_List_Assertions(Machine(ProfessorMch))==(btrue);
  Context_List_Assertions(Machine(ProfessorMch))==(btrue);
  List_Assertions(Machine(ProfessorMch))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(ProfessorMch))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(ProfessorMch))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(ProfessorMch))==(skip);
  Context_List_Initialisation(Machine(ProfessorMch))==(skip);
  List_Initialisation(Machine(ProfessorMch))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(ProfessorMch))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(ProfessorMch))==(btrue);
  List_Constraints(Machine(ProfessorMch))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(ProfessorMch))==(?);
  List_Operations(Machine(ProfessorMch))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(ProfessorMch))==(?);
  Inherited_List_Constants(Machine(ProfessorMch))==(?);
  List_Constants(Machine(ProfessorMch))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(ProfessorMch),PROFESSOR)==(?);
  Context_List_Enumerated(Machine(ProfessorMch))==(?);
  Context_List_Defered(Machine(ProfessorMch))==(?);
  Context_List_Sets(Machine(ProfessorMch))==(?);
  List_Valuable_Sets(Machine(ProfessorMch))==(PROFESSOR);
  Inherited_List_Enumerated(Machine(ProfessorMch))==(?);
  Inherited_List_Defered(Machine(ProfessorMch))==(?);
  Inherited_List_Sets(Machine(ProfessorMch))==(?);
  List_Enumerated(Machine(ProfessorMch))==(?);
  List_Defered(Machine(ProfessorMch))==(PROFESSOR);
  List_Sets(Machine(ProfessorMch))==(PROFESSOR)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(ProfessorMch))==(?);
  Expanded_List_HiddenConstants(Machine(ProfessorMch))==(?);
  List_HiddenConstants(Machine(ProfessorMch))==(?);
  External_List_HiddenConstants(Machine(ProfessorMch))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(ProfessorMch))==(btrue);
  Context_List_Properties(Machine(ProfessorMch))==(btrue);
  Inherited_List_Properties(Machine(ProfessorMch))==(btrue);
  List_Properties(Machine(ProfessorMch))==(PROFESSOR: FIN(INTEGER) & not(PROFESSOR = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(ProfessorMch)) == (PROFESSOR | ? | ? | ? | ? | ? | ? | ? | ProfessorMch);
  List_Of_HiddenCst_Ids(Machine(ProfessorMch)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ProfessorMch)) == (?);
  List_Of_VisibleVar_Ids(Machine(ProfessorMch)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ProfessorMch)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(ProfessorMch)) == (Type(PROFESSOR) == Cst(SetOf(atype(PROFESSOR,"[PROFESSOR","]PROFESSOR"))))
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
