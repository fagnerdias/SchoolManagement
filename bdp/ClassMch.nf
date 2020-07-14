Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(ClassMch))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(ClassMch))==(Machine(ClassMch));
  Level(Machine(ClassMch))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(ClassMch)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(ClassMch))==(SubjectMch,ProfessorMch,Student_ctx,CareerMch,DepartamentMch)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(ClassMch))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(ClassMch))==(StudentMch);
  List_Includes(Machine(ClassMch))==(StudentMch)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(ClassMch))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(ClassMch))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(ClassMch))==(?);
  Context_List_Variables(Machine(ClassMch))==(?);
  Abstract_List_Variables(Machine(ClassMch))==(?);
  Local_List_Variables(Machine(ClassMch))==(qntExams,avgScore,classA,classB);
  List_Variables(Machine(ClassMch))==(qntExams,avgScore,classA,classB,aprovedSubjects);
  External_List_Variables(Machine(ClassMch))==(qntExams,avgScore,classA,classB,aprovedSubjects)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(ClassMch))==(?);
  Abstract_List_VisibleVariables(Machine(ClassMch))==(?);
  External_List_VisibleVariables(Machine(ClassMch))==(?);
  Expanded_List_VisibleVariables(Machine(ClassMch))==(?);
  List_VisibleVariables(Machine(ClassMch))==(?);
  Internal_List_VisibleVariables(Machine(ClassMch))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(ClassMch))==(btrue);
  Gluing_List_Invariant(Machine(ClassMch))==(btrue);
  Abstract_List_Invariant(Machine(ClassMch))==(btrue);
  Expanded_List_Invariant(Machine(ClassMch))==(aprovedSubjects: STUDENT <-> SUBJECT);
  Context_List_Invariant(Machine(ClassMch))==(preRequirement: SUBJECT <-> SUBJECT & requiredSubjects: CAREER <-> SUBJECT & optionalSubjects: CAREER <-> SUBJECT & requiredSubjects/\optionalSubjects = {} & enrolledStudents: STUDENT +-> CAREER & coordination: PROFESSOR +-> CAREER & members: PROFESSOR +-> DEPARTAMENT & career: CAREER +-> DEPARTAMENT & card(dom(coordination))<=2 & card(dom(coordination))>=0);
  List_Invariant(Machine(ClassMch))==(classB: PROFESSOR <-> SUBJECT & classA: STUDENT <-> classB & avgScore: STUDENT --> 0..30 & qntExams: STUDENT --> {0,1,2,3})
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(ClassMch))==(btrue);
  Expanded_List_Assertions(Machine(ClassMch))==(btrue);
  Context_List_Assertions(Machine(ClassMch))==(btrue);
  List_Assertions(Machine(ClassMch))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(ClassMch))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(ClassMch))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(ClassMch))==(aprovedSubjects:={};classB,classA,avgScore,qntExams:={},{},STUDENT*{0},STUDENT*{0});
  Context_List_Initialisation(Machine(ClassMch))==(skip);
  List_Initialisation(Machine(ClassMch))==(classB:={} || classA:={} || avgScore:=STUDENT*{0} || qntExams:=STUDENT*{0})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(ClassMch))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(ClassMch),Machine(StudentMch))==(?);
  List_Instanciated_Parameters(Machine(ClassMch),Machine(SubjectMch))==(?);
  List_Instanciated_Parameters(Machine(ClassMch),Machine(ProfessorMch))==(?);
  List_Instanciated_Parameters(Machine(ClassMch),Machine(Student_ctx))==(?);
  List_Instanciated_Parameters(Machine(ClassMch),Machine(CareerMch))==(?);
  List_Instanciated_Parameters(Machine(ClassMch),Machine(DepartamentMch))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(ClassMch),Machine(StudentMch))==(btrue);
  List_Context_Constraints(Machine(ClassMch))==(btrue);
  List_Constraints(Machine(ClassMch))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(ClassMch))==(createClass,removeClass,addStudentClass,removeStudentClass,addScoreStudent,avgStudent,qntExamsStudent,avaliarStudent);
  List_Operations(Machine(ClassMch))==(createClass,removeClass,addStudentClass,removeStudentClass,addScoreStudent,avgStudent,qntExamsStudent,avaliarStudent)
