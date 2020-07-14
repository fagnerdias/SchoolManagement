Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Career_ctx))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Career_ctx))==(Machine(Career_ctx));
  Level(Machine(Career_ctx))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Career_ctx)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Career_ctx))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Career_ctx))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Career_ctx))==(?);
  List_Includes(Machine(Career_ctx))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Career_ctx))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Career_ctx))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Career_ctx))==(?);
  Context_List_Variables(Machine(Career_ctx))==(?);
  Abstract_List_Variables(Machine(Career_ctx))==(?);
  Local_List_Variables(Machine(Career_ctx))==(?);
  List_Variables(Machine(Career_ctx))==(?);
  External_List_Variables(Machine(Career_ctx))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Career_ctx))==(?);
  Abstract_List_VisibleVariables(Machine(Career_ctx))==(?);
  External_List_VisibleVariables(Machine(Career_ctx))==(?);
  Expanded_List_VisibleVariables(Machine(Career_ctx))==(?);
  List_VisibleVariables(Machine(Career_ctx))==(?);
  Internal_List_VisibleVariables(Machine(Career_ctx))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Career_ctx))==(btrue);
  Gluing_List_Invariant(Machine(Career_ctx))==(btrue);
  Expanded_List_Invariant(Machine(Career_ctx))==(btrue);
  Abstract_List_Invariant(Machine(Career_ctx))==(btrue);
  Context_List_Invariant(Machine(Career_ctx))==(btrue);
  List_Invariant(Machine(Career_ctx))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Career_ctx))==(btrue);
  Abstract_List_Assertions(Machine(Career_ctx))==(btrue);
  Context_List_Assertions(Machine(Career_ctx))==(btrue);
  List_Assertions(Machine(Career_ctx))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Career_ctx))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Career_ctx))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Career_ctx))==(skip);
  Context_List_Initialisation(Machine(Career_ctx))==(skip);
  List_Initialisation(Machine(Career_ctx))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Career_ctx))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Career_ctx))==(btrue);
  List_Constraints(Machine(Career_ctx))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Career_ctx))==(?);
  List_Operations(Machine(Career_ctx))==(?)
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
  List_Valuable_Constants(Machine(Career_ctx))==(?);
  Inherited_List_Constants(Machine(Career_ctx))==(?);
  List_Constants(Machine(Career_ctx))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Career_ctx),CAREER)==(?);
  Context_List_Enumerated(Machine(Career_ctx))==(?);
  Context_List_Defered(Machine(Career_ctx))==(?);
  Context_List_Sets(Machine(Career_ctx))==(?);
  List_Valuable_Sets(Machine(Career_ctx))==(CAREER);
  Inherited_List_Enumerated(Machine(Career_ctx))==(?);
  Inherited_List_Defered(Machine(Career_ctx))==(?);
  Inherited_List_Sets(Machine(Career_ctx))==(?);
  List_Enumerated(Machine(Career_ctx))==(?);
  List_Defered(Machine(Career_ctx))==(CAREER);
  List_Sets(Machine(Career_ctx))==(CAREER)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Career_ctx))==(?);
  Expanded_List_HiddenConstants(Machine(Career_ctx))==(?);
  List_HiddenConstants(Machine(Career_ctx))==(?);
  External_List_HiddenConstants(Machine(Career_ctx))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Career_ctx))==(btrue);
  Context_List_Properties(Machine(Career_ctx))==(btrue);
  Inherited_List_Properties(Machine(Career_ctx))==(btrue);
  List_Properties(Machine(Career_ctx))==(CAREER: FIN(INTEGER) & not(CAREER = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Career_ctx)) == (CAREER | ? | ? | ? | ? | ? | ? | ? | Career_ctx);
  List_Of_HiddenCst_Ids(Machine(Career_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Career_ctx)) == (?);
  List_Of_VisibleVar_Ids(Machine(Career_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Career_ctx)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Career_ctx)) == (Type(CAREER) == Cst(SetOf(atype(CAREER,"[CAREER","]CAREER"))))
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
