/* SubjectMch
 * Author: fagnermorais
 * Creation date: 24/09/2018
 */
MACHINE  SubjectMch
SETS SUBJECT
VARIABLES preRequirement
INVARIANT preRequirement : SUBJECT <-> SUBJECT
INITIALISATION  preRequirement := {}
OPERATIONS
    addPreRequirement(mm, pp)=
        PRE mm:SUBJECT & pp:SUBJECT & pp /: ran({mm} <| preRequirement)
        THEN preRequirement := preRequirement \/ {mm |-> pp}
        END;
        
        
    removePreRequirement(mm, pp)=
        PRE mm:SUBJECT & pp:SUBJECT & pp : ran({mm} <| preRequirement)
        THEN preRequirement := preRequirement - {mm |-> pp}
        END   
    
END