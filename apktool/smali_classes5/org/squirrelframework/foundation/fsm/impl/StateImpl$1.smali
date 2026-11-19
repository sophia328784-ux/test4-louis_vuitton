.class Lorg/squirrelframework/foundation/fsm/impl/StateImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->prioritizeTransitions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
        "TT;TS;TE;TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/StateImpl;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/StateImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateImpl$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;

    check-cast p2, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;

    invoke-virtual {p0, p1, p2}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl$1;->compare(Lorg/squirrelframework/foundation/fsm/ImmutableTransition;Lorg/squirrelframework/foundation/fsm/ImmutableTransition;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/squirrelframework/foundation/fsm/ImmutableTransition;Lorg/squirrelframework/foundation/fsm/ImmutableTransition;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "TT;TS;TE;TC;>;",
            "Lorg/squirrelframework/foundation/fsm/ImmutableTransition<",
            "TT;TS;TE;TC;>;)I"
        }
    .end annotation

    invoke-interface {p2}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getPriority()I

    move-result p0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/ImmutableTransition;->getPriority()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method
