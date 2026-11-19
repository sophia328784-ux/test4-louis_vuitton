.class public interface abstract Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;
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
.method public abstract defineFinalState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract defineFinishEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public varargs abstract defineLinkedState(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineBuilder<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "*TS;TE;TC;>;TS;TE;TC;>;TS;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public varargs abstract defineNoInitSequentialStatesOn(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/HistoryType;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/squirrelframework/foundation/fsm/HistoryType;",
            "[TS;)V"
        }
    .end annotation
.end method

.method public varargs abstract defineNoInitSequentialStatesOn(Ljava/lang/Object;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;[TS;)V"
        }
    .end annotation
.end method

.method public varargs abstract defineParallelStatesOn(Ljava/lang/Object;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;[TS;)V"
        }
    .end annotation
.end method

.method public varargs abstract defineSequentialStatesOn(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/HistoryType;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/squirrelframework/foundation/fsm/HistoryType;",
            "[TS;)V"
        }
    .end annotation
.end method

.method public varargs abstract defineSequentialStatesOn(Ljava/lang/Object;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;[TS;)V"
        }
    .end annotation
.end method

.method public abstract defineStartEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract defineState(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract defineTerminateEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract defineTimedState(Ljava/lang/Object;JJLjava/lang/Object;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;JJTE;TC;)",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract externalTransition()Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract externalTransition(I)Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract externalTransitions()Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract externalTransitions(I)Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract internalTransition()Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract internalTransition(I)Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract localTransition()Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract localTransition(I)Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract localTransitions()Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract localTransitions(I)Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract newStateMachine(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract newStateMachine(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;[Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public varargs abstract newStateMachine(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract onEntry(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract onExit(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract setStateMachineConfiguration(Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;)V
.end method

.method public abstract transit()Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract transition()Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract transition(I)Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract transitions()Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract transitions(I)Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method
