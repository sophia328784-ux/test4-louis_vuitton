.class Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/TransitionResult;


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
        "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field private accepted:Z

.field private parent:Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private subResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end field

.field private targetState:Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addSubResult(Lorg/squirrelframework/foundation/fsm/TransitionResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->subResults:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->subResults:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->subResults:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getRootResult()Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->parent:Lorg/squirrelframework/foundation/fsm/TransitionResult;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    check-cast v0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->getRootResult()Lorg/squirrelframework/foundation/fsm/TransitionResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAcceptedResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->subResults:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->getSubResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/squirrelframework/foundation/fsm/TransitionResult;

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->getAcceptedResults()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->accepted:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getParentResut()Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->parent:Lorg/squirrelframework/foundation/fsm/TransitionResult;

    return-object p0
.end method

.method public getSubResults()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->subResults:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->targetState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    return-object p0
.end method

.method public isAccepted()Z
    .locals 2

    iget-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->accepted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->subResults:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->getSubResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/TransitionResult;

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isDeclined()Z
    .locals 0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->isAccepted()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setAccepted(Z)Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->accepted:Z

    return-object p0
.end method

.method public setParent(Lorg/squirrelframework/foundation/fsm/TransitionResult;)Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->parent:Lorg/squirrelframework/foundation/fsm/TransitionResult;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;

    invoke-direct {p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->addSubResult(Lorg/squirrelframework/foundation/fsm/TransitionResult;)V

    :cond_0
    return-object p0
.end method

.method public setTargetState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Lorg/squirrelframework/foundation/fsm/TransitionResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/TransitionResult<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionResultImpl;->targetState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    return-object p0
.end method
