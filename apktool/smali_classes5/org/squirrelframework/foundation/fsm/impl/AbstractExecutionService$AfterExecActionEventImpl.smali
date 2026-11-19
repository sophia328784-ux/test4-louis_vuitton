.class Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AfterExecActionEventImpl;
.super Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AfterExecActionEventImpl"
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
        "Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionEvent<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


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

    invoke-direct {p0, p1, p2, p3}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;-><init>(IILorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;)V

    return-void
.end method

.method public static get(IILorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;)Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionEvent;
    .locals 1
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
            ">(II",
            "Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionEvent<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AfterExecActionEventImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AfterExecActionEventImpl;-><init>(IILorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;)V

    return-object v0
.end method
