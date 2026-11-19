.class public abstract Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;
.super Lorg/squirrelframework/foundation/component/impl/AbstractSubject;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/ActionExecutionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AbstractExecActionEvent;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AfterExecActionEventImpl;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$BeforeExecActionEventImpl;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ExecActionExceptionEventImpl;
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
        "Lorg/squirrelframework/foundation/component/impl/AbstractSubject;",
        "Lorg/squirrelframework/foundation/fsm/ActionExecutionService<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field protected final actionBuckets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/squirrelframework/foundation/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext<",
            "TT;TS;TE;TC;>;>;>;>;"
        }
    .end annotation
.end field

.field private actionTotalSize:I

.field protected dummyExecution:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->actionBuckets:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->dummyExecution:Z

    iput v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->actionTotalSize:I

    return-void
.end method

.method private doExecute(Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext<",
            "TT;TS;TE;TC;>;>;)V"
        }
    .end annotation

    const-string p1, "Action bucket cannot be empty when executing."

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

    iget-object v0, v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->action:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/Action;->weight()I

    move-result v0

    const/high16 v5, -0x80000000

    if-eq v0, v5, :cond_3

    :try_start_0
    iget v0, v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->position:I

    iget v5, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->actionTotalSize:I

    invoke-static {v0, v5, v4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$BeforeExecActionEventImpl;->get(IILorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;)Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V

    iget-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->dummyExecution:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_1
    add-int/lit8 v0, v2, 0x1

    invoke-static {v0, v1, v4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AfterExecActionEventImpl;->get(IILorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;)Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V

    goto/16 :goto_5

    :cond_0
    :try_start_1
    iget-object v0, v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->action:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/Action;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->isTestEvent()Z

    move-result v0

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->currentInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelConfiguration;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$1;

    invoke-direct {v7, p0, v5, v0, v4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$1;-><init>(Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;Lorg/squirrelframework/foundation/fsm/StateMachine;ZLorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    :try_start_2
    sget-object p2, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->logger:Lorg/slf4j/Logger;

    const-string v0, "Error during transition"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of p2, p1, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;

    invoke-virtual {p2}, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_3

    :cond_2
    move-object p2, p1

    :goto_3
    new-instance v0, Lorg/squirrelframework/foundation/exception/TransitionException;

    sget-object v5, Lorg/squirrelframework/foundation/exception/ErrorCodes;->FSM_TRANSITION_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    iget-object v6, v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->from:Ljava/lang/Object;

    iget-object v7, v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->to:Ljava/lang/Object;

    iget-object v8, v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->event:Ljava/lang/Object;

    iget-object v9, v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->context:Ljava/lang/Object;

    iget-object v10, v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->action:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {v10}, Lorg/squirrelframework/foundation/fsm/Action;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p2, v5, p1}, Lorg/squirrelframework/foundation/exception/TransitionException;-><init>(Ljava/lang/Throwable;Lorg/squirrelframework/foundation/exception/ErrorCodes;[Ljava/lang/Object;)V

    new-instance p1, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ExecActionExceptionEventImpl;

    add-int/lit8 p2, v2, 0x1

    invoke-direct {p1, v0, p2, v1, v4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ExecActionExceptionEventImpl;-><init>(Lorg/squirrelframework/foundation/exception/TransitionException;IILorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;)V

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    add-int/2addr v2, v3

    invoke-static {v2, v1, v4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$AfterExecActionEventImpl;->get(IILorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;)Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionEvent;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V

    throw p1

    :cond_3
    sget-object v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Method call action \""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->action:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {v4}, Lorg/squirrelframework/foundation/fsm/Action;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") was ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

    :try_start_3
    sget-object v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting action \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->action:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' to finish."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v2, p2, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->action:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/Action;->timeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_5

    iget-object v2, p2, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->action:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/Action;->timeout()J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    goto :goto_7

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_8

    :cond_5
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->action:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' finished."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :goto_8
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_9

    :cond_6
    move-object v0, p1

    :goto_9
    new-instance v1, Lorg/squirrelframework/foundation/exception/TransitionException;

    sget-object v2, Lorg/squirrelframework/foundation/exception/ErrorCodes;->FSM_TRANSITION_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    iget-object v3, p2, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->from:Ljava/lang/Object;

    iget-object v4, p2, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->to:Ljava/lang/Object;

    iget-object v5, p2, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->event:Ljava/lang/Object;

    iget-object v6, p2, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->context:Ljava/lang/Object;

    iget-object v7, p2, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->action:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {v7}, Lorg/squirrelframework/foundation/fsm/Action;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lorg/squirrelframework/foundation/exception/TransitionException;-><init>(Ljava/lang/Throwable;Lorg/squirrelframework/foundation/exception/ErrorCodes;[Ljava/lang/Object;)V

    new-instance p1, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ExecActionExceptionEventImpl;

    iget v0, p2, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->position:I

    iget v2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->actionTotalSize:I

    invoke-direct {p1, v1, v0, v2, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ExecActionExceptionEventImpl;-><init>(Lorg/squirrelframework/foundation/exception/TransitionException;IILorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;)V

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V

    throw v1

    :cond_7
    return-void
.end method

.method private executeActions()V
    .locals 3

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->actionBuckets:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/util/Pair;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/util/Pair;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/util/Pair;->second()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->doExecute(Ljava/lang/String;Ljava/util/List;)V

    sget-object p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->logger:Lorg/slf4j/Logger;

    const-string v0, "Actions within \'"

    const-string v2, "\' invoked."

    invoke-static {v0, v1, v2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addExecActionExceptionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public addExecActionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    .line 8
    const-class v0, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionListener;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public addExecActionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public begin(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->actionBuckets:Ljava/util/LinkedList;

    new-instance v1, Lorg/squirrelframework/foundation/util/Pair;

    invoke-direct {v1, p1, v0}, Lorg/squirrelframework/foundation/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public defer(Lorg/squirrelframework/foundation/fsm/Action;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;TS;TS;TE;TC;TT;)V"
        }
    .end annotation

    const-string v0, "Action parameter cannot be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->actionBuckets:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/util/Pair;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/util/Pair;->second()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "Action bucket currently is empty. Make sure execution service is began."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->actionTotalSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->actionTotalSize:I

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    move p6, v1

    invoke-static/range {p0 .. p6}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->get(Lorg/squirrelframework/foundation/fsm/Action;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;I)Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()V
    .locals 1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->actionBuckets:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->executeActions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->reset()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->reset()V

    throw v0
.end method

.method public removeExecActionExceptionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionEvent;

    invoke-virtual {p0, v0, p1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public removeExecActionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    .line 6
    const-class v0, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionListener;

    invoke-virtual {p0, v0, p1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public removeExecActionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionEvent;

    invoke-virtual {p0, v0, p1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->actionBuckets:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->actionTotalSize:I

    return-void
.end method

.method public setDummyExecution(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->dummyExecution:Z

    return-void
.end method
