.class Lorg/squirrelframework/foundation/event/PolymEventDispatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->unregister(Ljava/lang/Class;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Lorg/squirrelframework/foundation/event/ListenerMethod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

.field final synthetic val$eventType:Ljava/lang/Class;

.field final synthetic val$target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/event/PolymEventDispatcher;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher$1;->this$0:Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

    iput-object p2, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher$1;->val$eventType:Ljava/lang/Class;

    iput-object p3, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher$1;->val$target:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 9
    check-cast p1, Lorg/squirrelframework/foundation/event/ListenerMethod;

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/event/PolymEventDispatcher$1;->apply(Lorg/squirrelframework/foundation/event/ListenerMethod;)Z

    move-result p0

    return p0
.end method

.method public apply(Lorg/squirrelframework/foundation/event/ListenerMethod;)Z
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher$1;->val$eventType:Ljava/lang/Class;

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher$1;->val$target:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lorg/squirrelframework/foundation/event/ListenerMethod;->matches(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
