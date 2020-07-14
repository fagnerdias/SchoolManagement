/* StudentMch
 * Author: fagnermorais
 * Creation date: 24/09/2018
 */
MACHINE  StudentMch
SEES SubjectMch , Student_ctx , CareerMch
ABSTRACT_VARIABLES aprovedSubjects
INVARIANT aprovedSubjects : STUDENT <-> SUBJECT
INITIALISATION  aprovedSubjects := {}
OPERATIONS
    addaprovedSubjects ( aa , mm ) =
        PRE aa : STUDENT & mm : SUBJECT & aa : dom ( enrolledStudents )
        THEN aprovedSubjects := aprovedSubjects \/ { aa |-> mm }
        END

END
