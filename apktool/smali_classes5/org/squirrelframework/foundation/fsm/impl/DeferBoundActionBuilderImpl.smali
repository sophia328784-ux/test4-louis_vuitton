.class public Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionBuilder;
.implements Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionFrom;
.implements Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionTo;
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
        "Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionBuilder<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionFrom<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionTo<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/builder/On<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/component/SquirrelComponent;"
    }
.end annotation


# instance fields
.field private condition:Lorg/squirrelframework/foundation/fsm/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;"
        }
    .end annotation
.end field

.field private deferBoundActionInfo:Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field private final deferBoundActionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo<",
            "TT;TS;TE;TC;>;>;"
        }
    .end annotation
.end field

.field private final executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

.field private from:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private to:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo<",
            "TT;TS;TE;TC;>;>;",
            "Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->deferBoundActionInfoList:Ljava/util/List;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    return-void
.end method

.method public static synthetic access$000(Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;Lorg/squirrelframework/foundation/fsm/Action;)Lorg/squirrelframework/foundation/fsm/Action;
    .locals 0

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->warpConditionalAction(Lorg/squirrelframework/foundation/fsm/Action;)Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;)Lorg/squirrelframework/foundation/fsm/Condition;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->condition:Lorg/squirrelframework/foundation/fsm/Condition;

    return-object p0
.end method

.method private warpConditionalAction(Lorg/squirrelframework/foundation/fsm/Action;)Lorg/squirrelframework/foundation/fsm/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl$2;

    invoke-direct {v0, p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl$2;-><init>(Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;Lorg/squirrelframework/foundation/fsm/Action;)V

    return-object v0
.end method


# virtual methods
.method public callMethod(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMethodCallActionProxy(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/impl/MethodCallActionProxyImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->perform(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method

.method public evalMvel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-static {p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMvelAction(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;)Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->perform(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method

.method public from(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionFrom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionFrom<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->from:Ljava/lang/Object;

    return-object p0
.end method

.method public fromAny()Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionFrom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionFrom<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public on(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/On;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/squirrelframework/foundation/fsm/builder/On<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->from:Ljava/lang/Object;

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->to:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->deferBoundActionInfo:Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->deferBoundActionInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public onAny()Lorg/squirrelframework/foundation/fsm/builder/On;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/On<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->from:Ljava/lang/Object;

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->to:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->deferBoundActionInfo:Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->deferBoundActionInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
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

    .line 26
    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->condition:Lorg/squirrelframework/foundation/fsm/Condition;

    if-nez v0, :cond_0

    .line 27
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->deferBoundActionInfo:Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;->setActions(Ljava/util/List;)V

    return-void

    .line 28
    :cond_0
    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl$1;

    invoke-direct {v0, p0}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl$1;-><init>(Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;)V

    invoke-static {v0, p1}, Lcom/google/common/collect/Lists;->d(Lcom/google/common/base/Function;Ljava/util/List;)Ljava/util/AbstractList;

    move-result-object p1

    .line 29
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->deferBoundActionInfo:Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;->setActions(Ljava/util/List;)V

    return-void
.end method

.method public perform(Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->condition:Lorg/squirrelframework/foundation/fsm/Condition;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->deferBoundActionInfo:Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;->setActions(Ljava/util/List;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->warpConditionalAction(Lorg/squirrelframework/foundation/fsm/Action;)Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionInfo;->setActions(Ljava/util/List;)V

    return-void
.end method

.method public to(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionTo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionTo<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->to:Ljava/lang/Object;

    return-object p0
.end method

.method public toAny()Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionTo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/builder/DeferBoundActionTo<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public when(Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/builder/When;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/builder/When<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->condition:Lorg/squirrelframework/foundation/fsm/Condition;

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

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->executionContext:Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/impl/ExecutionContext;->getScriptManager()Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/squirrelframework/foundation/fsm/impl/FSM;->newMvelCondition(Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/MvelScriptManager;)Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->condition:Lorg/squirrelframework/foundation/fsm/Condition;

    return-object p0
.end method
