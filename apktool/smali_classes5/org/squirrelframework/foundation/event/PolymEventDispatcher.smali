.class public Lorg/squirrelframework/foundation/event/PolymEventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/SquirrelComponent;


# instance fields
.field private listeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lorg/squirrelframework/foundation/event/ListenerMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->listeners:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public fireEvent(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->listeners:Ljava/util/LinkedHashSet;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/squirrelframework/foundation/event/ListenerMethod;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/squirrelframework/foundation/event/ListenerMethod;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/squirrelframework/foundation/event/ListenerMethod;->getEventType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Lorg/squirrelframework/foundation/event/ListenerMethod;->invokeMethod(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getListenerSize()I
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->listeners:Ljava/util/LinkedHashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->listeners:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->listeners:Ljava/util/LinkedHashSet;

    :cond_0
    iget-object p0, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->listeners:Ljava/util/LinkedHashSet;

    new-instance v0, Lorg/squirrelframework/foundation/event/ListenerMethod;

    invoke-direct {v0, p1, p2, p3}, Lorg/squirrelframework/foundation/event/ListenerMethod;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregister(Lcom/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Lorg/squirrelframework/foundation/event/ListenerMethod;",
            ">;)V"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->listeners:Ljava/util/LinkedHashSet;

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    :cond_0
    return-void
.end method

.method public unregister(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->listeners:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/event/PolymEventDispatcher$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/squirrelframework/foundation/event/PolymEventDispatcher$1;-><init>(Lorg/squirrelframework/foundation/event/PolymEventDispatcher;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    :cond_0
    return-void
.end method

.method public unregister(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->listeners:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/event/PolymEventDispatcher$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/squirrelframework/foundation/event/PolymEventDispatcher$2;-><init>(Lorg/squirrelframework/foundation/event/PolymEventDispatcher;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    check-cast p1, Lorg/squirrelframework/foundation/event/ListenerMethod;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->listeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-static {}, Lb21;->x()V

    :cond_2
    return-void
.end method

.method public unregisterAll()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->listeners:Ljava/util/LinkedHashSet;

    return-void
.end method
