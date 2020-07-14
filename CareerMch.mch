/* CareerMch
 * Author: Fagne
 * Creation date: 30/09/2018
 */
MACHINE  CareerMch
SEES SubjectMch, Student_ctx, Career_ctx, DepartamentMch
VARIABLES requiredSubjects, optionalSubjects, enrolledStudents
INVARIANT requiredSubjects :CAREER <-> SUBJECT & optionalSubjects :CAREER <-> SUBJECT 
                        & requiredSubjects /\ optionalSubjects = {} & enrolledStudents : STUDENT +->CAREER 
INITIALISATION optionalSubjects := {} || requiredSubjects := {} || enrolledStudents := {} 
OPERATIONS
    addStudentCarrer(cc, aa)=
        PRE aa: STUDENT & cc:CAREER & aa /: dom(enrolledStudents) & cc: dom(career)
        THEN enrolledStudents := enrolledStudents \/ {aa |-> cc}
        END;
  removeStudentCareer(cc, aa)=
        PRE aa: STUDENT & cc:CAREER & aa : dom(enrolledStudents) & cc: ran({aa} <| enrolledStudents) 
        THEN enrolledStudents := enrolledStudents - {aa |-> cc}
        END;
    
    addRequiredSubjects(cc, mm)=
        PRE cc: CAREER & mm: SUBJECT & mm /: ran({cc} <| optionalSubjects) & mm /: ran({cc} <| requiredSubjects) & cc:dom(career)
        THEN requiredSubjects := requiredSubjects \/ {cc |-> mm}
        END;
    removeRequiredSubjects(cc, mm)=
        PRE cc: CAREER & mm: SUBJECT & mm : ran({cc} <| requiredSubjects)
        THEN requiredSubjects := requiredSubjects - {cc |-> mm}
        END;
    addOptionalSubjects(cc, mm)=
        PRE cc: CAREER & mm: SUBJECT & mm /: ran({cc} <| requiredSubjects) & mm /: ran({cc} <| optionalSubjects) & cc:dom(career)
        THEN optionalSubjects := optionalSubjects \/ {cc |-> mm}
        END;
    removeOptionalSubjects(cc, mm)=
        PRE cc: CAREER & mm: SUBJECT & mm : ran({cc} <| optionalSubjects)
        THEN optionalSubjects := optionalSubjects - {cc |-> mm}
        END
        
END