.class Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionContext"
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
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final action:Lorg/squirrelframework/foundation/fsm/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final event:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final from:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field final fsm:Lorg/squirrelframework/foundation/fsm/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final position:I

.field final to:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/squirrelframework/foundation/fsm/Action;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;TS;TS;TE;TC;TT;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->action:Lorg/squirrelframework/foundation/fsm/Action;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->from:Ljava/lang/Object;

    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->to:Ljava/lang/Object;

    iput-object p4, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->event:Ljava/lang/Object;

    iput-object p5, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->context:Ljava/lang/Object;

    iput-object p6, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->fsm:Lorg/squirrelframework/foundation/fsm/StateMachine;

    iput p7, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->position:I

    return-void
.end method

.method public static get(Lorg/squirrelframework/foundation/fsm/Action;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;I)Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;
    .locals 8
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
            ">(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;TS;TS;TE;TC;TT;I)",
            "Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;-><init>(Lorg/squirrelframework/foundation/fsm/Action;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->fsm:Lorg/squirrelframework/foundation/fsm/StateMachine;

    check-cast v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->from:Ljava/lang/Object;

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->to:Ljava/lang/Object;

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->event:Ljava/lang/Object;

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->context:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->beforeActionInvoked(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->action:Lorg/squirrelframework/foundation/fsm/Action;

    iget-object v6, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->from:Ljava/lang/Object;

    iget-object v7, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->to:Ljava/lang/Object;

    iget-object v8, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->event:Ljava/lang/Object;

    iget-object v9, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->context:Ljava/lang/Object;

    iget-object v10, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->fsm:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-interface/range {v5 .. v10}, Lorg/squirrelframework/foundation/fsm/Action;->execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->from:Ljava/lang/Object;

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->to:Ljava/lang/Object;

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->event:Ljava/lang/Object;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->context:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->afterActionInvoked(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
