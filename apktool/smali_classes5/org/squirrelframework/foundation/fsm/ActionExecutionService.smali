.class public interface abstract Lorg/squirrelframework/foundation/fsm/ActionExecutionService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionListener;,
        Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionEvent;,
        Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionListener;,
        Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionEvent;,
        Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener;,
        Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionEvent;,
        Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;
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
        "Lorg/squirrelframework/foundation/component/Observable;"
    }
.end annotation


# virtual methods
.method public abstract addExecActionExceptionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addExecActionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
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

.method public abstract begin(Ljava/lang/String;)V
.end method

.method public abstract defer(Lorg/squirrelframework/foundation/fsm/Action;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;TS;TS;TE;TC;TT;)V"
        }
    .end annotation
.end method

.method public abstract execute()V
.end method

.method public abstract removeExecActionExceptionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract removeExecActionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
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

.method public abstract reset()V
.end method

.method public abstract setDummyExecution(Z)V
.end method
