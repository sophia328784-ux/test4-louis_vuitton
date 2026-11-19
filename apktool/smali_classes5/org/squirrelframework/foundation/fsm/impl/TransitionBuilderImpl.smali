.class Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder;
.implements Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder;
.implements Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder;
.implements Lorg/squirrelframework/foundation/fsm/builder/From;
.implements Lorg/squirrelframework/foundation/fsm/builder/To;
.implements Lorg/squirrelframework/foundation/fsm/builder/On;
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
        "Lorg/squirrelframework/foundation/fsm/builder/ExternalTransitionBuilder<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/InternalTransitionBuilder<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/LocalTransitionBuilder<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/From<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/To<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/On<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/component/SquirrelComponent;"
    }
.end annotation


# instance fields
.field private final executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

.field private final priority:I

.field private sourceState:Lorg/squirrelframework/foundation/fsm/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
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

.field private targetState:Lorg/squirrelframework/foundation/fsm/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private transition:Lorg/squirrelframework/foundation/fsm/MutableTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/MutableTransition<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private final transitionType:Lorg/squirrelframework/foundation/fsm/TransitionType;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lorg/squirrelframework/foundation/fsm/TransitionType;ILorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)V
    .locals 0
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

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->states:Ljava/util/Map;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->transitionType:Lorg/squirrelframework/foundation/fsm/TransitionType;

    iput p3, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->priority:I

    iput-object p4, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    return-void
.end method


# virtual methods
.method public callMethod(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMethodCallActionProxy(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    move-result-object p1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->transition:Lorg/squirrelframework/foundation/fsm/MutableTransition;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->addAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method

.method public evalMvel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMvelAction(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object p1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->transition:Lorg/squirrelframework/foundation/fsm/MutableTransition;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->addAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method

.method public from(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/From;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/From<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->sourceState:Lorg/squirrelframework/foundation/fsm/MutableState;

    return-object p0
.end method

.method public on(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/On;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/squirrelframework/foundation/fsm/builder/On<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->sourceState:Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/MutableState;->addTransitionOn(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableTransition;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->transition:Lorg/squirrelframework/foundation/fsm/MutableTransition;

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->targetState:Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {p1, v0}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setTargetState(Lorg/squirrelframework/foundation/fsm/ImmutableState;)V

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->transition:Lorg/squirrelframework/foundation/fsm/MutableTransition;

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->transitionType:Lorg/squirrelframework/foundation/fsm/TransitionType;

    invoke-interface {p1, v0}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setType(Lorg/squirrelframework/foundation/fsm/TransitionType;)V

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->transition:Lorg/squirrelframework/foundation/fsm/MutableTransition;

    iget v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->priority:I

    invoke-interface {p1, v0}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setPriority(I)V

    return-object p0
.end method

.method public perform(Ljava/util/List;)V
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

    .line 6
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->transition:Lorg/squirrelframework/foundation/fsm/MutableTransition;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->addActions(Ljava/util/List;)V

    return-void
.end method

.method public perform(Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->transition:Lorg/squirrelframework/foundation/fsm/MutableTransition;

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->addAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method

.method public to(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/To;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/To<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->targetState:Lorg/squirrelframework/foundation/fsm/MutableState;

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

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->targetState:Lorg/squirrelframework/foundation/fsm/MutableState;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableState;->isFinalState()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->targetState:Lorg/squirrelframework/foundation/fsm/MutableState;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/squirrelframework/foundation/fsm/MutableState;->setFinal(Z)V

    :cond_0
    return-object p0
.end method

.method public when(Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/builder/When;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/builder/When<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->transition:Lorg/squirrelframework/foundation/fsm/MutableTransition;

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setCondition(Lorg/squirrelframework/foundation/fsm/Condition;)V

    return-object p0
.end method

.method public whenMvel(Ljava/lang/String;)Lorg/squirrelframework/foundation/fsm/builder/When;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/builder/When<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->getScriptManager()Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMvelCondition(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/MvelScriptManager;)Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object p1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->transition:Lorg/squirrelframework/foundation/fsm/MutableTransition;

    invoke-interface {v0, p1}, Lorg/squirrelframework/foundation/fsm/MutableTransition;->setCondition(Lorg/squirrelframework/foundation/fsm/Condition;)V

    return-object p0
.end method

.method public within(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/To;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/To<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->states:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->getState(Ljava/util/Map;Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/MutableState;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->targetState:Lorg/squirrelframework/foundation/fsm/MutableState;

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TransitionBuilderImpl;->sourceState:Lorg/squirrelframework/foundation/fsm/MutableState;

    return-object p0
.end method
