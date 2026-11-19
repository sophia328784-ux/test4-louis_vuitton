.class Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;
.super Lorg/squirrelframework/foundation/fsm/impl/StateImpl;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState;
.implements Lorg/squirrelframework/foundation/fsm/MutableLinkedState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$DeclineEventHandler;
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
        "Lorg/squirrelframework/foundation/fsm/impl/StateImpl<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/ImmutableLinkedState<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/MutableLinkedState<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field private firstExitAction:Lorg/squirrelframework/foundation/fsm/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private lastEntryAction:Lorg/squirrelframework/foundation/fsm/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private linkedStateMachineInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "*TS;TE;TC;>;TS;TE;TC;>;>;"
        }
    .end annotation
.end field

.field private provider:Lorg/squirrelframework/foundation/component/SquirrelInstanceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/component/SquirrelInstanceProvider<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "*TS;TE;TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;-><init>(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->linkedStateMachineInstances:Ljava/util/Map;

    new-instance p1, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$1;

    invoke-direct {p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$1;-><init>(Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->lastEntryAction:Lorg/squirrelframework/foundation/fsm/Action;

    new-instance p1, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$2;

    invoke-direct {p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$2;-><init>(Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->firstExitAction:Lorg/squirrelframework/foundation/fsm/Action;

    return-void
.end method

.method public static synthetic access$001(Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->internalFire(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->linkedStateMachineInstances:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getEntryActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->entryActions:Lorg/squirrelframework/foundation/fsm/Actions;

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/Actions;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->lastEntryAction:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExitActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->firstExitAction:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->exitActions:Lorg/squirrelframework/foundation/fsm/Actions;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/Actions;->getAll()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLinkedStateMachine(Lorg/squirrelframework/foundation/fsm/StateMachine;)Lorg/squirrelframework/foundation/fsm/StateMachine;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "*TS;TE;TC;>;TS;TE;TC;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getKey(Lorg/squirrelframework/foundation/fsm/StateMachine;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->linkedStateMachineInstances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/StateMachine;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->provider:Lorg/squirrelframework/foundation/component/SquirrelInstanceProvider;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/component/SquirrelInstanceProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/StateMachine;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->linkedStateMachineInstances:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public internalFire(Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->linkedStateMachineInstances:Ljava/util/Map;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v1

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getKey(Lorg/squirrelframework/foundation/fsm/StateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getStatus()Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    move-result-object v1

    sget-object v2, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->TERMINATED:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    if-ne v1, v2, :cond_0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->internalFire(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    return-void

    :cond_0
    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$DeclineEventHandler;

    invoke-direct {v1, p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$DeclineEventHandler;-><init>(Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;Lorg/squirrelframework/foundation/fsm/StateContext;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->addTransitionDeclinedListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;)V

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v2

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->isTestEvent()Z

    move-result v3

    invoke-static {v2, v3}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->set(Ljava/lang/Object;Z)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getEvent()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getContext()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->fire(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->set(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->removeTransitionDecleindListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->set(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->removeTransitionDecleindListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;)V

    throw p1
.end method

.method public setLinkedStateMachineProvider(Lorg/squirrelframework/foundation/component/SquirrelInstanceProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/component/SquirrelInstanceProvider<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "*TS;TE;TC;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->provider:Lorg/squirrelframework/foundation/component/SquirrelInstanceProvider;

    return-void
.end method

.method public verify()V
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->provider:Lorg/squirrelframework/foundation/component/SquirrelInstanceProvider;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isParallelState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->hasChildStates()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->verify()V

    return-void

    :cond_0
    const-string p0, "Linked state cannot be parallel state or has any child states."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Linked state machine provider cannot be null."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
