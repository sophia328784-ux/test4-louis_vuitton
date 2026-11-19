.class final Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory;->create(Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;)Lorg/squirrelframework/foundation/fsm/UntypedStateMachineBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory$1;->val$builder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "newUntypedStateMachine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "newAnyStateMachine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory$1;->val$builder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    array-length p1, p3

    const/4 p2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, p2, :cond_3

    const-class p1, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;

    aget-object p2, p3, v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    aget-object p1, p3, v1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory$1;->val$builder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    aget-object p1, p3, v0

    aget-object p2, p3, v2

    check-cast p2, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;

    aget-object p3, p3, v1

    check-cast p3, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, p3}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->newStateMachine(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;[Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    return-object p0

    :cond_3
    array-length p1, p3

    if-ne p1, v1, :cond_5

    aget-object p1, p3, v2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory$1;->val$builder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    aget-object p1, p3, v0

    aget-object p2, p3, v2

    check-cast p2, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->newStateMachine(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    return-object p0

    :cond_5
    array-length p1, p3

    if-ne p1, v2, :cond_6

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory$1;->val$builder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    aget-object p1, p3, v0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->newStateMachine(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal argument number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
