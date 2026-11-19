.class public Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/SquirrelComponent;
.implements Lorg/squirrelframework/foundation/component/SquirrelSingleton;


# static fields
.field private static instance:Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;


# instance fields
.field private postProcessorRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;-><init>()V

    sput-object v0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->instance:Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->postProcessorRegistry:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;
    .locals 1

    sget-object v0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->instance:Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;

    return-object v0
.end method

.method public static setInstance(Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;)V
    .locals 0

    sput-object p0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->instance:Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;

    return-void
.end method


# virtual methods
.method public clearRegistry()V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->postProcessorRegistry:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getBestMatchPostProcessor(Ljava/lang/Class;)Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/squirrelframework/foundation/util/ClassComparator;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/util/ClassComparator;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->getBestMatchPostProcessor(Ljava/lang/Class;Ljava/util/Comparator;)Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getBestMatchPostProcessor(Ljava/lang/Class;Ljava/util/Comparator;)Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;>;)",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->getCallablePostProcessors(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;

    return-object p0
.end method

.method public getCallablePostProcessors(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->postProcessorRegistry:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPostProcessor(Ljava/lang/Class;)Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->postProcessorRegistry:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;

    return-object p0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;>;)V"
        }
    .end annotation

    .line 133
    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;

    .line 134
    invoke-virtual {p0, p1, p2}, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->register(Ljava/lang/Class;Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;)V

    return-void
.end method

.method public register(Ljava/lang/Class;Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "postProcess"

    invoke-static {v0, v1}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getFirstMethodOfName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Parameter size of method "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not match."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Parameter type of method "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not correct."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->postProcessorRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->postProcessorRegistry:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;

    instance-of v1, v0, Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;

    invoke-virtual {v0, p2}, Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;->compose(Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;)V

    return-void

    :cond_1
    iget-object v1, p0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->postProcessorRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;

    new-array v2, v4, [Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;-><init>([Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;)V

    invoke-virtual {v1, p2}, Lorg/squirrelframework/foundation/component/impl/CompositePostProcessorImpl;->compose(Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;)V

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->postProcessorRegistry:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Ljava/lang/Class;Lorg/squirrelframework/foundation/util/TypeReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/squirrelframework/foundation/util/TypeReference<",
            "+",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;>;)V"
        }
    .end annotation

    .line 135
    invoke-virtual {p2}, Lorg/squirrelframework/foundation/util/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->register(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public register(Lorg/squirrelframework/foundation/util/TypeReference;Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/squirrelframework/foundation/util/TypeReference<",
            "TT;>;",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Lorg/squirrelframework/foundation/util/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->register(Ljava/lang/Class;Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;)V

    return-void
.end method

.method public unregister(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->postProcessorRegistry:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
