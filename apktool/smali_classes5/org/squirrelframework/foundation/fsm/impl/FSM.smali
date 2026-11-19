.class abstract Lorg/squirrelframework/foundation/fsm/impl/FSM;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TS;",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;>;TS;)",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/MutableState;

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static newActions()Lorg/squirrelframework/foundation/fsm/Actions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/squirrelframework/foundation/fsm/Actions<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$13;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$13;-><init>()V

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/Actions;

    return-object v0
.end method

.method public static newDeferBoundActionBuilder(Ljava/util/List;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo<",
            "TT;TS;TE;TC;>;>;",
            "Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$5;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$5;-><init>()V

    const-class v2, Ljava/util/List;

    const-class v3, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionBuilder;

    return-object p0
.end method

.method public static newEntryExitActionBuilder(Lorg/squirrelframework/foundation/fsm/MutableState;ZLorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;Z",
            "Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$10;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$10;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v3, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    const-class v4, Lorg/squirrelframework/foundation/fsm/MutableState;

    filled-new-array {v4, v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;

    return-object p0
.end method

.method public static newExternalTransitionBuilder(Ljava/util/Map;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TS;",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;>;I",
            "Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$7;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$7;-><init>()V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    const-class v4, Ljava/util/Map;

    const-class v5, Lorg/squirrelframework/foundation/fsm/TransitionType;

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lorg/squirrelframework/foundation/fsm/TransitionType;->EXTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, v3, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;

    return-object p0
.end method

.method public static newInternalTransitionBuilder(Ljava/util/Map;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TS;",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;>;I",
            "Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$9;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$9;-><init>()V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    const-class v4, Ljava/util/Map;

    const-class v5, Lorg/squirrelframework/foundation/fsm/TransitionType;

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, v3, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder;

    return-object p0
.end method

.method public static newLinkedState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableLinkedState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(TS;)",
            "Lorg/squirrelframework/foundation/fsm/MutableLinkedState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$3;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$3;-><init>()V

    const-class v2, Ljava/lang/Object;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/MutableLinkedState;

    return-object p0
.end method

.method public static newLocalTransitionBuilder(Ljava/util/Map;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TS;",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;>;I",
            "Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$8;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$8;-><init>()V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    const-class v4, Ljava/util/Map;

    const-class v5, Lorg/squirrelframework/foundation/fsm/TransitionType;

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lorg/squirrelframework/foundation/fsm/TransitionType;->LOCAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, v3, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder;

    return-object p0
.end method

.method public static newMethodCallAction(Ljava/lang/reflect/Method;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$11;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$11;-><init>()V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    const-class v4, Ljava/lang/reflect/Method;

    filled-new-array {v4, v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionImpl;

    return-object p0
.end method

.method public static newMethodCallActionProxy(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$12;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$12;-><init>()V

    const-class v2, Ljava/lang/String;

    const-class v3, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    return-object p0
.end method

.method public static newMultiTransitionBuilder(Ljava/util/Map;Lorg/squirrelframework/foundation/fsm/TransitionType;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TS;",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;>;",
            "Lorg/squirrelframework/foundation/fsm/TransitionType;",
            "I",
            "Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$6;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$6;-><init>()V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    const-class v4, Ljava/util/Map;

    const-class v5, Lorg/squirrelframework/foundation/fsm/TransitionType;

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;

    return-object p0
.end method

.method public static newMvelAction(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/Action;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$16;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$16;-><init>()V

    const-class v2, Ljava/lang/String;

    const-class v3, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/Action;

    return-object p0
.end method

.method public static newMvelCondition(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/MvelScriptManager;)Lorg/squirrelframework/foundation/fsm/Condition;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/squirrelframework/foundation/fsm/MvelScriptManager;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$15;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$15;-><init>()V

    const-class v2, Ljava/lang/String;

    const-class v3, Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/Condition;

    return-object p0
.end method

.method public static newResult(ZLorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/TransitionResult;)Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$14;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$14;-><init>()V

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/TransitionResult;

    invoke-interface {v0, p0}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->setAccepted(Z)Lorg/squirrelframework/foundation/fsm/TransitionResult;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->setTargetState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Lorg/squirrelframework/foundation/fsm/TransitionResult;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->setParent(Lorg/squirrelframework/foundation/fsm/TransitionResult;)Lorg/squirrelframework/foundation/fsm/TransitionResult;

    move-result-object p0

    return-object p0
.end method

.method public static newState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(TS;)",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$2;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$2;-><init>()V

    const-class v2, Ljava/lang/Object;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/MutableState;

    return-object p0
.end method

.method public static newStateContext(Lorg/squirrelframework/foundation/fsm/StateMachine;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ImmutableState;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/TransitionResult;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;)Lorg/squirrelframework/foundation/fsm/StateContext;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;TE;TC;",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;-><init>(Lorg/squirrelframework/foundation/fsm/StateMachine;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ImmutableState;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/TransitionResult;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;)V

    return-object v0
.end method

.method public static newStateMachineData(Ljava/util/Map;)Lorg/squirrelframework/foundation/fsm/StateMachineData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TS;+",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;>;)",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$17;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$17;-><init>()V

    const-class v2, Ljava/util/Map;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/StateMachineData;

    return-object p0
.end method

.method public static newTimedState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableTimedState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(TS;)",
            "Lorg/squirrelframework/foundation/fsm/MutableTimedState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$4;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$4;-><init>()V

    const-class v2, Ljava/lang/Object;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/MutableTimedState;

    return-object p0
.end method

.method public static newTransition()Lorg/squirrelframework/foundation/fsm/MutableTransition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/squirrelframework/foundation/fsm/MutableTransition<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/FSM$1;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/impl/FSM$1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/MutableTransition;

    return-object v0
.end method
