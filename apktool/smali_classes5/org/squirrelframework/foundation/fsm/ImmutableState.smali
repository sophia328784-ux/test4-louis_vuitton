.class public interface abstract Lorg/squirrelframework/foundation/fsm/ImmutableState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/Visitable;
.implements Lorg/squirrelframework/foundation/component/SquirrelComponent;


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
        "Lorg/squirrelframework/foundation/fsm/Visitable;",
        "Lorg/squirrelframework/foundation/component/SquirrelComponent;"
    }
.end annotation


# virtual methods
.method public abstract enterByHistory(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract enterDeep(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract enterShallow(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract entry(Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract exit(Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract getAcceptableEvents()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract getAllTransitions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getChildStates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getCompositeType()Lorg/squirrelframework/foundation/fsm/StateCompositeType;
.end method

.method public abstract getEntryActions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getExitActions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getHistoryType()Lorg/squirrelframework/foundation/fsm/HistoryType;
.end method

.method public abstract getInitialState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getLevel()I
.end method

.method public abstract getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getStateId()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract getThis()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getTransitions(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract hasChildStates()Z
.end method

.method public abstract internalFire(Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract isChildStateOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;)Z"
        }
    .end annotation
.end method

.method public abstract isFinalState()Z
.end method

.method public abstract isParallelState()Z
.end method

.method public abstract isRegion()Z
.end method

.method public abstract isRootState()Z
.end method

.method public abstract verify()V
.end method
