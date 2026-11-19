.class Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ExecActionExceptionEventImpl;
.super Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExecActionExceptionEventImpl"
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
        "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionEvent<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field private final e:Lorg/squirrelframework/foundation/exception/TransitionException;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/exception/TransitionException;IILorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/exception/TransitionException;",
            "II",
            "Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;-><init>(IILorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ExecActionExceptionEventImpl;->e:Lorg/squirrelframework/foundation/exception/TransitionException;

    return-void
.end method


# virtual methods
.method public getException()Lorg/squirrelframework/foundation/exception/TransitionException;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ExecActionExceptionEventImpl;->e:Lorg/squirrelframework/foundation/exception/TransitionException;

    return-object p0
.end method
