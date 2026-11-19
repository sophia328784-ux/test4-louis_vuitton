.class public interface abstract Lorg/squirrelframework/foundation/fsm/MutableTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/ImmutableTransition;


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
        "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# virtual methods
.method public abstract addAction(Lorg/squirrelframework/foundation/fsm/Action;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addActions(Ljava/util/List;)V
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

.method public abstract setCondition(Lorg/squirrelframework/foundation/fsm/Condition;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public abstract setEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract setPriority(I)V
.end method

.method public abstract setSourceState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract setTargetState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract setType(Lorg/squirrelframework/foundation/fsm/TransitionType;)V
.end method
