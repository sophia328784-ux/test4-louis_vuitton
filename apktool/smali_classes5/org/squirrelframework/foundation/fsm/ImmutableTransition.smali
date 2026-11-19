.class public interface abstract Lorg/squirrelframework/foundation/fsm/ImmutableTransition;
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
.method public abstract getActions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getCondition()Lorg/squirrelframework/foundation/fsm/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;"
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

.method public abstract getPriority()I
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

.method public abstract getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getType()Lorg/squirrelframework/foundation/fsm/TransitionType;
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

.method public abstract isMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;I)Z"
        }
    .end annotation
.end method

.method public abstract isMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Class;Lorg/squirrelframework/foundation/fsm/TransitionType;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;I",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/squirrelframework/foundation/fsm/TransitionType;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract transit(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
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

.method public abstract verify()V
.end method
