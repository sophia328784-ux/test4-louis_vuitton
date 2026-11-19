.class public abstract Lorg/squirrelframework/foundation/component/impl/AbstractSubject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/Observable;


# instance fields
.field private eventDispatcher:Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

.field private notifiable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->notifiable:Z

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getFirstMethodOfName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
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

    iget-object v0, p0, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->eventDispatcher:Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    const-class v1, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

    iput-object v0, p0, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->eventDispatcher:Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

    :cond_0
    iget-object p0, p0, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->eventDispatcher:Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

    invoke-virtual {p0, p1, p2, p3}, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->register(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->eventDispatcher:Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->isNotifiable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->eventDispatcher:Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->fireEvent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getListenerSize()I
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->eventDispatcher:Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->getListenerSize()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNotifiable()Z
    .locals 0

    iget-boolean p0, p0, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->notifiable:Z

    return p0
.end method

.method public removeAllListeners()V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->eventDispatcher:Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->unregisterAll()V

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Lorg/squirrelframework/foundation/event/ListenerMethod;",
            ">;)V"
        }
    .end annotation

    .line 14
    iget-object p0, p0, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->eventDispatcher:Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->unregister(Lcom/google/common/base/Predicate;)V

    :cond_0
    return-void
.end method

.method public removeListener(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->eventDispatcher:Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->unregister(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getFirstMethodOfName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0
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

    .line 12
    iget-object p0, p0, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->eventDispatcher:Lorg/squirrelframework/foundation/event/PolymEventDispatcher;

    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lorg/squirrelframework/foundation/event/PolymEventDispatcher;->unregister(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    :cond_0
    return-void
.end method

.method public setNotifiable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/squirrelframework/foundation/component/impl/AbstractSubject;->notifiable:Z

    return-void
.end method
