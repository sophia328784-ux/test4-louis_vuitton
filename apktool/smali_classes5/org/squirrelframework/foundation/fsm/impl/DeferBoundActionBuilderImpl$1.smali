.class Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->perform(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lorg/squirrelframework/foundation/fsm/Action<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/Action<",
        "TT;TS;TE;TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/squirrelframework/foundation/fsm/Action;

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl$1;->apply(Lorg/squirrelframework/foundation/fsm/Action;)Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lorg/squirrelframework/foundation/fsm/Action;)Lorg/squirrelframework/foundation/fsm/Action;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;

    invoke-static {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;->access$000(Lorg/squirrelframework/foundation/fsm/impl/DeferBoundActionBuilderImpl;Lorg/squirrelframework/foundation/fsm/Action;)Lorg/squirrelframework/foundation/fsm/Action;

    move-result-object p0

    return-object p0
.end method