END
&
THEORY ListInputX IS
  List_Input(Machine(ClassMch),createClass)==(pp,mm);
  List_Input(Machine(ClassMch),removeClass)==(pp,mm);
  List_Input(Machine(ClassMch),addStudentClass)==(aa,pp,mm);
  List_Input(Machine(ClassMch),removeStudentClass)==(aa,pp,mm);
  List_Input(Machine(ClassMch),addScoreStudent)==(aa,nn);
  List_Input(Machine(ClassMch),avgStudent)==(aa);
  List_Input(Machine(ClassMch),qntExamsStudent)==(aa,pp,mm);
  List_Input(Machine(ClassMch),avaliarStudent)==(aa,pp,mm)
END
&
THEORY ListOutputX IS
  List_Output(Machine(ClassMch),createClass)==(?);
  List_Output(Machine(ClassMch),removeClass)==(?);
  List_Output(Machine(ClassMch),addStudentClass)==(?);
  List_Output(Machine(ClassMch),removeStudentClass)==(?);
  List_Output(Machine(ClassMch),addScoreStudent)==(rr);
  List_Output(Machine(ClassMch),avgStudent)==(rr);
  List_Output(Machine(ClassMch),qntExamsStudent)==(rr);
  List_Output(Machine(ClassMch),avaliarStudent)==(rr)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(ClassMch),createClass)==(createClass(pp,mm));
  List_Header(Machine(ClassMch),removeClass)==(removeClass(pp,mm));
  List_Header(Machine(ClassMch),addStudentClass)==(addStudentClass(aa,pp,mm));
  List_Header(Machine(ClassMch),removeStudentClass)==(removeStudentClass(aa,pp,mm));
  List_Header(Machine(ClassMch),addScoreStudent)==(rr <-- addScoreStudent(aa,nn));
  List_Header(Machine(ClassMch),avgStudent)==(rr <-- avgStudent(aa));
  List_Header(Machine(ClassMch),qntExamsStudent)==(rr <-- qntExamsStudent(aa,pp,mm));
  List_Header(Machine(ClassMch),avaliarStudent)==(rr <-- avaliarStudent(aa,pp,mm))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(ClassMch),createClass)==(pp: PROFESSOR & mm: SUBJECT & mm: ran(requiredSubjects)\/ran(optionalSubjects) & pp: dom(members) & pp|->mm/:classB);
  List_Precondition(Machine(ClassMch),removeClass)==(pp: PROFESSOR & mm: SUBJECT & mm: ran({pp}<|classB) & pp|->mm: classB & classA|>{pp|->mm} = {});
  List_Precondition(Machine(ClassMch),addStudentClass)==(aa: STUDENT & pp: PROFESSOR & mm: SUBJECT & pp: dom(classB) & pp|->mm: classB & aa: dom(enrolledStudents) & mm: ran(classB) & ran({mm}<|preRequirement): POW(ran({aa}<|aprovedSubjects)));
  List_Precondition(Machine(ClassMch),removeStudentClass)==(aa: STUDENT & pp: PROFESSOR & mm: SUBJECT & {pp|->mm}: POW(ran(classA)) & aa: dom(enrolledStudents));
  List_Precondition(Machine(ClassMch),addScoreStudent)==(aa: STUDENT & nn: NAT & nn: 0..10 & aa: dom(classA) & qntExams(aa)<3);
  List_Precondition(Machine(ClassMch),avgStudent)==(aa: STUDENT & aa: dom(classA) & avgScore(aa)>0 & qntExams(aa)>0);
  List_Precondition(Machine(ClassMch),qntExamsStudent)==(aa: STUDENT & pp: PROFESSOR & mm: SUBJECT & {pp|->mm}: POW(ran(classA)));
  List_Precondition(Machine(ClassMch),avaliarStudent)==(aa: STUDENT & pp: PROFESSOR & mm: SUBJECT & pp: dom(ran({aa}<|classA)) & aa: dom(classA) & mm: ran(ran({aa}<|classA)) & qntExams(aa) = 3)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(ClassMch),avaliarStudent)==(aa: STUDENT & pp: PROFESSOR & mm: SUBJECT & pp: dom(ran({aa}<|classA)) & aa: dom(classA) & mm: ran(ran({aa}<|classA)) & qntExams(aa) = 3 | avgScore(aa)/qntExams(aa)>=7 ==> (aa: STUDENT & mm: SUBJECT & aa: dom(enrolledStudents) | rr,classA:=TRUE,classA-{aa|->(pp|->mm)} || aprovedSubjects:=aprovedSubjects\/{aa|->mm}) [] not(avgScore(aa)/qntExams(aa)>=7) ==> rr,classA:=FALSE,classA-{aa|->(pp|->mm)});
  Expanded_List_Substitution(Machine(ClassMch),qntExamsStudent)==(aa: STUDENT & pp: PROFESSOR & mm: SUBJECT & {pp|->mm}: POW(ran(classA)) | rr:=qntExams(aa));
  Expanded_List_Substitution(Machine(ClassMch),avgStudent)==(aa: STUDENT & aa: dom(classA) & avgScore(aa)>0 & qntExams(aa)>0 | rr:=avgScore(aa)/qntExams(aa));
  Expanded_List_Substitution(Machine(ClassMch),addScoreStudent)==(aa: STUDENT & nn: NAT & nn: 0..10 & aa: dom(classA) & qntExams(aa)<3 | avgScore,qntExams:=avgScore<+{aa|->avgScore(aa)+nn},qntExams<+{aa|->qntExams(aa)+1} || (qntExams(aa) = 0 ==> rr:=0 [] not(qntExams(aa) = 0) ==> rr:=avgScore(aa)/qntExams(aa)));
  Expanded_List_Substitution(Machine(ClassMch),removeStudentClass)==(aa: STUDENT & pp: PROFESSOR & mm: SUBJECT & {pp|->mm}: POW(ran(classA)) & aa: dom(enrolledStudents) | classA:=classA-{aa|->(pp|->mm)});
  Expanded_List_Substitution(Machine(ClassMch),addStudentClass)==(aa: STUDENT & pp: PROFESSOR & mm: SUBJECT & pp: dom(classB) & pp|->mm: classB & aa: dom(enrolledStudents) & mm: ran(classB) & ran({mm}<|preRequirement): POW(ran({aa}<|aprovedSubjects)) | classA:=classA\/{aa|->(pp|->mm)});
  Expanded_List_Substitution(Machine(ClassMch),removeClass)==(pp: PROFESSOR & mm: SUBJECT & mm: ran({pp}<|classB) & pp|->mm: classB & classA|>{pp|->mm} = {} | classB:=classB-{pp|->mm});
  Expanded_List_Substitution(Machine(ClassMch),createClass)==(pp: PROFESSOR & mm: SUBJECT & mm: ran(requiredSubjects)\/ran(optionalSubjects) & pp: dom(members) & pp|->mm/:classB | classB:=classB\/{pp|->mm});
  List_Substitution(Machine(ClassMch),createClass)==(classB:=classB\/{pp|->mm});
  List_Substitution(Machine(ClassMch),removeClass)==(classB:=classB-{pp|->mm});
  List_Substitution(Machine(ClassMch),addStudentClass)==(classA:=classA\/{aa|->(pp|->mm)});
  List_Substitution(Machine(ClassMch),removeStudentClass)==(classA:=classA-{aa|->(pp|->mm)});
  List_Substitution(Machine(ClassMch),addScoreStudent)==(avgScore:=avgScore<+{aa|->avgScore(aa)+nn} || qntExams:=qntExams<+{aa|->qntExams(aa)+1} || IF qntExams(aa) = 0 THEN rr:=0 ELSE rr:=avgScore(aa)/qntExams(aa) END);
  List_Substitution(Machine(ClassMch),avgStudent)==(rr:=avgScore(aa)/qntExams(aa));
  List_Substitution(Machine(ClassMch),qntExamsStudent)==(rr:=qntExams(aa));
  List_Substitution(Machine(ClassMch),avaliarStudent)==(IF avgScore(aa)/qntExams(aa)>=7 THEN rr:=TRUE || classA:=classA-{aa|->(pp|->mm)} || addaprovedSubjects(aa,mm) ELSE rr:=FALSE || classA:=classA-{aa|->(pp|->mm)} END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(ClassMch))==(?);
  Inherited_List_Constants(Machine(ClassMch))==(?);
  List_Constants(Machine(ClassMch))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(ClassMch))==(?);
  Context_List_Defered(Machine(ClassMch))==(SUBJECT,PROFESSOR,STUDENT);
  Context_List_Sets(Machine(ClassMch))==(SUBJECT,PROFESSOR,STUDENT);
  List_Valuable_Sets(Machine(ClassMch))==(?);
  Inherited_List_Enumerated(Machine(ClassMch))==(?);
  Inherited_List_Defered(Machine(ClassMch))==(?);
  Inherited_List_Sets(Machine(ClassMch))==(?);
  List_Enumerated(Machine(ClassMch))==(?);
  List_Defered(Machine(ClassMch))==(?);
  List_Sets(Machine(ClassMch))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(ClassMch))==(?);
  Expanded_List_HiddenConstants(Machine(ClassMch))==(?);
  List_HiddenConstants(Machine(ClassMch))==(?);
  External_List_HiddenConstants(Machine(ClassMch))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(ClassMch))==(btrue);
  Context_List_Properties(Machine(ClassMch))==(SUBJECT: FIN(INTEGER) & not(SUBJECT = {}) & PROFESSOR: FIN(INTEGER) & not(PROFESSOR = {}) & STUDENT: FIN(INTEGER) & not(STUDENT = {}));
  Inherited_List_Properties(Machine(ClassMch))==(btrue);
  List_Properties(Machine(ClassMch))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(ClassMch),Machine(DepartamentMch))==(addProfessorMember,removeProfessorMember,addCareerDepartament,removeCareerDepartament,addCoordenador,removeCoordination);
  Seen_Context_List_Enumerated(Machine(ClassMch))==(?);
  Seen_Context_List_Invariant(Machine(ClassMch))==(preRequirement: SUBJECT <-> SUBJECT & coordination: PROFESSOR +-> CAREER & members: PROFESSOR +-> DEPARTAMENT & career: CAREER +-> DEPARTAMENT & card(dom(coordination))<=2 & card(dom(coordination))>=0);
  Seen_Context_List_Assertions(Machine(ClassMch))==(btrue);
  Seen_Context_List_Properties(Machine(ClassMch))==(SUBJECT: FIN(INTEGER) & not(SUBJECT = {}) & STUDENT: FIN(INTEGER) & not(STUDENT = {}) & CAREER: FIN(INTEGER) & not(CAREER = {}) & PROFESSOR: FIN(INTEGER) & not(PROFESSOR = {}) & DEPARTAMENT: FIN(INTEGER) & not(DEPARTAMENT = {}));
  Seen_List_Constraints(Machine(ClassMch))==(btrue);
  Seen_List_Precondition(Machine(ClassMch),removeCoordination)==(cc: CAREER & pp: PROFESSOR & cc: dom(career) & pp: dom(members) & card(dom(coordination))>0);
  Seen_Expanded_List_Substitution(Machine(ClassMch),removeCoordination)==(coordination:=coordination-{pp|->cc});
  Seen_List_Precondition(Machine(ClassMch),addCoordenador)==(pp: PROFESSOR & cc: CAREER & pp: dom(members) & pp/:dom(coordination) & ran({cc}<|career) = ran({pp}<|members) & card(dom(coordination))<2);
  Seen_Expanded_List_Substitution(Machine(ClassMch),addCoordenador)==(coordination:=coordination\/{pp|->cc});
  Seen_List_Precondition(Machine(ClassMch),removeCareerDepartament)==(dd: DEPARTAMENT & cc: CAREER & cc: dom(career) & dd: ran({cc}<|career));
  Seen_Expanded_List_Substitution(Machine(ClassMch),removeCareerDepartament)==(career:=career-{cc|->dd});
  Seen_List_Precondition(Machine(ClassMch),addCareerDepartament)==(dd: DEPARTAMENT & cc: CAREER & cc/:dom(career));
  Seen_Expanded_List_Substitution(Machine(ClassMch),addCareerDepartament)==(career:=career\/{cc|->dd});
  Seen_List_Precondition(Machine(ClassMch),removeProfessorMember)==(pp: PROFESSOR & dd: DEPARTAMENT & pp: dom(members) & dd: ran({pp}<|members));
  Seen_Expanded_List_Substitution(Machine(ClassMch),removeProfessorMember)==(members:=members-{pp|->dd});
  Seen_List_Precondition(Machine(ClassMch),addProfessorMember)==(pp: PROFESSOR & dd: DEPARTAMENT & pp/:dom(members));
  Seen_Expanded_List_Substitution(Machine(ClassMch),addProfessorMember)==(members:=members\/{pp|->dd});
  Seen_List_Operations(Machine(ClassMch),Machine(DepartamentMch))==(addProfessorMember,removeProfessorMember,addCareerDepartament,removeCareerDepartament,addCoordenador,removeCoordination);
  Seen_Expanded_List_Invariant(Machine(ClassMch),Machine(DepartamentMch))==(btrue);
  Seen_Internal_List_Operations(Machine(ClassMch),Machine(CareerMch))==(addStudentCarrer,removeStudentCareer,addRequiredSubjects,removeRequiredSubjects,addOptionalSubjects,removeOptionalSubjects);
  Seen_List_Precondition(Machine(ClassMch),removeOptionalSubjects)==(cc: CAREER & mm: SUBJECT & mm: ran({cc}<|optionalSubjects));
  Seen_Expanded_List_Substitution(Machine(ClassMch),removeOptionalSubjects)==(optionalSubjects:=optionalSubjects-{cc|->mm});
  Seen_List_Precondition(Machine(ClassMch),addOptionalSubjects)==(cc: CAREER & mm: SUBJECT & mm/:ran({cc}<|requiredSubjects) & mm/:ran({cc}<|optionalSubjects) & cc: dom(career));
  Seen_Expanded_List_Substitution(Machine(ClassMch),addOptionalSubjects)==(optionalSubjects:=optionalSubjects\/{cc|->mm});
  Seen_List_Precondition(Machine(ClassMch),removeRequiredSubjects)==(cc: CAREER & mm: SUBJECT & mm: ran({cc}<|requiredSubjects));
  Seen_Expanded_List_Substitution(Machine(ClassMch),removeRequiredSubjects)==(requiredSubjects:=requiredSubjects-{cc|->mm});
  Seen_List_Precondition(Machine(ClassMch),addRequiredSubjects)==(cc: CAREER & mm: SUBJECT & mm/:ran({cc}<|optionalSubjects) & mm/:ran({cc}<|requiredSubjects) & cc: dom(career));
  Seen_Expanded_List_Substitution(Machine(ClassMch),addRequiredSubjects)==(requiredSubjects:=requiredSubjects\/{cc|->mm});
  Seen_List_Precondition(Machine(ClassMch),removeStudentCareer)==(aa: STUDENT & cc: CAREER & aa: dom(enrolledStudents) & cc: ran({aa}<|enrolledStudents));
  Seen_Expanded_List_Substitution(Machine(ClassMch),removeStudentCareer)==(enrolledStudents:=enrolledStudents-{aa|->cc});
  Seen_List_Precondition(Machine(ClassMch),addStudentCarrer)==(aa: STUDENT & cc: CAREER & aa/:dom(enrolledStudents) & cc: dom(career));
  Seen_Expanded_List_Substitution(Machine(ClassMch),addStudentCarrer)==(enrolledStudents:=enrolledStudents\/{aa|->cc});
  Seen_List_Operations(Machine(ClassMch),Machine(CareerMch))==(addStudentCarrer,removeStudentCareer,addRequiredSubjects,removeRequiredSubjects,addOptionalSubjects,removeOptionalSubjects);
  Seen_Expanded_List_Invariant(Machine(ClassMch),Machine(CareerMch))==(btrue);
  Seen_Internal_List_Operations(Machine(ClassMch),Machine(Student_ctx))==(?);
  Seen_List_Operations(Machine(ClassMch),Machine(Student_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(ClassMch),Machine(Student_ctx))==(btrue);
  Seen_Internal_List_Operations(Machine(ClassMch),Machine(ProfessorMch))==(?);
  Seen_List_Operations(Machine(ClassMch),Machine(ProfessorMch))==(?);
  Seen_Expanded_List_Invariant(Machine(ClassMch),Machine(ProfessorMch))==(btrue);
  Seen_Internal_List_Operations(Machine(ClassMch),Machine(SubjectMch))==(addPreRequirement,removePreRequirement);
  Seen_List_Precondition(Machine(ClassMch),removePreRequirement)==(mm: SUBJECT & pp: SUBJECT & pp: ran({mm}<|preRequirement));
  Seen_Expanded_List_Substitution(Machine(ClassMch),removePreRequirement)==(preRequirement:=preRequirement-{mm|->pp});
  Seen_List_Precondition(Machine(ClassMch),addPreRequirement)==(mm: SUBJECT & pp: SUBJECT & pp/:ran({mm}<|preRequirement));
  Seen_Expanded_List_Substitution(Machine(ClassMch),addPreRequirement)==(preRequirement:=preRequirement\/{mm|->pp});
  Seen_List_Operations(Machine(ClassMch),Machine(SubjectMch))==(addPreRequirement,removePreRequirement);
  Seen_Expanded_List_Invariant(Machine(ClassMch),Machine(SubjectMch))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(ClassMch),createClass)==(?);
  List_ANY_Var(Machine(ClassMch),removeClass)==(?);
  List_ANY_Var(Machine(ClassMch),addStudentClass)==(?);
  List_ANY_Var(Machine(ClassMch),removeStudentClass)==(?);
  List_ANY_Var(Machine(ClassMch),addScoreStudent)==(?);
  List_ANY_Var(Machine(ClassMch),avgStudent)==(?);
  List_ANY_Var(Machine(ClassMch),qntExamsStudent)==(?);
  List_ANY_Var(Machine(ClassMch),avaliarStudent)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(ClassMch)) == (? | ? | qntExams,avgScore,classA,classB | aprovedSubjects | createClass,removeClass,addStudentClass,removeStudentClass,addScoreStudent,avgStudent,qntExamsStudent,avaliarStudent | ? | seen(Machine(SubjectMch)),seen(Machine(ProfessorMch)),seen(Machine(Student_ctx)),seen(Machine(CareerMch)),seen(Machine(DepartamentMch)),included(Machine(StudentMch)) | ? | ClassMch);
  List_Of_HiddenCst_Ids(Machine(ClassMch)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ClassMch)) == (?);
  List_Of_VisibleVar_Ids(Machine(ClassMch)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ClassMch)) == (seen(Machine(SubjectMch)): (SUBJECT | ? | preRequirement | ? | ? | ? | ? | ? | ?) | seen(Machine(Student_ctx)): (STUDENT | ? | ? | ? | ? | ? | ? | ? | ?) | seen(Machine(CareerMch)): (? | ? | enrolledStudents,optionalSubjects,requiredSubjects | ? | ? | ? | ? | ? | ?));
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
  Variables(Machine(ClassMch)) == (Type(aprovedSubjects) == Mvl(SetOf(atype(STUDENT,?,?)*atype(SUBJECT,?,?)));Type(qntExams) == Mvl(SetOf(atype(STUDENT,"[STUDENT","]STUDENT")*btype(INTEGER,0,3)));Type(avgScore) == Mvl(SetOf(atype(STUDENT,"[STUDENT","]STUDENT")*btype(INTEGER,0,30)));Type(classA) == Mvl(SetOf(atype(STUDENT,?,?)*(atype(PROFESSOR,?,?)*atype(SUBJECT,?,?))));Type(classB) == Mvl(SetOf(atype(PROFESSOR,?,?)*atype(SUBJECT,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(ClassMch)) == (Type(avaliarStudent) == Cst(btype(BOOL,?,?),atype(STUDENT,?,?)*atype(PROFESSOR,?,?)*atype(SUBJECT,?,?));Type(qntExamsStudent) == Cst(btype(INTEGER,?,?),atype(STUDENT,?,?)*atype(PROFESSOR,?,?)*atype(SUBJECT,?,?));Type(avgStudent) == Cst(btype(INTEGER,?,?),atype(STUDENT,?,?));Type(addScoreStudent) == Cst(btype(INTEGER,?,?),atype(STUDENT,?,?)*btype(INTEGER,?,?));Type(removeStudentClass) == Cst(No_type,atype(STUDENT,?,?)*atype(PROFESSOR,?,?)*atype(SUBJECT,?,?));Type(addStudentClass) == Cst(No_type,atype(STUDENT,?,?)*atype(PROFESSOR,?,?)*atype(SUBJECT,?,?));Type(removeClass) == Cst(No_type,atype(PROFESSOR,?,?)*atype(SUBJECT,?,?));Type(createClass) == Cst(No_type,atype(PROFESSOR,?,?)*atype(SUBJECT,?,?)));
  Observers(Machine(ClassMch)) == (Type(qntExamsStudent) == Cst(btype(INTEGER,?,?),atype(STUDENT,?,?)*atype(PROFESSOR,?,?)*atype(SUBJECT,?,?));Type(avgStudent) == Cst(btype(INTEGER,?,?),atype(STUDENT,?,?)))
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
