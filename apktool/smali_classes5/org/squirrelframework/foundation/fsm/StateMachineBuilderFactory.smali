.class public Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;
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
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/StateMachineBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    new-array v0, v0, [Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;
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
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TC;>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/squirrelframework/foundation/fsm/StateMachineBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory$2;

    invoke-direct {v1}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory$2;-><init>()V

    const-class v2, Ljava/lang/Class;

    const-class v3, [Ljava/lang/Class;

    filled-new-array {v2, v2, v2, v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    return-object p0
.end method

.method public static create(Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/UntypedStateMachineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/UntypedStateMachine;",
            ">;)",
            "Lorg/squirrelframework/foundation/fsm/UntypedStateMachineBuilder;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    new-array v0, v0, [Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory;->create(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/UntypedStateMachineBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs create(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/UntypedStateMachineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/UntypedStateMachine;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/squirrelframework/foundation/fsm/UntypedStateMachineBuilder;"
        }
    .end annotation

    .line 28
    const-class v0, Ljava/lang/Object;

    invoke-static {p0, v0, v0, v0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    move-result-object p0

    .line 29
    invoke-static {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory;->create(Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;)Lorg/squirrelframework/foundation/fsm/UntypedStateMachineBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;)Lorg/squirrelframework/foundation/fsm/UntypedStateMachineBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachineBuilder<",
            "Lorg/squirrelframework/foundation/fsm/UntypedStateMachine;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/squirrelframework/foundation/fsm/UntypedStateMachineBuilder;"
        }
    .end annotation

    .line 30
    const-class v0, Lorg/squirrelframework/foundation/fsm/UntypedStateMachineBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory$1;

    invoke-direct {v2, p0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory$1;-><init>(Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;)V

    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/UntypedStateMachineBuilder;

    return-object p0
.end method
