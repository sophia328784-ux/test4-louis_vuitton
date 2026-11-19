.class Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl$2;
.super Lorg/squirrelframework/foundation/fsm/ActionWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->warpConditionalAction(Lorg/squirrelframework/foundation/fsm/Action;)Lorg/squirrelframework/foundation/fsm/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/squirrelframework/foundation/fsm/ActionWrapper<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl$2;->this$0:Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;

    invoke-direct {p0, p2}, Lorg/squirrelframework/foundation/fsm/ActionWrapper;-><init>(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl$2;->this$0:Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;

    invoke-static {v0}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->access$100(Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;)Lorg/squirrelframework/foundation/fsm/Condition;

    move-result-object v0

    invoke-static {v0, p4}, Lorg/squirrelframework/foundation/fsm/Conditions;->isSatified(Lorg/squirrelframework/foundation/fsm/Condition;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/squirrelframework/foundation/fsm/ActionWrapper;->execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    :cond_0
    return-void
.end method
