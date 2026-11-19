.class Lorg/squirrelframework/foundation/fsm/impl/StateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/MutableState;


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
        "Lorg/squirrelframework/foundation/fsm/MutableState<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private acceptableEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field private childInitialState:Lorg/squirrelframework/foundation/fsm/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private childStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end field

.field private compositeType:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

.field protected final entryActions:Lorg/squirrelframework/foundation/fsm/Actions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Actions<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field protected final exitActions:Lorg/squirrelframework/foundation/fsm/Actions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Actions<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private historyType:Lorg/squirrelframework/foundation/fsm/HistoryType;

.field private isFinalState:Z

.field private level:I

.field private parentState:Lorg/squirrelframework/foundation/fsm/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field protected final stateId:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private transitions:Lcom/google/common/collect/LinkedListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap<",
            "TE;",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newActions()Lorg/squirrelframework/foundation/fsm/Actions;

    move-result-object v0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->entryActions:Lorg/squirrelframework/foundation/fsm/Actions;

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newActions()Lorg/squirrelframework/foundation/fsm/Actions;

    move-result-object v0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->exitActions:Lorg/squirrelframework/foundation/fsm/Actions;

    sget-object v0, Lorg/squirrelframework/foundation/fsm/HistoryType;->NONE:Lorg/squirrelframework/foundation/fsm/HistoryType;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->historyType:Lorg/squirrelframework/foundation/fsm/HistoryType;

    const/4 v0, 0x0

    iput v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->level:I

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isFinalState:Z

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateCompositeType;->SEQUENTIAL:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->compositeType:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->stateId:Ljava/lang/Object;

    return-void
.end method

