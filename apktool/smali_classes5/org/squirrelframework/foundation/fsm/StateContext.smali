.class public interface abstract Lorg/squirrelframework/foundation/fsm/StateContext;
.super Ljava/lang/Object;
.source "SourceFile"


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
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getContext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract getEvent()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract getExecutor()Lorg/squirrelframework/foundation/fsm/ActionExecutionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getResult()Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getSourceState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method
