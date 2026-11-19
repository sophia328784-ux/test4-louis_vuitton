.class public Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateMachineData;
.implements Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;
.implements Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;


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
        "Lorg/squirrelframework/foundation/fsm/StateMachineData<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;

.field private static final serialVersionUID:J = 0x38ee63aadabb7b64L


# instance fields
.field private contextType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TC;>;"
        }
    .end annotation
.end field

.field private currentState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private eventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private identifier:Ljava/lang/String;

.field private initialState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final lastActiveChildStateStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TS;TS;>;"
        }
    .end annotation
.end field

.field private lastState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private linkStateDataStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TS;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "*TS;TE;TC;>;TS;TE;TC;>;>;"
        }
    .end annotation
.end field

.field private final parallelStatesStore:Lcom/google/common/collect/ListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ListMultimap<",
            "TS;TS;>;"
        }
    .end annotation
.end field

.field private startContext:Ljava/lang/Object;

.field private stateMachineType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private stateType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final transient states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TS;",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->lastActiveChildStateStore:Ljava/util/Map;

    .line 27
    new-instance v0, Lcom/google/common/collect/ArrayListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ArrayListMultimap;-><init>()V

    .line 28
    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->parallelStatesStore:Lcom/google/common/collect/ListMultimap;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->states:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TS;",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->lastActiveChildStateStore:Ljava/util/Map;

    new-instance v0, Lcom/google/common/collect/ArrayListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ArrayListMultimap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->parallelStatesStore:Lcom/google/common/collect/ListMultimap;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->states:Ljava/util/Map;

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->currentState:Ljava/lang/Object;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->lastState:Ljava/lang/Object;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->initialState:Ljava/lang/Object;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->stateMachineType:Ljava/lang/Class;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->stateType:Ljava/lang/Class;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->eventType:Ljava/lang/Class;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->contextType:Ljava/lang/Class;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->identifier:Ljava/lang/String;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->startContext:Ljava/lang/Object;

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->lastActiveChildStateStore:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->parallelStatesStore:Lcom/google/common/collect/ListMultimap;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    :cond_1
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->linkStateDataStore:Ljava/util/Map;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_2
    return-void
.end method

.method private getLinkedStateData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TS;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "*TS;TE;TC;>;TS;TE;TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->linkStateDataStore:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->linkStateDataStore:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->linkStateDataStore:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public activeParentStates()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TS;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->lastActiveChildStateStore:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public currentRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->currentState:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public currentState()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->currentState:Ljava/lang/Object;

    return-object p0
.end method

.method public currentState(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->currentState:Ljava/lang/Object;

    return-void
.end method

.method public dump(Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->clear()V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->typeOfStateMachine()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->typeOfStateMachine(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->typeOfState()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->typeOfState(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->typeOfEvent()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->typeOfEvent(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->typeOfContext()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->typeOfContext(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->identifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->identifier(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->currentState()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->currentState(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->lastState()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->lastState(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->initialState()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->initialState(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->startContext()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->startContext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->activeParentStates()Ljava/util/Collection;

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

    invoke-interface {p1, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->lastActiveChildStateOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;->lastActiveChildStateFor(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->parallelStates()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;->subStatesOn(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->parallelStatesStore:Lcom/google/common/collect/ListMultimap;

    invoke-interface {v4, v1, v3}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public identifier()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public identifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->identifier:Ljava/lang/String;

    return-void
.end method

.method public initialRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->initialState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0
.end method

.method public initialState()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->initialState:Ljava/lang/Object;

    return-object p0
.end method

.method public initialState(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->initialState:Ljava/lang/Object;

    return-void
.end method

.method public lastActiveChildStateFor(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->lastActiveChildStateStore:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public lastActiveChildStateOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->lastActiveChildStateStore:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public lastRawState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->lastState:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0
.end method

.method public lastState()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->lastState:Ljava/lang/Object;

    return-object p0
.end method

.method public lastState(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->lastState:Ljava/lang/Object;

    return-void
.end method

.method public linkedStateDataOf(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "*TS;TE;TC;>;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->linkStateDataStore:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->linkStateDataStore:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public linkedStateDataOn(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "*TS;TE;TC;>;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->getLinkedStateData()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public linkedStates()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->linkStateDataStore:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->linkStateDataStore:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method public originalStates()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TS;",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->states:Ljava/util/Map;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_0
    return-object p0
.end method

.method public parallelStates()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TS;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->parallelStatesStore:Lcom/google/common/collect/ListMultimap;

    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->originalStates()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/ImmutableState;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getThis()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public rawStates()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->originalStates()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public removeSubState(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isParallelState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->parallelStatesStore:Lcom/google/common/collect/ListMultimap;

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->logger:Lorg/slf4j/Logger;

    const-string p2, "Cannot remove sub states on none parallel state {}."

    invoke-interface {p0, p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public removeSubStatesOn(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isParallelState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->parallelStatesStore:Lcom/google/common/collect/ListMultimap;

    invoke-interface {p0, p1}, Lcom/google/common/collect/ListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    :cond_0
    return-void
.end method

.method public startContext()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->startContext:Ljava/lang/Object;

    return-object p0
.end method

.method public startContext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->startContext:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public states()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TS;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->originalStates()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public subStateFor(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->rawStateFrom(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isParallelState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->parallelStatesStore:Lcom/google/common/collect/ListMultimap;

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->logger:Lorg/slf4j/Logger;

    const-string p2, "Cannot set sub states on none parallel state {}."

    invoke-interface {p0, p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public subStatesOn(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->parallelStatesStore:Lcom/google/common/collect/ListMultimap;

    invoke-interface {p0, p1}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
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

    .line 13
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->contextType:Ljava/lang/Class;

    return-object p0
.end method

.method public typeOfContext(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->contextType:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->contextType:Ljava/lang/Class;

    return-void
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

    .line 13
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->eventType:Ljava/lang/Class;

    return-object p0
.end method

.method public typeOfEvent(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->eventType:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->eventType:Ljava/lang/Class;

    return-void
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

    .line 13
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->stateType:Ljava/lang/Class;

    return-object p0
.end method

.method public typeOfState(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TS;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->stateType:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->stateType:Ljava/lang/Class;

    return-void
.end method

.method public typeOfStateMachine()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->stateMachineType:Ljava/lang/Class;

    return-object p0
.end method

.method public typeOfStateMachine(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->stateMachineType:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineDataImpl;->stateMachineType:Ljava/lang/Class;

    return-void
.end method

.method public write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    return-object p0
.end method
