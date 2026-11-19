.class Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder;
.implements Lorg/squirrelframework/foundation/fsm/builder/MultiFrom;
.implements Lorg/squirrelframework/foundation/fsm/builder/From;
.implements Lorg/squirrelframework/foundation/fsm/builder/MultiTo;
.implements Lorg/squirrelframework/foundation/fsm/builder/To;
.implements Lorg/squirrelframework/foundation/fsm/builder/On;
.implements Lorg/squirrelframework/foundation/fsm/builder/Between;
.implements Lorg/squirrelframework/foundation/fsm/builder/And;
.implements Lorg/squirrelframework/foundation/component/SquirrelComponent;


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
        "Lorg/squirrelframework/foundation/fsm/builder/MultiTransitionBuilder<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/MultiFrom<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/From<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/MultiTo<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/To<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/On<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/Between<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/And<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/component/SquirrelComponent;"
    }
.end annotation


# instance fields
.field private final executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

.field private final priority:I

.field private final sourceStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end field

.field private final states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TS;",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end field

.field private final targetStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end field

.field private final transitionType:Lorg/squirrelframework/foundation/fsm/TransitionType;

.field private final transitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/MutableTransition<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lorg/squirrelframework/foundation/fsm/TransitionType;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TS;",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;>;",
            "Lorg/squirrelframework/foundation/fsm/TransitionType;",
            "I",
            "Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->sourceStates:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->targetStates:Ljava/util/List;

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->states:Ljava/util/Map;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitionType:Lorg/squirrelframework/foundation/fsm/TransitionType;

    iput p3, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->priority:I

    iput-object p4, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    return-void
.end method


# virtual methods
.method public and(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/And;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/And<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->targetStates:Ljava/util/List;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v1, p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public between(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/Between;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/Between<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->sourceStates:Ljava/util/List;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v1, p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public callMethod(Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x7c

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->d(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-ge v2, v0, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, -0x1

    :goto_1
    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {v3, v4}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMethodCallActionProxy(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    move-result-object v3

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/squirrelframework/foundation/fsm/MutableTransition;

    invoke-interface {v4, v3}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->addAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public evalMvel(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/MutableTransition;

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {p1, v2}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMvelAction(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->addAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public from(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/MultiFrom;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiFrom<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->sourceStates:Ljava/util/List;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v1, p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs fromAmong([Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/From;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/From<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->sourceStates:Ljava/util/List;

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v4, v2}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public on(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/On;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/squirrelframework/foundation/fsm/builder/On<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->sourceStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/MutableState;

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->targetStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {v1, p1}, Lorg/squirrelframework/foundation/fsm/MutableState;->addTransitionOn(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableTransition;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setTargetState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitionType:Lorg/squirrelframework/foundation/fsm/TransitionType;

    invoke-interface {v4, v3}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setType(Lorg/squirrelframework/foundation/fsm/TransitionType;)V

    iget v3, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->priority:I

    invoke-interface {v4, v3}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setPriority(I)V

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public varargs onEach([Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/On;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/squirrelframework/foundation/fsm/builder/On<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->sourceStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->targetStates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    if-ge v5, v3, :cond_0

    move v6, v3

    goto :goto_2

    :cond_0
    move v6, v5

    :goto_2
    if-ge v6, v0, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v0, -0x1

    :goto_3
    iget-object v7, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->sourceStates:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/squirrelframework/foundation/fsm/MutableState;

    aget-object v6, p1, v6

    invoke-interface {v7, v6}, Lorg/squirrelframework/foundation/fsm/MutableState;->addTransitionOn(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableTransition;

    move-result-object v6

    iget-object v7, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->targetStates:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {v6, v7}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setTargetState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V

    iget-object v7, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitionType:Lorg/squirrelframework/foundation/fsm/TransitionType;

    invoke-interface {v6, v7}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setType(Lorg/squirrelframework/foundation/fsm/TransitionType;)V

    iget v7, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->priority:I

    invoke-interface {v6, v7}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setPriority(I)V

    iget-object v7, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitions:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public onMutual(Ljava/lang/Object;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/On;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lorg/squirrelframework/foundation/fsm/builder/On<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->sourceStates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/MutableState;->addTransitionOn(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableTransition;

    move-result-object p1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->targetStates:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {p1, v0}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setTargetState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitionType:Lorg/squirrelframework/foundation/fsm/TransitionType;

    invoke-interface {p1, v0}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setType(Lorg/squirrelframework/foundation/fsm/TransitionType;)V

    iget v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->priority:I

    invoke-interface {p1, v0}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setPriority(I)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->targetStates:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {p1, p2}, Lorg/squirrelframework/foundation/fsm/MutableState;->addTransitionOn(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableTransition;

    move-result-object p1

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->sourceStates:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/squirrelframework/foundation/fsm/ImmutableState;

    invoke-interface {p1, p2}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setTargetState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitionType:Lorg/squirrelframework/foundation/fsm/TransitionType;

    invoke-interface {p1, p2}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setType(Lorg/squirrelframework/foundation/fsm/TransitionType;)V

    iget p2, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->priority:I

    invoke-interface {p1, p2}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setPriority(I)V

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public perform(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-ge v2, v0, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, -0x1

    :goto_1
    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/squirrelframework/foundation/fsm/MutableTransition;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {v4, v3}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->addAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public perform(Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/MutableTransition;

    .line 41
    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->addAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public to(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/To;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/To<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->targetStates:Ljava/util/List;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v1, p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs toAmong([Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/MultiTo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/MultiTo<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->targetStates:Ljava/util/List;

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v4, v2}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public toFinal(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/To;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/To<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/squirrelframework/foundation/fsm/MutableState;->setFinal(Z)V

    :cond_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->targetStates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public when(Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/builder/When;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/builder/When<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/MutableTransition;

    invoke-interface {v1, p1}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setCondition(Lorg/squirrelframework/foundation/fsm/Condition;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public whenMvel(Ljava/lang/String;)Lorg/squirrelframework/foundation/fsm/builder/When;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/builder/When<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->transitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/MutableTransition;

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/MultiTransitionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-virtual {v2}, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->getScriptManager()Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMvelCondition(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/MvelScriptManager;)Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setCondition(Lorg/squirrelframework/foundation/fsm/Condition;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method
