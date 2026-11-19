.class Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/MutableTransition;


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
        "Lorg/squirrelframework/foundation/fsm/MutableTransition<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field private final actions:Lorg/squirrelframework/foundation/fsm/Actions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Actions<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private condition:Lorg/squirrelframework/foundation/fsm/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;"
        }
    .end annotation
.end field

.field private event:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private priority:I

.field private sourceState:Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
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

.field private type:Lorg/squirrelframework/foundation/fsm/TransitionType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newActions()Lorg/squirrelframework/foundation/fsm/Actions;

    move-result-object v0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->actions:Lorg/squirrelframework/foundation/fsm/Actions;

    invoke-static {}, Lorg/squirrelframework/foundation/fsm/Conditions;->always()Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->condition:Lorg/squirrelframework/foundation/fsm/Condition;

    sget-object v0, Lorg/squirrelframework/foundation/fsm/TransitionType;->EXTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->type:Lorg/squirrelframework/foundation/fsm/TransitionType;

    return-void
.end method

.method private doTransit(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isChildStateOf(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->type:Lorg/squirrelframework/foundation/fsm/TransitionType;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/TransitionType;->EXTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->exit(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-interface {p1, p3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->entry(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->doTransitInternal(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateContext;)V

    return-void
.end method

.method private doTransitInternal(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->type:Lorg/squirrelframework/foundation/fsm/TransitionType;

    sget-object v0, Lorg/squirrelframework/foundation/fsm/TransitionType;->LOCAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p3}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->transit(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    return-void

    :cond_0
    invoke-interface {p1, p3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->exit(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-virtual {p0, p3}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->transit(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->entry(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    return-void

    :cond_1
    if-ne p1, p2, :cond_2

    invoke-virtual {p0, p3}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->transit(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    return-void

    :cond_2
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-interface {p1, p3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->exit(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-virtual {p0, p3}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->transit(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {p2, p3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->entry(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    return-void

    :cond_3
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getLevel()I

    move-result v0

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getLevel()I

    move-result v1

    if-le v0, v1, :cond_4

    invoke-interface {p1, p3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->exit(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->doTransitInternal(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateContext;)V

    return-void

    :cond_4
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getLevel()I

    move-result v0

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getLevel()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->doTransitInternal(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-interface {p2, p3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->entry(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    return-void

    :cond_5
    invoke-interface {p1, p3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->exit(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p1

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->doTransitInternal(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-interface {p2, p3}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->entry(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    return-void
.end method

.method private unwindSubStates(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 1
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
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getSourceState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->exit(Lorg/squirrelframework/foundation/fsm/StateContext;)V

    :cond_0
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getParentState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public accept(Lorg/squirrelframework/foundation/fsm/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/squirrelframework/foundation/fsm/Visitor;->visitOnEntry(Lorg/squirrelframework/foundation/fsm/ImmutableTransition;)V

    invoke-interface {p1, p0}, Lorg/squirrelframework/foundation/fsm/Visitor;->visitOnExit(Lorg/squirrelframework/foundation/fsm/ImmutableTransition;)V

    return-void
.end method

.method public addAction(Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->actions:Lorg/squirrelframework/foundation/fsm/Actions;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/Actions;->add(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method

.method public addActions(Ljava/util/List;)V
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

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->actions:Lorg/squirrelframework/foundation/fsm/Actions;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/Actions;->addAll(Ljava/util/List;)V

    return-void
.end method

.method public getActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->actions:Lorg/squirrelframework/foundation/fsm/Actions;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/Actions;->getAll()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCondition()Lorg/squirrelframework/foundation/fsm/Condition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->condition:Lorg/squirrelframework/foundation/fsm/Condition;

    return-object p0
.end method

.method public getEvent()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->event:Ljava/lang/Object;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    iget p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->priority:I

    return p0
.end method

.method public getSourceState()Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->sourceState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

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

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->targetState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    return-object p0
.end method

.method public getType()Lorg/squirrelframework/foundation/fsm/TransitionType;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->type:Lorg/squirrelframework/foundation/fsm/TransitionType;

    return-object p0
.end method

.method public internalFire(Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->type:Lorg/squirrelframework/foundation/fsm/TransitionType;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getSourceState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->targetState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->condition:Lorg/squirrelframework/foundation/fsm/Condition;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getContext()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/squirrelframework/foundation/fsm/Condition;->isSatisfied(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getSourceState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->type:Lorg/squirrelframework/foundation/fsm/TransitionType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->transit(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getSourceState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->unwindSubStates(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getSourceState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->doTransit(Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/ImmutableState;Lorg/squirrelframework/foundation/fsm/StateContext;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->enterByHistory(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object p0

    :goto_0
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getResult()Lorg/squirrelframework/foundation/fsm/TransitionResult;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->setAccepted(Z)Lorg/squirrelframework/foundation/fsm/TransitionResult;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/squirrelframework/foundation/fsm/TransitionResult;->setTargetState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)Lorg/squirrelframework/foundation/fsm/TransitionResult;

    :cond_2
    :goto_1
    return-void
.end method

.method public isMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;I)Z"
        }
    .end annotation

    const/4 p1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getTargetState()Lorg/squirrelframework/foundation/fsm/ImmutableState;

    move-result-object v0

    invoke-interface {v0}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getEvent()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return p1

    :cond_2
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getPriority()I

    move-result p0

    if-eq p0, p4, :cond_3

    return p1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public isMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Class;Lorg/squirrelframework/foundation/fsm/TransitionType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;I",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/squirrelframework/foundation/fsm/TransitionType;",
            ")Z"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->isMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 62
    :cond_0
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getCondition()Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eq p1, p5, :cond_1

    return p2

    .line 63
    :cond_1
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getType()Lorg/squirrelframework/foundation/fsm/TransitionType;

    move-result-object p0

    invoke-virtual {p0, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return p2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public setCondition(Lorg/squirrelframework/foundation/fsm/Condition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->condition:Lorg/squirrelframework/foundation/fsm/Condition;

    return-void
.end method

.method public setEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->event:Ljava/lang/Object;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->priority:I

    return-void
.end method

.method public setSourceState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->sourceState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    return-void
.end method

.method public setTargetState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->targetState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    return-void
.end method

.method public setType(Lorg/squirrelframework/foundation/fsm/TransitionType;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->type:Lorg/squirrelframework/foundation/fsm/TransitionType;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->sourceState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->event:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->condition:Lorg/squirrelframework/foundation/fsm/Condition;

    invoke-interface {v2}, Lorg/squirrelframework/foundation/fsm/Condition;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->priority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->type:Lorg/squirrelframework/foundation/fsm/TransitionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->targetState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transit(Lorg/squirrelframework/foundation/fsm/StateContext;)Lorg/squirrelframework/foundation/fsm/ImmutableState;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/ImmutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getExecutor()Lorg/squirrelframework/foundation/fsm/ActionExecutionService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TRANSITION__"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->begin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->getActions()Ljava/util/List;

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

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->sourceState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v4

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->targetState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->getStateId()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getEvent()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getContext()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateContext;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v1

    invoke-interface {v1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getThis()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v8

    invoke-interface/range {v2 .. v8}, Lorg/squirrelframework/foundation/fsm/ActionExecutionService;->defer(Lorg/squirrelframework/foundation/fsm/Action;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->targetState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    return-object p0
.end method

.method public verify()V
    .locals 3

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->type:Lorg/squirrelframework/foundation/fsm/TransitionType;

    sget-object v1, Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->sourceState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionImpl;->targetState:Lorg/squirrelframework/foundation/fsm/ImmutableState;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal transition source state \'%s\' and target state \'%s\' must be same."

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