.method private enterHistoryDeep(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getLastActiveChildStateOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->enterDeep(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private enterHistoryNone(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->childInitialState:Lorg/squirrelframework/foundation/fsm/MutableState;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->enterShallow(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private enterHistoryShallow(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getLastActiveChildStateOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->enterShallow(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getLastActiveChildStateOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->lastActiveChildStateOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getInitialState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0
.end method

.method private getSubStatesOn(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "TT;TS;TE;TC;>;)",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->subStatesOn(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getTransitions()Lcom/google/common/collect/LinkedListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedListMultimap<",
            "TE;",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->transitions:Lcom/google/common/collect/LinkedListMultimap;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>()V

    .line 22
    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->transitions:Lcom/google/common/collect/LinkedListMultimap;

    .line 23
    :cond_0
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->transitions:Lcom/google/common/collect/LinkedListMultimap;

    return-object p0
.end method

.method private isParentOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public accept(Lorg/squirrelframework/foundation/fsm/Visitor;)V
    .locals 2

    invoke-interface {p1, p0}, Lorg/squirrelframework/foundation/fsm/Visitor;->visitOnEntry(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getAllTransitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;

    invoke-interface {v1, p1}, Lorg/squirrelframework/foundation/fsm/Visitable;->accept(Lorg/squirrelframework/foundation/fsm/Visitor;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->childStates:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {v1, p1}, Lorg/squirrelframework/foundation/fsm/Visitable;->accept(Lorg/squirrelframework/foundation/fsm/Visitor;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0}, Lorg/squirrelframework/foundation/fsm/Visitor;->visitOnExit(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V

    return-void
.end method

.method public addChildState(Lorg/squirrelframework/foundation/fsm/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->childStates:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->childStates:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->childStates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->childStates:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addEntryAction(Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->entryActions:Lorg/squirrelframework/foundation/fsm/Actions;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/Actions;->add(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method

.method public addEntryActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->entryActions:Lorg/squirrelframework/foundation/fsm/Actions;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/Actions;->addAll(Ljava/util/List;)V

    return-void
.end method

.method public addExitAction(Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->exitActions:Lorg/squirrelframework/foundation/fsm/Actions;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/Actions;->add(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method

.method public addExitActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->exitActions:Lorg/squirrelframework/foundation/fsm/Actions;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/Actions;->addAll(Ljava/util/List;)V

    return-void
.end method

.method public addTransitionOn(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableTransition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/squirrelframework/foundation/fsm/MutableTransition<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newTransition()Lorg/squirrelframework/foundation/fsm/MutableTransition;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setSourceState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setEvent(Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getTransitions()Lcom/google/common/collect/LinkedListMultimap;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public checkConflictTransitions(Lorg/squirrelframework/foundation/fsm/ImmutableTransition;Ljava/util/List;)Lorg/squirrelframework/foundation/fsm/ImmutableTransition;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "TT;TS;TE;TC;>;",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "TT;TS;TE;TC;>;>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;

    if-eq p1, p2, :cond_0

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getCondition()Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/squirrelframework/foundation/fsm/Conditions$Never;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getSourceState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getEvent()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getPriority()I

    move-result v3

    invoke-interface {p2, v0, v1, v2, v3}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->isMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getCondition()Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/squirrelframework/foundation/fsm/Conditions$Always;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getCondition()Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getCondition()Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object p2

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/Condition;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getCondition()Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/Condition;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_1
    return-object p1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public enterByHistory(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isFinalState()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isParallelState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl$2;->$SwitchMap$org$squirrelframework$foundation$fsm$HistoryType:[I

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->historyType:Lorg/squirrelframework/foundation/fsm/HistoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->enterHistoryDeep(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "Unknown HistoryType : "

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->historyType:Lorg/squirrelframework/foundation/fsm/HistoryType;

    invoke-static {p0, p1}, Laz;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->enterHistoryShallow(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->enterHistoryNone(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method public enterDeep(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->entry(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getLastActiveChildStateOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->enterDeep(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0
.end method

.method public enterShallow(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->entry(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->childInitialState:Lorg/squirrelframework/foundation/fsm/MutableState;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->enterShallow(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public entry(Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getExecutor()Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STATE_ENTRY__"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getStateId()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->begin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getEntryActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getExecutor()Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    move-result-object v2

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getStateId()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getEvent()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getContext()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v1

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v8

    const/4 v4, 0x0

    invoke-interface/range {v2 .. v8}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->defer(Lorg/squirrelframework/foundation/fsm/Action;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isParallelState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getChildStates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {v1, p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->entry(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-interface {v1, p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->enterByHistory(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v2

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getStateId()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->subStateFor(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getStateId()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "\" entry."

    invoke-static {v0, p0, v1}, La;->n(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public exit(Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isParallelState()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getSubStatesOn(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->exit(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    :cond_1
    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v2

    if-eq v2, p0, :cond_0

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->exit(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getStateId()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->removeSubStatesOn(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isFinalState()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getExecutor()Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STATE_EXIT__"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getStateId()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->begin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getExitActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getExecutor()Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    move-result-object v2

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getStateId()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getEvent()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getContext()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v1

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v8

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v8}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->defer(Lorg/squirrelframework/foundation/fsm/Action;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getHistoryType()Lorg/squirrelframework/foundation/fsm/HistoryType;

    move-result-object v1

    sget-object v2, Lorg/squirrelframework/foundation/fsm/HistoryType;->NONE:Lorg/squirrelframework/foundation/fsm/HistoryType;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_6

    move v1, v3

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_8

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getHistoryType()Lorg/squirrelframework/foundation/fsm/HistoryType;

    move-result-object v2

    sget-object v4, Lorg/squirrelframework/foundation/fsm/HistoryType;->DEEP:Lorg/squirrelframework/foundation/fsm/HistoryType;

    if-ne v2, v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_4
    if-eqz v3, :cond_9

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getStateId()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->lastActiveChildStateFor(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isRegion()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object p1

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object p1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getStateId()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->removeSubState(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    sget-object p1, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getStateId()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "\" exit."

    invoke-static {v0, p0, v1}, La;->n(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public getAcceptableEvents()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->acceptableEvents:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getTransitions()Lcom/google/common/collect/LinkedListMultimap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->acceptableEvents:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->acceptableEvents:Ljava/util/Set;

    return-object p0
.end method

.method public getAllTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->transitions:Lcom/google/common/collect/LinkedListMultimap;

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getTransitions()Lcom/google/common/collect/LinkedListMultimap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->n()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getChildStates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->childStates:Ljava/util/List;

    invoke-static {p0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getCompositeType()Lorg/squirrelframework/foundation/fsm/StateCompositeType;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->compositeType:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    return-object p0
.end method

.method public getEntryActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->entryActions:Lorg/squirrelframework/foundation/fsm/Actions;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/Actions;->getAll()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExitActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->exitActions:Lorg/squirrelframework/foundation/fsm/Actions;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/Actions;->getAll()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHistoryType()Lorg/squirrelframework/foundation/fsm/HistoryType;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->historyType:Lorg/squirrelframework/foundation/fsm/HistoryType;

    return-object p0
.end method

.method public getInitialState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->childInitialState:Lorg/squirrelframework/foundation/fsm/MutableState;

    return-object p0
.end method

.method public getKey(Lorg/squirrelframework/foundation/fsm/StateMachine;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x40

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLevel()I
    .locals 0

    iget p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->level:I

    return p0
.end method

.method public getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->parentState:Lorg/squirrelframework/foundation/fsm/MutableState;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->stateId:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->parentState:Lorg/squirrelframework/foundation/fsm/MutableState;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->parentState:Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStateId()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->stateId:Ljava/lang/Object;

    return-object p0
.end method

.method public getThis()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public getTransitions(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->transitions:Lcom/google/common/collect/LinkedListMultimap;

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getTransitions()Lcom/google/common/collect/LinkedListMultimap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public hasChildStates()Z
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->childStates:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public internalFire(Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getResult()Lorg/squirrelframework/foundation/fsm/TransitionResult;

    move-result-object v5

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isParallelState()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getSubStatesOn(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {v8}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1, v8, v5}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newResult(ZLorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/TransitionResult;)Lorg/squirrelframework/foundation/fsm/TransitionResult;

    move-result-object v11

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v6

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v7

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getEvent()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getContext()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getExecutor()Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    move-result-object v12

    invoke-static/range {v6 .. v12}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newStateContext(Lorg/squirrelframework/foundation/fsm/StateMachine;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ImmutableState;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/TransitionResult;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;)Lorg/squirrelframework/foundation/fsm/StateContext;

    move-result-object v1

    invoke-interface {v8, v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->internalFire(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-interface {v11}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->isDeclined()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v11}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isParentOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v11}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    invoke-interface {v5, p0}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->setTargetState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Lorg/squirrelframework/foundation/fsm/TransitionResult;

    return-void

    :cond_3
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v1

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getStateId()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v11}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v3

    invoke-interface {v3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->subStateFor(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isParallelState()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v2

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/StateMachineData;->read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getSubStatesOn(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_5
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getFinishEvent()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getContext()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->fireImmediate(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getEvent()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getTransitions(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;

    invoke-interface {v1, p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->internalFire(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-interface {v5}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->isAccepted()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isRootState()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v2

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachineData()Lorg/squirrelframework/foundation/fsm/StateMachineData;

    move-result-object v1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getFinishEvent()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getContext()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getExecutor()Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newStateContext(Lorg/squirrelframework/foundation/fsm/StateMachine;Lorg/squirrelframework/foundation/fsm/StateMachineData;Lorg/squirrelframework/foundation/fsm/ImmutableState;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/TransitionResult;Lorg/squirrelframework/foundation/fsm/ActionExecutionService;)Lorg/squirrelframework/foundation/fsm/StateContext;

    move-result-object p0

    invoke-interface {v2, p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->internalFire(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    return-void

    :cond_8
    invoke-interface {v5}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->isDeclined()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isRegion()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isParallelState()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Internal notify the same event to parent state"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->internalFire(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    :cond_9
    return-void
.end method

.method public isChildStateOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;)Z"
        }
    .end annotation

    :goto_0
    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getLevel()I

    move-result v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getLevel()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isFinalState()Z
    .locals 0

    iget-boolean p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isFinalState:Z

    return p0
.end method

.method public isParallelState()Z
    .locals 1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->compositeType:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateCompositeType;->PARALLEL:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRegion()Z
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->parentState:Lorg/squirrelframework/foundation/fsm/MutableState;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isParallelState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRootState()Z
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->parentState:Lorg/squirrelframework/foundation/fsm/MutableState;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public prioritizeTransitions()V
    .locals 3

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getTransitions()Lcom/google/common/collect/LinkedListMultimap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->transitions:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/squirrelframework/foundation/fsm/impl/StateImpl$1;

    invoke-direct {v2, p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl$1;-><init>(Lorg/squirrelframework/foundation/fsm/impl/StateImpl;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCompositeType(Lorg/squirrelframework/foundation/fsm/StateCompositeType;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->compositeType:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    return-void
.end method

.method public setFinal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isFinalState:Z

    return-void
.end method

.method public setHistoryType(Lorg/squirrelframework/foundation/fsm/HistoryType;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->historyType:Lorg/squirrelframework/foundation/fsm/HistoryType;

    return-void
.end method

.method public setInitialState(Lorg/squirrelframework/foundation/fsm/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isParallelState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->logger:Lorg/slf4j/Logger;

    const-string p1, "Ignoring attempt to set initial state of parallel state group."

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->childInitialState:Lorg/squirrelframework/foundation/fsm/MutableState;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->childInitialState:Lorg/squirrelframework/foundation/fsm/MutableState;

    return-void

    :cond_1
    const-string p0, "Cannot change child initial state."

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-void
.end method

.method public setLevel(I)V
    .locals 2

    iput p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->level:I

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->childStates:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/MutableState;

    iget v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->level:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/MutableState;->setLevel(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setParentState(Lorg/squirrelframework/foundation/fsm/MutableState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    if-eq p0, p1, :cond_2

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->parentState:Lorg/squirrelframework/foundation/fsm/MutableState;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->parentState:Lorg/squirrelframework/foundation/fsm/MutableState;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getLevel()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->setLevel(I)V

    return-void

    :cond_1
    const-string p0, "Cannot change state parent."

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "parent state cannot be state itself."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getStateId()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public verify()V
    .locals 4

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isFinalState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->isParallelState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->hasChildStates()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Final state cannot have child states."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Final state cannot be parallel state."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->transitions:Lcom/google/common/collect/LinkedListMultimap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedListMultimap;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->verify()V

    invoke-virtual {p0, v2, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->checkConflictTransitions(Lorg/squirrelframework/foundation/fsm/ImmutableTransition;Ljava/util/List;)Lorg/squirrelframework/foundation/fsm/ImmutableTransition;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Transition \'%s\' is conflicted with \'%s\'."

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method
