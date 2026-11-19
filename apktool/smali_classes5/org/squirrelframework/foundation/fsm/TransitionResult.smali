.class public interface abstract Lorg/squirrelframework/foundation/fsm/TransitionResult;
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
.method public abstract getAcceptedResults()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getParentResut()Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getSubResults()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract isAccepted()Z
.end method

.method public abstract isDeclined()Z
.end method

.method public abstract setAccepted(Z)Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract setParent(Lorg/squirrelframework/foundation/fsm/TransitionResult;)Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract setTargetState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method
