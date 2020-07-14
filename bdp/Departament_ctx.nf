Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Departament_ctx))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Departament_ctx))==(Machine(Departament_ctx));
  Level(Machine(Departament_ctx))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Departament_ctx)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Departament_ctx))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Departament_ctx))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Departament_ctx))==(?);
  List_Includes(Machine(Departament_ctx))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Departament_ctx))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Departament_ctx))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Departament_ctx))==(?);
  Context_List_Variables(Machine(Departament_ctx))==(?);
  Abstract_List_Variables(Machine(Departament_ctx))==(?);
  Local_List_Variables(Machine(Departament_ctx))==(?);
  List_Variables(Machine(Departament_ctx))==(?);
  External_List_Variables(Machine(Departament_ctx))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Departament_ctx))==(?);
  Abstract_List_VisibleVariables(Machine(Departament_ctx))==(?);
  External_List_VisibleVariables(Machine(Departament_ctx))==(?);
  Expanded_List_VisibleVariables(Machine(Departament_ctx))==(?);
  List_VisibleVariables(Machine(Departament_ctx))==(?);
  Internal_List_VisibleVariables(Machine(Departament_ctx))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Departament_ctx))==(btrue);
  Gluing_List_Invariant(Machine(Departament_ctx))==(btrue);
  Expanded_List_Invariant(Machine(Departament_ctx))==(btrue);
  Abstract_List_Invariant(Machine(Departament_ctx))==(btrue);
  Context_List_Invariant(Machine(Departament_ctx))==(btrue);
  List_Invariant(Machine(Departament_ctx))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Departament_ctx))==(btrue);
  Abstract_List_Assertions(Machine(Departament_ctx))==(btrue);
  Context_List_Assertions(Machine(Departament_ctx))==(btrue);
  List_Assertions(Machine(Departament_ctx))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Departament_ctx))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Departament_ctx))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Departament_ctx))==(skip);
  Context_List_Initialisation(Machine(Departament_ctx))==(skip);
  List_Initialisation(Machine(Departament_ctx))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Departament_ctx))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Departament_ctx))==(btrue);
  List_Constraints(Machine(Departament_ctx))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Departament_ctx))==(?);
  List_Operations(Machine(Departament_ctx))==(?)
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
  List_Valuable_Constants(Machine(Departament_ctx))==(?);
  Inherited_List_Constants(Machine(Departament_ctx))==(?);
  List_Constants(Machine(Departament_ctx))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Departament_ctx),DEPARTAMENT)==(?);
  Context_List_Enumerated(Machine(Departament_ctx))==(?);
  Context_List_Defered(Machine(Departament_ctx))==(?);
  Context_List_Sets(Machine(Departament_ctx))==(?);
  List_Valuable_Sets(Machine(Departament_ctx))==(DEPARTAMENT);
  Inherited_List_Enumerated(Machine(Departament_ctx))==(?);
  Inherited_List_Defered(Machine(Departament_ctx))==(?);
  Inherited_List_Sets(Machine(Departament_ctx))==(?);
  List_Enumerated(Machine(Departament_ctx))==(?);
  List_Defered(Machine(Departament_ctx))==(DEPARTAMENT);
  List_Sets(Machine(Departament_ctx))==(DEPARTAMENT)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Departament_ctx))==(?);
  Expanded_List_HiddenConstants(Machine(Departament_ctx))==(?);
  List_HiddenConstants(Machine(Departament_ctx))==(?);
  External_List_HiddenConstants(Machine(Departament_ctx))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Departament_ctx))==(btrue);
  Context_List_Properties(Machine(Departament_ctx))==(btrue);
  Inherited_List_Properties(Machine(Departament_ctx))==(btrue);
  List_Properties(Machine(Departament_ctx))==(DEPARTAMENT: FIN(INTEGER) & not(DEPARTAMENT = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Departament_ctx)) == (DEPARTAMENT | ? | ? | ? | ? | ? | ? | ? | Departament_ctx);
  List_Of_HiddenCst_Ids(Machine(Departament_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Departament_ctx)) == (?);
  List_Of_VisibleVar_Ids(Machine(Departament_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Departament_ctx)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Departament_ctx)) == (Type(DEPARTAMENT) == Cst(SetOf(atype(DEPARTAMENT,"[DEPARTAMENT","]DEPARTAMENT"))))
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
