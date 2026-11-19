.class Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateContext;


# annotations
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
        ">",
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/fsm/StateContext<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field private final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final event:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private final result:Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private final sourceState:Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private final stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private final stateMachineData:Lorg/squirrelframework/foundation/fsm/StateMachineData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/StateMachineData<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/StateMachine;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ImmutableState;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/TransitionResult;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;TE;TC;",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->stateMachineData:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->sourceState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    iput-object p4, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->event:Ljava/lang/Object;

    iput-object p5, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->context:Ljava/lang/Object;

    iput-object p6, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->result:Lorg/squirrelframework/foundation/fsm/TransitionResult;

    iput-object p7, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->context:Ljava/lang/Object;

    return-object p0
.end method

.method public getEvent()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->event:Ljava/lang/Object;

    return-object p0
.end method

.method public getExecutor()Lorg/squirrelframework/foundation/fsm/ActionExecutionService;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    return-object p0
.end method

.method public getResult()Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->result:Lorg/squirrelframework/foundation/fsm/TransitionResult;

    return-object p0
.end method

.method public getSourceState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->sourceState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    return-object p0
.end method

.method public getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    return-object p0
.end method

.method public getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateContextImpl;->stateMachineData:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    return-object p0
.end method
