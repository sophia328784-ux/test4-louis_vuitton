.class Lorg/squirrelframework/foundation/fsm/impl/EntryExitActionBuilderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder;
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
        "Lorg/squirrelframework/foundation/fsm/builder/EntryExitActionBuilder<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/component/SquirrelComponent;"
    }
.end annotation


# instance fields
.field private final executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

.field private final isEntryAction:Z

.field private final state:Lorg/squirrelframework/foundation/fsm/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/MutableState;ZLorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/MutableState<",
            "TT;TS;TE;TC;>;Z",
            "Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/EntryExitActionBuilderImpl;->state:Lorg/squirrelframework/foundation/fsm/MutableState;

    iput-boolean p2, p0, Lorg/squirrelframework/foundation/fsm/impl/EntryExitActionBuilderImpl;->isEntryAction:Z

    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/EntryExitActionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    return-void
.end method


# virtual methods
.method public callMethod(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/EntryExitActionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMethodCallActionProxy(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/EntryExitActionBuilderImpl;->perform(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method

.method public evalMvel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/EntryExitActionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMvelAction(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/EntryExitActionBuilderImpl;->perform(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method

.method public perform(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;>;)V"
        }
    .end annotation

    .line 14
    iget-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/EntryExitActionBuilderImpl;->isEntryAction:Z

    .line 15
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/EntryExitActionBuilderImpl;->state:Lorg/squirrelframework/foundation/fsm/MutableState;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/MutableState;->addEntryActions(Ljava/util/List;)V

    return-void

    .line 17
    :cond_0
    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/MutableState;->addExitActions(Ljava/util/List;)V

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

    iget-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/impl/EntryExitActionBuilderImpl;->isEntryAction:Z

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/EntryExitActionBuilderImpl;->state:Lorg/squirrelframework/foundation/fsm/MutableState;

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/MutableState;->addEntryAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lorg/squirrelframework/foundation/fsm/MutableState;->addExitAction(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method
