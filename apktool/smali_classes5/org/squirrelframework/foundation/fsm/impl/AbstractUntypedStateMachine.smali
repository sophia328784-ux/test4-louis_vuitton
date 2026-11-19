.class public abstract Lorg/squirrelframework/foundation/fsm/impl/AbstractUntypedStateMachine;
.super Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/UntypedStateMachine;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine<",
        "Lorg/squirrelframework/foundation/fsm/UntypedStateMachine;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/squirrelframework/foundation/fsm/UntypedStateMachine;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;-><init>()V

    return-void
.end method

.method private verifyParameterType(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "\'."

    const-string v1, "\' is not match \'"

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfEvent()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Event type of state machine \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfEvent()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfContext()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Context type of state machine \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfContext()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public fire(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Cannot fire null event."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractUntypedStateMachine;->verifyParameterType(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->fire(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public fireImmediate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Cannot fire null event."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractUntypedStateMachine;->verifyParameterType(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->fire(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public start(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractUntypedStateMachine;->verifyParameterType(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->start(Ljava/lang/Object;)V

    return-void
.end method

.method public terminate(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractUntypedStateMachine;->verifyParameterType(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->terminate(Ljava/lang/Object;)V

    return-void
.end method

.method public test(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "Cannot fire null event."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractUntypedStateMachine;->verifyParameterType(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->test(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
