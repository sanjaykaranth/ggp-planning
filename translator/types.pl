:- module(types, [
        functor_domain_name/3,
        free_vars_types/3,
        types_and_objects/4,
        domainelements/2
        ], eclipse_language).

:-use_module("domain.pl").

:-use_module("utils.pl").

:-lib(hash).

functor_domain_name(Name/Arity, ArgPos, DomainName):-
        
        (predicate(Name/Arity) -> arg2domainname(arg(predicate,
                                                           ArgPos,Name/
                                                           Arity),
                                                       DomainName)
        ;
                                        arg2domainname(arg(function,
                                                           ArgPos,Name/
                                                           Arity),
                                                       DomainName)),!.
        
functor_domain_name(Name/Arity,ArgPos, unknowndomain):-writeln(Name),writeln(ArgPos),!.

fluent_arg_domain_name(FluentName/Arity, ArgPos, DomainName):-
        arg2domainname(arg(function,ArgPos,FluentName/Arity),
                       DomainName).

fluent_arg_domain(FluentName/Arity, ArgPos, Domain):-
        fluent_arg_domain_name(FluentName/Arity,ArgPos,DomainName),
        domainname2domainelements(DomainName,Domain).


get_types(DomainSets,DomainNames, Types):-
        %DomainSets= List of List of atoms,
        %Types = List of Type elements
        %Type= type(name, ParentTypes, [List of atoms])
        
        (foreach(DomainSet , DomainSets), foreach(DomainName,
                                                  DomainNames) ,fromto([],In,Out,Types)
        do (Out=[type(DomainName,[object],DomainSet) | In])).
               
               
%Code below is redundant. misinterpreted typing grammar in pddl. 
%1. Can have under more than one type.
%2. No multiple inheritance.        

% get_types(DomainSets,DomainNames, Types):-
%         %DomainSets= List of List of atoms,
%         %Types = List of Type elements
%         %Type= type(name, ParentTypes, [List of atoms])
        
%         hash_create(Atoms),
%         length(DomainSets,N),
        
%         (foreach(DomainSet , DomainSets), foreach(DomainName,
%                                                   DomainNames) ,param(Atoms)
%         do (  
%                (foreach(Atom, DomainSet), param(Atoms,DomainName)
               
%                do ( (hash_get(Atoms,Atom,L) ->
%                         hash_set(Atoms,Atom,
%                                  [DomainName | L])
%                     ;
%                         hash_set(Atoms,Atom,[DomainName])))))),
        
%         hash_create(TypesHash),
%         hash_list(Atoms,Constants, DomainList),
%         (foreach(D, DomainList), foreach(C, Constants), param(TypesHash)
%         do ( type_from_parents(D,Type), 
%              (hash_get(TypesHash,Type,L) ->
%                  hash_set(TypesHash,Type,
%                              [C |L])
%                 ;
%                     hash_set(TypesHash,Type,[C])))),
%         hash_list(TypesHash, TypesList,TypeConstants),
        
%         (foreach(Type, TypesList), foreach(TConstants,TypeConstants),
%          fromto([],In,Out,SubTypes)
%          do (
%           type_name_parents(Type,TName,TParents),
%           Out=[type(TName,TParents,TConstants) | In])),
        
%         (foreach(DomainName,DomainNames), fromto(SubTypes,In,Out,
%                                                  Types)
%          do ( Out= [type(DomainName,[object],[]) | In] )).
        
        

% type_from_parents(ParentsUnsorted, [Name,Parents]):-
%         sort(ParentsUnsorted,Parents),
%         (foreach(Parent, Parents), fromto(dom,In,Out,Name)
%                                    do ( concat_atom([In,-,Parent], Out))).
                                        
        

type_name_parents([Name,Parents],Name,Parents):-!.

types_and_objects(DomainSets, DomainNames,TypesExp,ObjectsExp):-
        get_types(DomainSets,DomainNames,Types),
        
        (foreach(type(Name,Parents,Objects), Types), 
         fromto([":types"], TypeIn,TypeOut,TypesExp),
         fromto([":constants"], ObjIn,ObjOut,ObjectsExp)
        
        do ( (length(Parents,0) -> append(TypeIn, [Name],TypeOut)
             ;
                                   append(TypeIn, [Name, - | Parents],
                                           TypeOut)),
             
             (length(Objects,0) -> ObjOut=ObjIn
             ;
                                   (append( ObjIn, Objects,Temp),
                                    append(Temp, [-,Name],ObjOut))))).
        
        


             

free_vars_types(Atom,_,[]):-atom(Atom),!.

free_vars_types(Var,BoundVars,[]):-var(Var),member(Var,BoundVars),!.
 %needed at all? wrong also. member will always succeed


free_vars_types(Term,BoundVars, FreeVarsTypes):-
        functor(Term,Name, Arity),

        (Term=withconstraints(Bindings,Quantifier,Tail) ->
            
            (Quantifier=..[exists | QVars],
             append(BoundVars,QVars,BoundVarsTail),
             free_vars_types(Tail,BoundVarsTail,FreeVarsTypes))
        
        ;
            (Term=..[Name | Args],
             (foreach(Arg, Args), fromto([], In,Out, VarsTypesList), fromto(0,InC,
                                                                            OutC,
                                                                            Arity),
              param(BoundVars,Name,Arity)
             do ( OutC is InC + 1,
                  
                  ( var(Arg)-> ((member_var(Arg,BoundVars);member(Name,[=,\=,
                                                                        match,equal]))-> Out=In
                               ;
                                                                                         (functor_domain_name(Name/Arity,OutC, DomainName),
                                                                                          append(In,[[ Arg, -, DomainName]],Out)))
                  ;
                               (free_vars_types(Arg,BoundVars, ArgVarsTypes),
                                append(In,ArgVarsTypes, Out))))),
             list_to_set(VarsTypesList,FreeVarsTypes))).

%hack to take care of repetitions, just assume the var occurs in the
% same place.
         
%need to flatten before lispification
                    
%transform atom(X) to X'
domainelements(DomainName,Elements):- 
        domainname2domainelements(DomainName,Atoms),
        (foreach(atom(A), Atoms), fromto([], In, Out, Elements)
        do (Out = [A | In])).
