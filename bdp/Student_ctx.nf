Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Student_ctx))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Student_ctx))==(Machine(Student_ctx));
  Level(Machine(Student_ctx))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Student_ctx)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Student_ctx))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Student_ctx))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Student_ctx))==(?);
  List_Includes(Machine(Student_ctx))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Student_ctx))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Student_ctx))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Student_ctx))==(?);
  Context_List_Variables(Machine(Student_ctx))==(?);
  Abstract_List_Variables(Machine(Student_ctx))==(?);
  Local_List_Variables(Machine(Student_ctx))==(?);
  List_Variables(Machine(Student_ctx))==(?);
  External_List_Variables(Machine(Student_ctx))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Student_ctx))==(?);
  Abstract_List_VisibleVariables(Machine(Student_ctx))==(?);
  External_List_VisibleVariables(Machine(Student_ctx))==(?);
  Expanded_List_VisibleVariables(Machine(Student_ctx))==(?);
  List_VisibleVariables(Machine(Student_ctx))==(?);
  Internal_List_VisibleVariables(Machine(Student_ctx))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Student_ctx))==(btrue);
  Gluing_List_Invariant(Machine(Student_ctx))==(btrue);
  Expanded_List_Invariant(Machine(Student_ctx))==(btrue);
  Abstract_List_Invariant(Machine(Student_ctx))==(btrue);
  Context_List_Invariant(Machine(Student_ctx))==(btrue);
  List_Invariant(Machine(Student_ctx))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Student_ctx))==(btrue);
  Abstract_List_Assertions(Machine(Student_ctx))==(btrue);
  Context_List_Assertions(Machine(Student_ctx))==(btrue);
  List_Assertions(Machine(Student_ctx))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Student_ctx))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Student_ctx))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Student_ctx))==(skip);
  Context_List_Initialisation(Machine(Student_ctx))==(skip);
  List_Initialisation(Machine(Student_ctx))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Student_ctx))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Student_ctx))==(btrue);
  List_Constraints(Machine(Student_ctx))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Student_ctx))==(?);
  List_Operations(Machine(Student_ctx))==(?)
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
  List_Valuable_Constants(Machine(Student_ctx))==(?);
  Inherited_List_Constants(Machine(Student_ctx))==(?);
  List_Constants(Machine(Student_ctx))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Student_ctx),STUDENT)==(?);
  Context_List_Enumerated(Machine(Student_ctx))==(?);
  Context_List_Defered(Machine(Student_ctx))==(?);
  Context_List_Sets(Machine(Student_ctx))==(?);
  List_Valuable_Sets(Machine(Student_ctx))==(STUDENT);
  Inherited_List_Enumerated(Machine(Student_ctx))==(?);
  Inherited_List_Defered(Machine(Student_ctx))==(?);
  Inherited_List_Sets(Machine(Student_ctx))==(?);
  List_Enumerated(Machine(Student_ctx))==(?);
  List_Defered(Machine(Student_ctx))==(STUDENT);
  List_Sets(Machine(Student_ctx))==(STUDENT)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Student_ctx))==(?);
  Expanded_List_HiddenConstants(Machine(Student_ctx))==(?);
  List_HiddenConstants(Machine(Student_ctx))==(?);
  External_List_HiddenConstants(Machine(Student_ctx))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Student_ctx))==(btrue);
  Context_List_Properties(Machine(Student_ctx))==(btrue);
  Inherited_List_Properties(Machine(Student_ctx))==(btrue);
  List_Properties(Machine(Student_ctx))==(STUDENT: FIN(INTEGER) & not(STUDENT = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Student_ctx)) == (STUDENT | ? | ? | ? | ? | ? | ? | ? | Student_ctx);
  List_Of_HiddenCst_Ids(Machine(Student_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Student_ctx)) == (?);
  List_Of_VisibleVar_Ids(Machine(Student_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Student_ctx)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Student_ctx)) == (Type(STUDENT) == Cst(SetOf(atype(STUDENT,"[STUDENT","]STUDENT"))))
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
