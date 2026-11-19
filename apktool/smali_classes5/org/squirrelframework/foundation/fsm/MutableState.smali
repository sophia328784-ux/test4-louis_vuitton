.class public interface abstract Lorg/squirrelframework/foundation/fsm/MutableState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/ImmutableState;


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
        "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# virtual methods
.method public abstract addChildState(Lorg/squirrelframework/foundation/fsm/MutableState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addEntryAction(Lorg/squirrelframework/foundation/fsm/Action;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addEntryActions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;)V"
        }
    .end annotation
.end method

.method public abstract addExitAction(Lorg/squirrelframework/foundation/fsm/Action;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addExitActions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;)V"
        }
    .end annotation
.end method

.method public abstract addTransitionOn(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/squirrelframework/foundation/fsm/MutableTransition<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract prioritizeTransitions()V
.end method

.method public abstract setCompositeType(Lorg/squirrelframework/foundation/fsm/StateCompositeType;)V
.end method

.method public abstract setFinal(Z)V
.end method

.method public abstract setHistoryType(Lorg/squirrelframework/foundation/fsm/HistoryType;)V
.end method

.method public abstract setInitialState(Lorg/squirrelframework/foundation/fsm/MutableState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract setLevel(I)V
.end method

.method public abstract setParentState(Lorg/squirrelframework/foundation/fsm/MutableState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method
