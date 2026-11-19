.class public Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;
.super Lorg/squirrelframework/foundation/fsm/impl/StateImpl;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/ImmutableTimedState;
.implements Lorg/squirrelframework/foundation/fsm/MutableTimedState;


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
        "Lorg/squirrelframework/foundation/fsm/impl/StateImpl<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/ImmutableTimedState<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/MutableTimedState<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field private autoFireContext:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private autoFireEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private firstExitAction:Lorg/squirrelframework/foundation/fsm/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private final transient futures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private initialDelay:J

.field private lastEntryAction:Lorg/squirrelframework/foundation/fsm/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private timeInterval:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelConfiguration;->getScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->futures:Ljava/util/Map;

    new-instance p1, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;

    invoke-direct {p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;-><init>(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->lastEntryAction:Lorg/squirrelframework/foundation/fsm/Action;

    new-instance p1, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$2;

    invoke-direct {p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$2;-><init>(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->firstExitAction:Lorg/squirrelframework/foundation/fsm/Action;

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->entryActions:Lorg/squirrelframework/foundation/fsm/Actions;

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->lastEntryAction:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {p1, v0}, Lorg/squirrelframework/foundation/fsm/Actions;->add(Lorg/squirrelframework/foundation/fsm/Action;)V

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->exitActions:Lorg/squirrelframework/foundation/fsm/Actions;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->firstExitAction:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {p1, p0}, Lorg/squirrelframework/foundation/fsm/Actions;->add(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->autoFireEvent:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->autoFireContext:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)J
    .locals 2

    iget-wide v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->timeInterval:J

    return-wide v0
.end method

.method public static synthetic access$300(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)J
    .locals 2

    iget-wide v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->initialDelay:J

    return-wide v0
.end method

.method public static synthetic access$400(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->futures:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic accept(Lorg/squirrelframework/foundation/fsm/Visitor;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->accept(Lorg/squirrelframework/foundation/fsm/Visitor;)V

    return-void
.end method

.method public bridge synthetic addChildState(Lorg/squirrelframework/foundation/fsm/MutableState;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->addChildState(Lorg/squirrelframework/foundation/fsm/MutableState;)V

    return-void
.end method

.method public bridge synthetic addEntryAction(Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->addEntryAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method

.method public bridge synthetic addEntryActions(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->addEntryActions(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic addExitAction(Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->addExitAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method

.method public bridge synthetic addExitActions(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->addExitActions(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic addTransitionOn(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableTransition;
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->addTransitionOn(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableTransition;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic checkConflictTransitions(Lorg/squirrelframework/foundation/fsm/ImmutableTransition;Ljava/util/List;)Lorg/squirrelframework/foundation/fsm/ImmutableTransition;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->checkConflictTransitions(Lorg/squirrelframework/foundation/fsm/ImmutableTransition;Ljava/util/List;)Lorg/squirrelframework/foundation/fsm/ImmutableTransition;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic enterByHistory(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->enterByHistory(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic enterDeep(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->enterDeep(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic enterShallow(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->enterShallow(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic entry(Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->entry(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    return-void
.end method

.method public bridge synthetic exit(Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->exit(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    return-void
.end method

.method public bridge synthetic getAcceptableEvents()Ljava/util/Set;
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getAcceptableEvents()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAllTransitions()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getAllTransitions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAutoFireContext()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->autoFireContext:Ljava/lang/Object;

    return-object p0
.end method

.method public getAutoFireEvent()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->autoFireEvent:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic getChildStates()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getChildStates()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCompositeType()Lorg/squirrelframework/foundation/fsm/StateCompositeType;
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getCompositeType()Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getEntryActions()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getEntryActions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getExitActions()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getExitActions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getHistoryType()Lorg/squirrelframework/foundation/fsm/HistoryType;
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getHistoryType()Lorg/squirrelframework/foundation/fsm/HistoryType;

    move-result-object p0

    return-object p0
.end method

.method public getInitialDelay()J
    .locals 2

    iget-wide v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->initialDelay:J

    return-wide v0
.end method

.method public bridge synthetic getInitialState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getInitialState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLevel()I
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getLevel()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPath()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStateId()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getStateId()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getThis()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getThis()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0
.end method

.method public getTimeInterval()J
    .locals 2

    iget-wide v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->timeInterval:J

    return-wide v0
.end method

.method public bridge synthetic getTransitions(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getTransitions(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasChildStates()Z
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->hasChildStates()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic internalFire(Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->internalFire(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    return-void
.end method

.method public bridge synthetic isChildStateOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isChildStateOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isFinalState()Z
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isFinalState()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isParallelState()Z
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isParallelState()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isRegion()Z
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isRegion()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isRootState()Z
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isRootState()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic prioritizeTransitions()V
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->prioritizeTransitions()V

    return-void
.end method

.method public setAutoFireContext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->autoFireContext:Ljava/lang/Object;

    return-void
.end method

.method public setAutoFireEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->autoFireEvent:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic setCompositeType(Lorg/squirrelframework/foundation/fsm/StateCompositeType;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->setCompositeType(Lorg/squirrelframework/foundation/fsm/StateCompositeType;)V

    return-void
.end method

.method public bridge synthetic setFinal(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->setFinal(Z)V

    return-void
.end method

.method public bridge synthetic setHistoryType(Lorg/squirrelframework/foundation/fsm/HistoryType;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->setHistoryType(Lorg/squirrelframework/foundation/fsm/HistoryType;)V

    return-void
.end method

.method public setInitialDelay(J)V
    .locals 0

    iput-wide p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->initialDelay:J

    return-void
.end method

.method public bridge synthetic setInitialState(Lorg/squirrelframework/foundation/fsm/MutableState;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->setInitialState(Lorg/squirrelframework/foundation/fsm/MutableState;)V

    return-void
.end method

.method public bridge synthetic setLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->setLevel(I)V

    return-void
.end method

.method public bridge synthetic setParentState(Lorg/squirrelframework/foundation/fsm/MutableState;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->setParentState(Lorg/squirrelframework/foundation/fsm/MutableState;)V

    return-void
.end method

.method public setTimeInterval(J)V
    .locals 0

    iput-wide p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->timeInterval:J

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic verify()V
    .locals 0

    invoke-super {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->verify()V

    return-void
.end method
