.class public abstract Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;
.super Lorg/squirrelframework/foundation/component/impl/AbstractSubject;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateMachine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionEndEventImpl;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionDeclinedEventImpl;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionExceptionEventImpl;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionCompleteEventImpl;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionBeginEventImpl;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractTransitionEvent;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$StateMachineExceptionEventImpl;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TerminateEventImpl;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$StartEventImpl;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractStateMachineEvent;,
        Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$DeclarativeListener;
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
        "Lorg/squirrelframework/foundation/fsm/StateMachine<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# static fields
.field private static final actionExecutorListenerMapping:[[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final logger:Lorg/slf4j/Logger;

.field private static final stateMachineListenerMapping:[[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private data:Lorg/squirrelframework/foundation/fsm/StateMachineData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/StateMachineData<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private final executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private extraParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private finishEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private isAutoStartEnabled:Z

.field private isAutoTerminateEnabled:Z

.field private isDataIsolateEnabled:Z

.field private isDebugModeEnabled:Z

.field private isDelegatorModeEnabled:Z

.field private volatile isProcessingTestEvent:Z

.field private isRemoteMonitorEnabled:Z

.field private lastException:Lorg/squirrelframework/foundation/exception/TransitionException;

.field private queuedEvents:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lorg/squirrelframework/foundation/util/Pair<",
            "TE;TC;>;>;"
        }
    .end annotation
.end field

.field private queuedTestEvents:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lorg/squirrelframework/foundation/util/Pair<",
            "TE;TC;>;>;"
        }
    .end annotation
.end field

.field protected final readLock:Ljava/util/concurrent/locks/Lock;

.field protected final rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

.field private startEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private volatile status:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

.field private terminateEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private transitionTimeout:J

.field protected final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-class v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->logger:Lorg/slf4j/Logger;

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginListener;

    const-class v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginEvent;

    const-class v2, Lorg/squirrelframework/foundation/fsm/annotation/OnTransitionBegin;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v3

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteListener;

    const-class v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteEvent;

    const-class v2, Lorg/squirrelframework/foundation/fsm/annotation/OnTransitionComplete;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v4

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;

    const-class v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedEvent;

    const-class v2, Lorg/squirrelframework/foundation/fsm/annotation/OnTransitionDecline;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v5

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener;

    const-class v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndEvent;

    const-class v2, Lorg/squirrelframework/foundation/fsm/annotation/OnTransitionEnd;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v6

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionListener;

    const-class v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;

    const-class v2, Lorg/squirrelframework/foundation/fsm/annotation/OnTransitionException;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v7

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener;

    const-class v1, Lorg/squirrelframework/foundation/fsm/StateMachine$StartEvent;

    const-class v2, Lorg/squirrelframework/foundation/fsm/annotation/OnStateMachineStart;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v8

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener;

    const-class v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateEvent;

    const-class v2, Lorg/squirrelframework/foundation/fsm/annotation/OnStateMachineTerminate;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v9

    filled-new-array/range {v3 .. v9}, [[Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->stateMachineListenerMapping:[[Ljava/lang/Class;

    const-class v0, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener;

    const-class v1, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionEvent;

    const-class v2, Lorg/squirrelframework/foundation/fsm/annotation/OnBeforeActionExecuted;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionListener;

    const-class v2, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$AfterExecActionEvent;

    const-class v3, Lorg/squirrelframework/foundation/fsm/annotation/OnAfterActionExecuted;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionListener;

    const-class v3, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionEvent;

    const-class v4, Lorg/squirrelframework/foundation/fsm/annotation/OnActionExecException;

    filled-new-array {v4, v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [[Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->actionExecutorListenerMapping:[[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;-><init>()V

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$1;

    invoke-direct {v1, p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$1;-><init>(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;)V

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->INITIALIZED:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->status:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->queuedEvents:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->queuedTestEvents:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isProcessingTestEvent:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    iput-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isAutoStartEnabled:Z

    iput-boolean v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isAutoTerminateEnabled:Z

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isDelegatorModeEnabled:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->transitionTimeout:J

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isDataIsolateEnabled:Z

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isDebugModeEnabled:Z

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isRemoteMonitorEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->lastException:Lorg/squirrelframework/foundation/exception/TransitionException;

    return-void
.end method

.method public static synthetic access$000(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->invokeTransitionListenerMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->invokeActionListenerMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->invokeStateMachineListenerMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private dumpLinkedStateFor(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState;->getLinkedStateMachine(Lorg/squirrelframework/foundation/fsm/StateMachine;)Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->dumpSavedData()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object p0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->linkedStateDataOn(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)V

    :cond_0
    return-void
.end method

.method private entryAll(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    new-instance p0, Ljava/util/Stack;

    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {p1, p2}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->entry(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private exitAll(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->exit(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fire(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TC;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isEntryPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v1

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isDelegatorModeEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->currentInstance()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_1

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->currentInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-interface {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/StateMachine;->fire(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->isTestEvent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->internalTest(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->internalFire(Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->set(Ljava/lang/Object;)V

    :cond_3
    return-void

    :goto_2
    if-eqz v0, :cond_4

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->set(Ljava/lang/Object;)V

    :cond_4
    throw p0
.end method

.method private getDummyExecutor()Lorg/squirrelframework/foundation/fsm/ActionExecutionService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$4;

    invoke-direct {v1, p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$4;-><init>(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;)V

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->setDummyExecution(Z)V

    return-object p0
.end method

.method private internalFire(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TC;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    move-result-object v0

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->INITIALIZED:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isAutoStartEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->start(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "The state machine is not running."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    move-result-object v0

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->TERMINATED:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    move-result-object v0

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->ERROR:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->queuedEvents:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz p3, :cond_2

    new-instance p3, Lorg/squirrelframework/foundation/util/Pair;

    invoke-direct {p3, p1, p2}, Lorg/squirrelframework/foundation/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p3, Lorg/squirrelframework/foundation/util/Pair;

    invoke-direct {p3, p1, p2}, Lorg/squirrelframework/foundation/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Ljava/util/concurrent/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->processEvents()V

    return-void

    :cond_3
    const-string p0, "The state machine is corruptted."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "The state machine is already terminated."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method private internalStart(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->initialRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v3

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStartEvent()Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v2, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newStateContext(Lorg/squirrelframework/foundation/fsm/StateMachine;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ImmutableState;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/TransitionResult;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;)Lorg/squirrelframework/foundation/fsm/StateContext;

    move-result-object p0

    invoke-direct {v1, v3, p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->entryAll(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-interface {v3, p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->enterByHistory(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    invoke-interface {v7}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->execute()V

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object p1

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->currentState(Ljava/lang/Object;)V

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object p0

    invoke-interface {p0, v5}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->startContext(Ljava/lang/Object;)V

    new-instance p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$StartEventImpl;

    invoke-virtual {v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$StartEventImpl;-><init>(Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    invoke-virtual {v1, p0}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V

    return-void
.end method

.method private internalTest(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TC;)TS;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->status:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->ERROR:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->status:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->TERMINATED:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Cannot test state machine under "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->status:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " status."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->queuedTestEvents:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lorg/squirrelframework/foundation/util/Pair;

    invoke-direct {v1, p1, p2}, Lorg/squirrelframework/foundation/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isProcessingTestEvent:Z

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iput-boolean v2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isProcessingTestEvent:Z

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->dumpSavedData()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getDummyExecutor()Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    move-result-object v8

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    move-result-object p1

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->INITIALIZED:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isAutoStartEnabled:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, p2, v7, v8}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->internalStart(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;)V

    goto :goto_1

    :cond_1
    const-string p0, "The state machine is not running."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_1
    :try_start_0
    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->queuedTestEvents:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/squirrelframework/foundation/util/Pair;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/squirrelframework/foundation/util/Pair;->first()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lorg/squirrelframework/foundation/util/Pair;->second()Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x0

    move-object v4, p0

    :try_start_1
    invoke-direct/range {v4 .. v9}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->processEvent(Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;Z)Z

    move-object p0, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    move-object p0, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, p0

    goto :goto_2

    :cond_3
    move-object v4, p0

    invoke-interface {v7}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->currentState()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v4, p0, v7}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->resolveState(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineData;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v3, v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isProcessingTestEvent:Z

    return-object p0

    :goto_3
    iput-boolean v3, v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isProcessingTestEvent:Z

    throw p0

    :cond_4
    return-object v0
.end method

.method private invokeActionListenerMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent<",
            "TT;TS;TE;TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "from"

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;->getFrom()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "to"

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;->getTo()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "event"

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;->getEvent()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "context"

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;->getContext()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "stateMachine"

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v6, v3, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionEvent;

    if-eqz v6, :cond_0

    move-object v7, v3

    check-cast v7, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionEvent;

    invoke-interface {v7}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionEvent;->getException()Lorg/squirrelframework/foundation/exception/TransitionException;

    move-result-object v7

    const-string v8, "exception"

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    move-object/from16 v8, p0

    iget-object v9, v8, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    invoke-interface {v9, v2, v5}, Lorg/squirrelframework/foundation/fsm/MvelScriptManager;->evalBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object/from16 v8, p0

    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x0

    if-nez v2, :cond_2

    return-object v5

    :cond_2
    array-length v2, v4

    if-nez v2, :cond_3

    invoke-static {v1, v0}, Lorg/squirrelframework/foundation/util/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v9, v4

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_1
    if-ge v10, v9, :cond_c

    aget-object v15, v4, v10

    if-nez v11, :cond_4

    invoke-virtual {v8}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfState()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;->getFrom()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_4
    if-nez v12, :cond_5

    invoke-virtual {v8}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfState()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;->getTo()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_5
    if-nez v13, :cond_6

    invoke-virtual {v8}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfEvent()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;->getEvent()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    goto :goto_2

    :cond_6
    if-nez v14, :cond_7

    invoke-virtual {v8}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfContext()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;->getContext()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const-class v7, Lorg/squirrelframework/foundation/fsm/Action;

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;->getExecutionTarget()Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    const-class v7, [I

    if-ne v15, v7, :cond_a

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;->getMOfN()[I

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    if-eqz v6, :cond_b

    const-class v7, Lorg/squirrelframework/foundation/exception/TransitionException;

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_b

    move-object v7, v3

    check-cast v7, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionEvent;

    invoke-interface {v7}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ExecActionExceptionEvent;->getException()Lorg/squirrelframework/foundation/exception/TransitionException;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/squirrelframework/foundation/util/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private invokeStateMachineListenerMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent<",
            "TT;TS;TE;TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "stateMachine"

    invoke-interface {p4}, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    invoke-interface {v2, p3, v1}, Lorg/squirrelframework/foundation/fsm/MvelScriptManager;->evalBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    const/4 v1, 0x0

    if-nez p3, :cond_1

    return-object v1

    :cond_1
    array-length p3, v0

    if-nez p3, :cond_2

    invoke-static {p2, p1}, Lorg/squirrelframework/foundation/util/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p4}, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lorg/squirrelframework/foundation/util/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private invokeTransitionListenerMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent<",
            "TT;TS;TE;TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "from"

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;->getSourceState()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "event"

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;->getCause()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "context"

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;->getContext()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "stateMachine"

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v6, v3, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteEvent;

    const-string v7, "to"

    if-eqz v6, :cond_0

    move-object v8, v3

    check-cast v8, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteEvent;

    invoke-interface {v8}, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteEvent;->getTargetState()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v8, v3, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;

    if-eqz v8, :cond_1

    move-object v8, v3

    check-cast v8, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;

    invoke-interface {v8}, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;->getTargetState()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "exception"

    invoke-interface {v8}, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;->getException()Lorg/squirrelframework/foundation/exception/TransitionException;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    move-object/from16 v8, p0

    iget-object v9, v8, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    invoke-interface {v9, v2, v5}, Lorg/squirrelframework/foundation/fsm/MvelScriptManager;->evalBoolean(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_2
    move-object/from16 v8, p0

    const/4 v2, 0x1

    :goto_1
    const/4 v5, 0x0

    if-nez v2, :cond_3

    return-object v5

    :cond_3
    array-length v2, v4

    if-nez v2, :cond_4

    invoke-static {v1, v0}, Lorg/squirrelframework/foundation/util/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v9, v4

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_2
    if-ge v10, v9, :cond_d

    aget-object v15, v4, v10

    if-nez v11, :cond_5

    invoke-virtual {v8}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfState()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;->getSourceState()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_5
    if-nez v12, :cond_6

    instance-of v7, v3, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndEvent;

    if-eqz v7, :cond_6

    invoke-virtual {v8}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfState()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v3

    check-cast v7, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndEvent;

    invoke-interface {v7}, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndEvent;->getTargetState()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_6
    if-nez v12, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v8}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfState()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, v3

    check-cast v7, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteEvent;

    invoke-interface {v7}, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteEvent;->getTargetState()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    if-nez v12, :cond_8

    instance-of v7, v3, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;

    if-eqz v7, :cond_8

    invoke-virtual {v8}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfState()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v12, :cond_8

    move-object v7, v3

    check-cast v7, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;

    invoke-interface {v7}, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;->getTargetState()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    if-nez v13, :cond_9

    invoke-virtual {v8}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfEvent()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;->getCause()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    goto :goto_4

    :cond_9
    if-nez v14, :cond_a

    invoke-virtual {v8}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfContext()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;->getContext()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    instance-of v7, v3, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;

    if-eqz v7, :cond_c

    const-class v7, Lorg/squirrelframework/foundation/exception/TransitionException;

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_c

    move-object v7, v3

    check-cast v7, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;

    invoke-interface {v7}, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;->getException()Lorg/squirrelframework/foundation/exception/TransitionException;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/squirrelframework/foundation/util/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isEntryPoint()Z
    .locals 0

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->currentInstance()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private newListenerMethodProxy(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "METHOD_NAME"

    invoke-static {v0, v1}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getStatic(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/squirrelframework/foundation/fsm/annotation/AsyncExecute;

    invoke-static {v1, v2}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/annotation/AsyncExecute;

    if-nez v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/annotation/AsyncExecute;

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    move v8, v12

    goto :goto_0

    :cond_1
    move v8, v11

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/annotation/AsyncExecute;->timeout()J

    move-result-wide v1

    :goto_1
    move-wide v9, v1

    goto :goto_2

    :cond_2
    const-wide/16 v1, -0x1

    goto :goto_1

    :goto_2
    new-instance v2, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v10}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;-><init>(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/String;ZJ)V

    const/4 p0, 0x2

    const-class p1, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$DeclarativeListener;

    if-eqz v8, :cond_3

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Class;

    aput-object v0, p2, v11

    aput-object p1, p2, v12

    const-class p1, Lorg/squirrelframework/foundation/event/AsyncEventListener;

    aput-object p1, p2, p0

    goto :goto_3

    :cond_3
    new-array p2, p0, [Ljava/lang/Class;

    aput-object v0, p2, v11

    aput-object p1, p2, v12

    :goto_3
    const-class p0, Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0, p2, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private processEvent(Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;Z)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TC;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService<",
            "TT;TS;TE;TC;>;Z)Z"
        }
    .end annotation

    invoke-interface/range {p3 .. p3}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->currentRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v3

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p0, v8, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->beforeTransitionBegin(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionBeginEventImpl;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v1

    invoke-direct {v0, v8, p1, p2, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionBeginEventImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_0

    :try_start_1
    invoke-interface/range {p3 .. p3}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->originalStates()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newStateMachineData(Ljava/util/Map;)Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface/range {p3 .. p3}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->dump(Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v8

    move-object v6, v9

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_0
    move-object v5, v8

    :goto_1
    move-object v6, v9

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v2, p3

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    :goto_2
    :try_start_3
    invoke-static {v11, v3, v9}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newResult(ZLorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/TransitionResult;)Lorg/squirrelframework/foundation/fsm/TransitionResult;

    move-result-object v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newStateContext(Lorg/squirrelframework/foundation/fsm/StateMachine;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ImmutableState;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/TransitionResult;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;)Lorg/squirrelframework/foundation/fsm/StateContext;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->internalFire(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-interface {v6}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {p4 .. p4}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->execute()V

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v0

    invoke-interface {v0, v8}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->lastState(Ljava/lang/Object;)V

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v0

    invoke-interface {v0, v9}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->currentState(Ljava/lang/Object;)V

    if-eqz p5, :cond_1

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    move-object/from16 v3, p3

    invoke-interface {v3, v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->dump(Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_1
    :goto_3
    new-instance v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionCompleteEventImpl;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v9

    :try_start_4
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v7, p1

    move-object v5, v8

    move-object v8, p2

    :try_start_5
    invoke-direct/range {v4 .. v9}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionCompleteEventImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    invoke-virtual {p0, v4}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v5, v0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->afterTransitionCompleted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-interface/range {p4 .. p4}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->reset()V

    new-instance v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionEndEventImpl;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v9

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionEndEventImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    invoke-virtual {p0, v4}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v5, v0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->afterTransitionEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :catch_3
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v5, v8

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move-object v5, v8

    goto :goto_5

    :cond_2
    move-object v5, v8

    move-object v6, v9

    :try_start_6
    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionDeclinedEventImpl;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v3

    invoke-direct {v0, v5, p1, p2, v3}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionDeclinedEventImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V

    invoke-virtual {p0, v5, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->afterTransitionDeclined(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-interface/range {p4 .. p4}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->reset()V

    new-instance v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionEndEventImpl;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v9

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionEndEventImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    :goto_4
    invoke-virtual {p0, v4}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v5, v0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->afterTransitionEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v3, p3

    move-object v5, v8

    move-object v2, v3

    goto/16 :goto_1

    :goto_5
    :try_start_7
    sget-object v3, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->ERROR:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    invoke-virtual {p0, v3}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setStatus(Lorg/squirrelframework/foundation/fsm/StateMachineStatus;)V

    instance-of v3, v0, Lorg/squirrelframework/foundation/exception/TransitionException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v3, :cond_3

    :try_start_8
    check-cast v0, Lorg/squirrelframework/foundation/exception/TransitionException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v12, v6

    goto :goto_6

    :cond_3
    :try_start_9
    new-instance v3, Lorg/squirrelframework/foundation/exception/TransitionException;

    sget-object v10, Lorg/squirrelframework/foundation/exception/ErrorCodes;->FSM_TRANSITION_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const-string v8, "UNKNOWN"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object v7, p2

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    :try_start_a
    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object v12, v5

    move-object v5, v4

    :try_start_b
    invoke-direct {v3, v0, v10, v8}, Lorg/squirrelframework/foundation/exception/TransitionException;-><init>(Ljava/lang/Throwable;Lorg/squirrelframework/foundation/exception/ErrorCodes;[Ljava/lang/Object;)V

    move-object v0, v3

    :goto_6
    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->lastException:Lorg/squirrelframework/foundation/exception/TransitionException;

    new-instance v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionExceptionEventImpl;

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v2

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->currentState()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object v8, p1

    move-object v9, p2

    move-object v6, v5

    move-object v5, v0

    :try_start_c
    invoke-direct/range {v4 .. v10}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionExceptionEventImpl;-><init>(Lorg/squirrelframework/foundation/exception/TransitionException;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object v5, v6

    :try_start_d
    invoke-virtual {p0, v4}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V

    invoke-virtual {p0, v5, v12, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->afterTransitionCausedException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    invoke-interface/range {p4 .. p4}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->reset()V

    new-instance v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionEndEventImpl;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v9

    move-object v7, p1

    move-object v8, p2

    move-object v6, v12

    invoke-direct/range {v4 .. v9}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionEndEventImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    goto :goto_4

    :goto_7
    return v11

    :catchall_3
    move-exception v0

    :goto_8
    move-object v6, v12

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v5, v6

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v12, v5

    move-object v5, v4

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object v12, v6

    :goto_9
    invoke-interface/range {p4 .. p4}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->reset()V

    new-instance v4, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionEndEventImpl;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v9

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionEndEventImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    invoke-virtual {p0, v4}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v5, v2, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->afterTransitionEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method

.method private processEvents()V
    .locals 7

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->BUSY:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setStatus(Lorg/squirrelframework/foundation/fsm/StateMachineStatus;)V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->queuedEvents:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/util/Pair;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->queuedEvents:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    :cond_0
    move-object v1, p0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, p0

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lorg/squirrelframework/foundation/util/Pair;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lorg/squirrelframework/foundation/util/Pair;->second()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    iget-object v5, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    iget-boolean v6, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isDataIsolateEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->processEvent(Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;Z)Z

    move-object p0, v1

    move-object v0, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    iget-object p0, v1, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->currentRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    iget-boolean v2, v1, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isAutoTerminateEnabled:Z

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isRootState()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->terminate(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    invoke-virtual {v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    move-result-object p0

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->BUSY:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    if-ne p0, v0, :cond_3

    sget-object p0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->IDLE:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    invoke-virtual {v1, p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setStatus(Lorg/squirrelframework/foundation/fsm/StateMachineStatus;)V

    :cond_3
    iget-object p0, v1, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    invoke-virtual {v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    move-result-object p0

    sget-object v2, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->BUSY:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    if-ne p0, v2, :cond_4

    sget-object p0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->IDLE:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    invoke-virtual {v1, p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setStatus(Lorg/squirrelframework/foundation/fsm/StateMachineStatus;)V

    :cond_4
    iget-object p0, v1, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_5
    return-void
.end method

.method private registerDeclarativeListener(Ljava/lang/Object;Ljava/lang/reflect/Method;Lorg/squirrelframework/foundation/component/Observable;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Lorg/squirrelframework/foundation/component/Observable;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p2, p4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "when"

    invoke-static {v0, v2, v1}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p4}, Lorg/squirrelframework/foundation/util/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p4, ""

    :goto_0
    const-string v0, "METHOD"

    invoke-static {p5, v0}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getStatic(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, p2, p5, p4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->newListenerMethodProxy(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3, p6, p0, v0}, Lorg/squirrelframework/foundation/component/Observable;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void

    :cond_1
    sget-object p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->logger:Lorg/slf4j/Logger;

    const-string p1, "Cannot find static field named \'METHOD\' on listener class \'"

    const-string p2, "\'."

    invoke-static {p5, p1, p2}, Lpq0;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private removeDeclarativeListener(Lorg/squirrelframework/foundation/component/Observable;Ljava/lang/Object;)V
    .locals 1

    .line 9
    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$7;

    invoke-direct {v0, p0, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$7;-><init>(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lorg/squirrelframework/foundation/component/Observable;->removeListener(Lcom/google/common/base/Predicate;)V

    return-void
.end method

.method private resolveRawState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    instance-of v0, p1, Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState;->getLinkedStateMachine(Lorg/squirrelframework/foundation/fsm/StateMachine;)Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getCurrentRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private resolveState(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineData;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData<",
            "TT;TS;TE;TC;>;)TS;"
        }
    .end annotation

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p2

    instance-of v0, p2, Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState;->getLinkedStateMachine(Lorg/squirrelframework/foundation/fsm/StateMachine;)Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private saveLinkedStateData(Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->currentRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->dumpLinkedStateFor(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/squirrelframework/foundation/fsm/Visitor;)V
    .locals 3

    invoke-interface {p1, p0}, Lorg/squirrelframework/foundation/fsm/Visitor;->visitOnEntry(Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getAllRawStates()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v1, p1}, Lorg/squirrelframework/foundation/fsm/Visitable;->accept(Lorg/squirrelframework/foundation/fsm/Visitor;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Lorg/squirrelframework/foundation/fsm/Visitor;->visitOnExit(Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    return-void
.end method

.method public addDeclarativeListener(Ljava/lang/Object;)V
    .locals 15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$6;

    invoke-direct {v2, p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$6;-><init>(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v7, v1, v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "--wait-notify-notifyAll-toString-equals-hashCode-getClass--"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v3

    :goto_1
    sget-object v5, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->stateMachineListenerMapping:[[Ljava/lang/Class;

    array-length v6, v5

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v12, v6, :cond_2

    aget-object v5, v5, v12

    aget-object v9, v5, v3

    aget-object v10, v5, v14

    aget-object v11, v5, v13

    move-object v8, p0

    move-object v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->registerDeclarativeListener(Ljava/lang/Object;Ljava/lang/reflect/Method;Lorg/squirrelframework/foundation/component/Observable;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    move v12, v3

    :goto_2
    sget-object v6, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->actionExecutorListenerMapping:[[Ljava/lang/Class;

    array-length v8, v6

    if-ge v12, v8, :cond_3

    iget-object v8, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    aget-object v6, v6, v12

    aget-object v9, v6, v3

    aget-object v10, v6, v14

    aget-object v11, v6, v13

    move-object v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->registerDeclarativeListener(Ljava/lang/Object;Ljava/lang/reflect/Method;Lorg/squirrelframework/foundation/component/Observable;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public addExecActionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->addExecActionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener;)V

    return-void
.end method

.method public addStartListener(Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$StartEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public addStateMachineExceptionListener(Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public addStateMachineListener(Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public addTerminateListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public addTransitionBeginListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public addTransitionCompleteListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public addTransitionDeclinedListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public addTransitionEndListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public addTransitionExceptionListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public afterActionInvoked(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;)V"
        }
    .end annotation

    return-void
.end method

.method public afterTransitionCausedException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getLastException()Lorg/squirrelframework/foundation/exception/TransitionException;

    move-result-object p1

    invoke-virtual {p1}, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getLastException()Lorg/squirrelframework/foundation/exception/TransitionException;

    move-result-object p1

    invoke-virtual {p1}, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getLastException()Lorg/squirrelframework/foundation/exception/TransitionException;

    move-result-object p0

    throw p0
.end method

.method public afterTransitionCompleted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;)V"
        }
    .end annotation

    return-void
.end method

.method public afterTransitionDeclined(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TE;TC;)V"
        }
    .end annotation

    return-void
.end method

.method public afterTransitionEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;)V"
        }
    .end annotation

    return-void
.end method

.method public beforeActionInvoked(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;)V"
        }
    .end annotation

    return-void
.end method

.method public beforeTransitionBegin(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TE;TC;)V"
        }
    .end annotation

    return-void
.end method

.method public canAccept(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getCurrentRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isAutoStartEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getInitialRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getAcceptableEvents()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public cleanQueuedEvents()V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->queuedEvents:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    return-void
.end method

.method public dumpSavedData()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->originalStates()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newStateMachineData(Ljava/util/Map;)Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v0

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->dump(Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v1

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->saveLinkedStateData(Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;)V

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public exportXMLDefinition(Z)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    const-class v1, Lorg/squirrelframework/foundation/fsm/SCXMLVisitor;

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/SCXMLVisitor;

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->accept(Lorg/squirrelframework/foundation/fsm/Visitor;)V

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/SCXMLVisitor;->getScxml(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public fire(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->fire(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public fire(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TC;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->fire(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public fireImmediate(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->fireImmediate(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public fireImmediate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TC;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->fire(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public getAllRawStates()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->rawStates()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getAllStates()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->states()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getCurrentRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->currentRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->resolveRawState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getCurrentState()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->currentState()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-direct {p0, v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->resolveState(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineData;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" fsm-type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" state-type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfState()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" event-type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfEvent()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" context-type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfContext()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/squirrelframework/foundation/fsm/ConverterProvider;->INSTANCE:Lorg/squirrelframework/foundation/fsm/ConverterProvider;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfEvent()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/squirrelframework/foundation/fsm/ConverterProvider;->getConverter(Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/Converter;

    move-result-object v2

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStartEvent()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "start-event=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStartEvent()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/squirrelframework/foundation/fsm/Converter;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getTerminateEvent()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "terminate-event=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getTerminateEvent()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/squirrelframework/foundation/fsm/Converter;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getFinishEvent()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "finish-event=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getFinishEvent()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/squirrelframework/foundation/fsm/Converter;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "context-insensitive=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isContextSensitive()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->extraParamTypes:[Ljava/lang/Class;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    const-string v1, "extra-parameters=\"["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->extraParamTypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_3

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->extraParamTypes:[Ljava/lang/Class;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string p0, "]\" "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExecutorListenerSize()I
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/component/Observable;->getListenerSize()I

    move-result p0

    return p0
.end method

.method public getFinishEvent()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->finishEvent:Ljava/lang/Object;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->identifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInitialRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getInitialState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getRawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0
.end method

.method public getInitialState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->initialState()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getLastActiveChildStateOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->lastActiveChildStateOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getLastException()Lorg/squirrelframework/foundation/exception/TransitionException;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->lastException:Lorg/squirrelframework/foundation/exception/TransitionException;

    return-object p0
.end method

.method public getLastRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->lastRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->resolveRawState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getLastState()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->lastState()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-direct {p0, v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->resolveState(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineData;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getRawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getStartEvent()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->startEvent:Ljava/lang/Object;

    return-object p0
.end method

.method public getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->status:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    return-object p0
.end method

.method public getSubStatesOn(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->subStatesOn(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getTerminateEvent()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->terminateEvent:Ljava/lang/Object;

    return-object p0
.end method

.method public getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public isContextSensitive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isError()Z
    .locals 1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    move-result-object p0

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->ERROR:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIdle()Z
    .locals 1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    move-result-object p0

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->BUSY:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRemoteMonitorEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isRemoteMonitorEnabled:Z

    return p0
.end method

.method public isStarted()Z
    .locals 2

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    move-result-object v0

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->IDLE:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    move-result-object p0

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->BUSY:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isTerminated()Z
    .locals 1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    move-result-object p0

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->TERMINATED:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public loadSavedData(Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "TT;TS;TE;TC;>;)Z"
        }
    .end annotation

    const-string v0, "Saved data cannot be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->dump(Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->linkedStates()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->linkedStateDataOf(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v2

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    if-eqz v2, :cond_0

    instance-of v3, v1, Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState;

    if-eqz v3, :cond_0

    check-cast v1, Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState;->getLinkedStateMachine(Lorg/squirrelframework/foundation/fsm/StateMachine;)Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/squirrelframework/foundation/fsm/StateMachine;->loadSavedData(Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->IDLE:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setStatus(Lorg/squirrelframework/foundation/fsm/StateMachineStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, 0x1

    return p0

    :goto_1
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public prePostConstruct(Ljava/lang/Object;Ljava/util/Map;Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/util/Map<",
            "TS;+",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;>;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newStateMachineData(Ljava/util/Map;)Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object p2

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->initialState(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->currentState(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object p1

    invoke-virtual {p3}, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->getIdProvider()Lorg/squirrelframework/foundation/component/IdProvider;

    move-result-object p2

    invoke-interface {p2}, Lorg/squirrelframework/foundation/component/IdProvider;->get()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->identifier(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isAutoStartEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isAutoStartEnabled:Z

    invoke-virtual {p3}, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isAutoTerminateEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isAutoTerminateEnabled:Z

    invoke-virtual {p3}, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isDataIsolateEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isDataIsolateEnabled:Z

    invoke-virtual {p3}, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isDebugModeEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isDebugModeEnabled:Z

    invoke-virtual {p3}, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isDelegatorModeEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isDelegatorModeEnabled:Z

    invoke-virtual {p3}, Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;->isRemoteMonitorEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isRemoteMonitorEnabled:Z

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->prepare()V

    return-void
.end method

.method public prepare()V
    .locals 2

    iget-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isDebugModeEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/squirrelframework/foundation/fsm/StateMachineLogger;

    invoke-direct {v0, p0}, Lorg/squirrelframework/foundation/fsm/StateMachineLogger;-><init>(Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$2;

    invoke-direct {v1, p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$2;-><init>(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;Lorg/squirrelframework/foundation/fsm/StateMachineLogger;)V

    invoke-virtual {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->addStartListener(Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener;)V

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$3;

    invoke-direct {v1, p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$3;-><init>(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;Lorg/squirrelframework/foundation/fsm/StateMachineLogger;)V

    invoke-virtual {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->addTerminateListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener;)V

    :cond_0
    return-void
.end method

.method public removeDeclarativeListener(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->removeDeclarativeListener(Lorg/squirrelframework/foundation/component/Observable;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    invoke-direct {p0, v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->removeDeclarativeListener(Lorg/squirrelframework/foundation/component/Observable;Ljava/lang/Object;)V

    return-void
.end method

.method public removeExecActionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->removeExecActionListener(Lorg/squirrelframework/foundation/fsm/ActionExecutionService$BeforeExecActionListener;)V

    return-void
.end method

.method public removeStartListener(Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$StartEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public removeStateMachineExceptionListener(Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public removeStateMachineListener(Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public removeTerminateListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public removeTransitionBeginListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public removeTransitionCompleteListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionCompleteListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public removeTransitionDecleindListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public removeTransitionDeclinedListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public removeTransitionEndListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public removeTransitionExceptionListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionListener<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionEvent;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionExceptionListener;->METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1, v1}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public setExtraParamTypes([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->extraParamTypes:[Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->extraParamTypes:[Ljava/lang/Class;

    return-void
.end method

.method public setFinishEvent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->finishEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->finishEvent:Ljava/lang/Object;

    return-void
.end method

.method public setLastException(Lorg/squirrelframework/foundation/exception/TransitionException;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->lastException:Lorg/squirrelframework/foundation/exception/TransitionException;

    return-void
.end method

.method public setScriptManager(Lorg/squirrelframework/foundation/fsm/MvelScriptManager;)V
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->scriptManager:Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    return-void
.end method

.method public setStartEvent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->startEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->startEvent:Ljava/lang/Object;

    return-void
.end method

.method public setStatus(Lorg/squirrelframework/foundation/fsm/StateMachineStatus;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->status:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    return-void
.end method

.method public setTerminateEvent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->terminateEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->terminateEvent:Ljava/lang/Object;

    return-void
.end method

.method public setTypeOfContext(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TC;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->typeOfContext(Ljava/lang/Class;)V

    return-void
.end method

.method public setTypeOfEvent(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->typeOfEvent(Ljava/lang/Class;)V

    return-void
.end method

.method public setTypeOfState(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TS;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->typeOfState(Ljava/lang/Class;)V

    return-void
.end method

.method public setTypeOfStateMachine(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->typeOfStateMachine(Ljava/lang/Class;)V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->start(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized start(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isStarted()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->BUSY:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setStatus(Lorg/squirrelframework/foundation/fsm/StateMachineStatus;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    invoke-direct {p0, p1, v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->internalStart(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;)V

    sget-object p1, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->IDLE:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setStatus(Lorg/squirrelframework/foundation/fsm/StateMachineStatus;)V

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->processEvents()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public terminate()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->terminate(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized terminate(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isTerminated()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->currentRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v3

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getTerminateEvent()Ljava/lang/Object;

    move-result-object v4

    iget-object v7, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    :try_start_2
    invoke-static/range {v1 .. v7}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newStateContext(Lorg/squirrelframework/foundation/fsm/StateMachine;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ImmutableState;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/TransitionResult;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;)Lorg/squirrelframework/foundation/fsm/StateContext;

    move-result-object p0

    iget-object p1, v1, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object p1

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->currentRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->exitAll(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateContext;)V

    iget-object p0, v1, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->executor:Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->execute()V

    sget-object p0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->TERMINATED:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    invoke-virtual {v1, p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setStatus(Lorg/squirrelframework/foundation/fsm/StateMachineStatus;)V

    new-instance p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TerminateEventImpl;

    invoke-virtual {v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TerminateEventImpl;-><init>(Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    invoke-virtual {v1, p0}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public test(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TS;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->test(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public test(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TC;)TS;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isEntryPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->set(Ljava/lang/Object;Z)V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->internalTest(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->set(Ljava/lang/Object;)V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->set(Ljava/lang/Object;)V

    :cond_2
    throw p0
.end method

.method public typeOfContext()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->typeOfContext()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public typeOfEvent()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->typeOfEvent()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public typeOfState()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->data:Lorg/squirrelframework/foundation/fsm/StateMachineData;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->typeOfState()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public untypedFire(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfEvent()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->typeOfContext()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->fire(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
