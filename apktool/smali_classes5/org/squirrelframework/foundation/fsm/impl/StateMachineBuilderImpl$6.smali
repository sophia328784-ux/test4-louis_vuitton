.class Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/SquirrelInstanceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->defineLinkedState(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/component/SquirrelInstanceProvider<",
        "Lorg/squirrelframework/foundation/fsm/StateMachine<",
        "*TS;TE;TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

.field final synthetic val$extraParams:[Ljava/lang/Object;

.field final synthetic val$initialLinkedState:Ljava/lang/Object;

.field final synthetic val$linkedStateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$6;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$6;->val$linkedStateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$6;->val$initialLinkedState:Ljava/lang/Object;

    iput-object p4, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$6;->val$extraParams:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$6;->get()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    return-object p0
.end method

.method public get()Lorg/squirrelframework/foundation/fsm/StateMachine;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "*TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$6;->val$linkedStateMachineBuilder:Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$6;->val$initialLinkedState:Ljava/lang/Object;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$6;->val$extraParams:[Ljava/lang/Object;

    invoke-interface {v0, v1, p0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->newStateMachine(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    return-object p0
.end method
