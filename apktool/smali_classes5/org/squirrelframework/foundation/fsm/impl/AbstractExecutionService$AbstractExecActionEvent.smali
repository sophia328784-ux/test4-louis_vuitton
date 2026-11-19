.class abstract Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractExecActionEvent"
.end annotation

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
        "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field private executionContext:Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private pos:I

.field private size:I


# direct methods
.method public constructor <init>(IILorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;->pos:I

    iput p2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;->size:I

    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

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

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->context:Ljava/lang/Object;

    return-object p0
.end method

.method public getEvent()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->event:Ljava/lang/Object;

    return-object p0
.end method

.method public getExecutionTarget()Lorg/squirrelframework/foundation/fsm/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/UncallableActionImpl;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->action:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-direct {v0, p0}, Lorg/squirrelframework/foundation/fsm/impl/UncallableActionImpl;-><init>(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-object v0
.end method

.method public getFrom()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->from:Ljava/lang/Object;

    return-object p0
.end method

.method public getMOfN()[I
    .locals 1

    iget v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;->pos:I

    iget p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;->size:I

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->fsm:Lorg/squirrelframework/foundation/fsm/StateMachine;

    return-object p0
.end method

.method public getTo()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->to:Ljava/lang/Object;

    return-object p0
.end method
