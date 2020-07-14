/* ClassMch
 * Author: Fagne
 * Creation date: 29/09/2018
 */
MACHINE   ClassMch
SEES SubjectMch , ProfessorMch , Student_ctx , CareerMch , DepartamentMch
INCLUDES StudentMch
    /*
    talvez tenha que importar a maquina StudentMch para 
    poder adicionar matérias aprovadas para os STUDENTs
    */
ABSTRACT_VARIABLES classB , classA , avgScore , qntExams
INVARIANT classB : PROFESSOR <-> SUBJECT & classA : STUDENT <-> classB & avgScore : STUDENT --> 0 .. 30
                     & qntExams : STUDENT --> { 0 , 1 , 2 , 3 }
INITIALISATION classB := {} || classA := {} || avgScore := STUDENT * { 0 } || qntExams := STUDENT * { 0 }
OPERATIONS
    createClass ( pp , mm ) =
        PRE pp : PROFESSOR & mm : SUBJECT & mm : ran ( requiredSubjects ) \/ ran ( optionalSubjects )
            & pp : dom ( members ) & ( pp |-> mm ) /: classB
        THEN classB := classB  \/ { pp |-> mm }
        END ;

    removeClass ( pp , mm ) =
        PRE pp : PROFESSOR & mm : SUBJECT & mm : ran ( { pp } <| classB )
            & ( pp |-> mm ) : classB & classA |> { pp |-> mm } = {}
        THEN classB := classB  - { pp |-> mm }
        END ;

    addStudentClass ( aa , pp , mm ) =
        PRE aa : STUDENT & pp : PROFESSOR & mm : SUBJECT & pp : dom ( classB ) & ( pp |-> mm ) : classB
               & aa : dom ( enrolledStudents ) & mm : ran ( classB ) & ran ( { mm } <| preRequirement ) : POW ( ran ( { aa } <| aprovedSubjects ) )
        THEN classA := classA \/ { aa |-> ( pp |-> mm ) }
        END ;

     removeStudentClass ( aa , pp , mm ) =
        PRE aa : STUDENT & pp : PROFESSOR & mm : SUBJECT & { pp |-> mm } : POW ( ran ( classA ) ) & aa : dom ( enrolledStudents )
        THEN classA := classA - { aa |-> ( pp |-> mm ) }
        END ;

 rr <-- addScoreStudent ( aa , nn ) =
        PRE aa : STUDENT & nn : NAT & nn : 0 .. 10 & aa : dom ( classA ) & qntExams ( aa ) < 3
        THEN avgScore := avgScore <+ { aa |-> ( avgScore ( aa ) + nn ) } ||
                    qntExams := qntExams <+ { aa |-> ( qntExams ( aa ) + 1 ) } ||
                    IF qntExams ( aa ) = 0
                    THEN rr := 0
                    ELSE  rr := avgScore ( aa ) / qntExams ( aa )
                    END
        END ;

    rr <-- avgStudent ( aa ) =
        PRE aa : STUDENT & aa : dom ( classA ) & avgScore ( aa ) > 0 & qntExams ( aa ) > 0
        THEN rr := avgScore ( aa ) / qntExams ( aa )
        END ;

    rr <-- qntExamsStudent ( aa , pp , mm ) =
        PRE aa : STUDENT & pp : PROFESSOR & mm : SUBJECT & { pp |-> mm } : POW ( ran ( classA ) )
        THEN rr := qntExams ( aa )
        END ;

   rr <-- avaliarStudent ( aa , pp , mm ) =
            PRE aa : STUDENT & pp : PROFESSOR
                & mm : SUBJECT & pp : dom ( ran ( { aa } <| classA ) )
                & aa : dom ( classA ) & mm : ran ( ran ( { aa } <| classA ) ) & qntExams ( aa ) = 3
           THEN IF avgScore ( aa ) / qntExams ( aa ) >= 7
               THEN rr := TRUE ||
                          classA := classA - { aa |-> ( pp |-> mm ) }
                            || addaprovedSubjects ( aa , mm )
               ELSE rr := FALSE || classA := classA - { aa |-> ( pp |-> mm ) }
               END
        END


END
