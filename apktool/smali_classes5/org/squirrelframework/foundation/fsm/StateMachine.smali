.class public interface abstract Lorg/squirrelframework/foundation/fsm/StateMachine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/Visitable;
.implements Lorg/squirrelframework/foundation/component/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndEvent;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedEvent;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionListener;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteEvent;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteListener;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginEvent;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginListener;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionEvent;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionListener;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateEvent;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$StartEvent;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;,
        Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineListener;
    }
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
        "Lorg/squirrelframework/foundation/fsm/Visitable;",
        "Lorg/squirrelframework/foundation/component/Observable;"
    }
.end annotation


# virtual methods
.method public abstract addDeclarativeListener(Ljava/lang/Object;)V
.end method

.method public abstract addExecActionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addStartListener(Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addStateMachineExceptionListener(Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addStateMachineListener(Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addTerminateListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addTransitionBeginListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addTransitionCompleteListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addTransitionDeclinedListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addTransitionEndListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addTransitionExceptionListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract canAccept(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public abstract dumpSavedData()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract exportXMLDefinition(Z)Ljava/lang/String;
.end method

.method public abstract fire(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract fire(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TC;)V"
        }
    .end annotation
.end method

.method public abstract fireImmediate(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract fireImmediate(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TC;)V"
        }
    .end annotation
.end method

.method public abstract getAllRawStates()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract getAllStates()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract getCurrentRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getCurrentState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getInitialRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getInitialState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract getLastActiveChildStateOf(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation
.end method

.method public abstract getLastException()Lorg/squirrelframework/foundation/exception/TransitionException;
.end method

.method public abstract getLastRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getLastState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract getRawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;
.end method

.method public abstract getSubStatesOn(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract isContextSensitive()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isError()Z
.end method

.method public abstract isRemoteMonitorEnabled()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract isTerminated()Z
.end method

.method public abstract loadSavedData(Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "TT;TS;TE;TC;>;)Z"
        }
    .end annotation
.end method

.method public abstract removeDeclarativeListener(Ljava/lang/Object;)V
.end method

.method public abstract removeExecActionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract removeStartListener(Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract removeStateMachineExceptionListener(Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract removeStateMachineListener(Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract removeTerminateListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract removeTransitionBeginListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract removeTransitionCompleteListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract removeTransitionDecleindListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeTransitionDeclinedListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract removeTransitionEndListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract removeTransitionExceptionListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract start()V
.end method

.method public abstract start(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation
.end method

.method public abstract terminate()V
.end method

.method public abstract terminate(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation
.end method

.method public abstract test(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TS;"
        }
    .end annotation
.end method

.method public abstract test(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TC;)TS;"
        }
    .end annotation
.end method

.method public abstract typeOfContext()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract typeOfEvent()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract typeOfState()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end method
