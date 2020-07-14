/* DepartamentMch
 * Author: Fagne
 * Creation date: 09/10/2018
 */
MACHINE DepartamentMch
SEES Career_ctx, ProfessorMch, Departament_ctx
VARIABLES coordination, members, career
INVARIANT coordination : PROFESSOR +-> CAREER & members : PROFESSOR +-> DEPARTAMENT
                        & career: CAREER +-> DEPARTAMENT & card(dom(coordination)) <= 2 & card(dom(coordination)) >= 0
INITIALISATION coordination := {} || members := {} || career := {}
OPERATIONS
    addProfessorMember(pp, dd)=
        PRE pp:PROFESSOR & dd:DEPARTAMENT & pp /: dom(members)
        THEN members := members \/ {pp |-> dd}
        END;
        
    removeProfessorMember(pp, dd)=
        PRE pp:PROFESSOR & dd:DEPARTAMENT & pp : dom(members) & dd:ran({pp} <| members)
        THEN members := members - {pp |-> dd}
        END;    
        
    addCareerDepartament(dd, cc)=
        PRE dd:DEPARTAMENT & cc:CAREER & cc /: dom(career)
        THEN career := career \/ {cc |-> dd}
        END;
        
    removeCareerDepartament(dd, cc)=
        PRE dd:DEPARTAMENT & cc:CAREER & cc : dom(career) & dd:ran({cc} <| career)
        THEN career := career - {cc |-> dd}
        END;    
        
    addCoordenador(pp, cc)=
        PRE pp:PROFESSOR & cc:CAREER & pp : dom(members) & pp/:dom(coordination) & ran({cc} <| career) = ran({pp} <| members) & card(dom(coordination)) < 2
        THEN coordination := coordination \/ {pp |-> cc}
        END;
        
    removeCoordination(cc, pp)=
        PRE cc:CAREER & pp:PROFESSOR & cc:dom(career) & pp:dom(members) & card(dom(coordination)) > 0
        THEN coordination := coordination - {pp |-> cc}
        END
        
        
END