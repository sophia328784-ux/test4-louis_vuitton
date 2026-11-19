.class public Lorg/squirrelframework/foundation/fsm/UntypedStateMachineImporter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final delegator:Lorg/squirrelframework/foundation/fsm/StateMachineImporter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/StateMachineImporter<",
            "Lorg/squirrelframework/foundation/fsm/UntypedStateMachine;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/UntypedStateMachineImporter$1;

    invoke-direct {v1, p0}, Lorg/squirrelframework/foundation/fsm/UntypedStateMachineImporter$1;-><init>(Lorg/squirrelframework/foundation/fsm/UntypedStateMachineImporter;)V

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/StateMachineImporter;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/UntypedStateMachineImporter;->delegator:Lorg/squirrelframework/foundation/fsm/StateMachineImporter;

    return-void
.end method


# virtual methods
.method public importDefinition(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/UntypedStateMachineBuilder;
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/UntypedStateMachineImporter;->delegator:Lorg/squirrelframework/foundation/fsm/StateMachineImporter;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineImporter;->importFromString(Ljava/lang/String;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/UntypedStateMachineImporter;->delegator:Lorg/squirrelframework/foundation/fsm/StateMachineImporter;

    check-cast p1, Ljava/io/File;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineImporter;->importFromFile(Ljava/io/File;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/UntypedStateMachineImporter;->delegator:Lorg/squirrelframework/foundation/fsm/StateMachineImporter;

    check-cast p1, Ljava/io/InputStream;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineImporter;->importFromInputStream(Ljava/io/InputStream;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory;->create(Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;)Lorg/squirrelframework/foundation/fsm/UntypedStateMachineBuilder;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "."

    const-string v0, "Cannot support import from "

    invoke-static {v0, p0, p1}, Laz;->r(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public registerReusableInstance(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/UntypedStateMachineImporter;->delegator:Lorg/squirrelframework/foundation/fsm/StateMachineImporter;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineImporter;->registerReusableInstance(Ljava/lang/Object;)V

    return-void
.end method

.method public registerReusableInstance(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/UntypedStateMachineImporter;->delegator:Lorg/squirrelframework/foundation/fsm/StateMachineImporter;

    invoke-interface {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/StateMachineImporter;->registerReusableInstance(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterReusableInstance(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/UntypedStateMachineImporter;->delegator:Lorg/squirrelframework/foundation/fsm/StateMachineImporter;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineImporter;->unregisterReusableInstance(Ljava/lang/String;)V

    return-void
.end method
