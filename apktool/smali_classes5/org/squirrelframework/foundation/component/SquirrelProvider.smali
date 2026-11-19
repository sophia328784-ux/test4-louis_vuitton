.class public Lorg/squirrelframework/foundation/component/SquirrelProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/SquirrelSingleton;


# static fields
.field private static instance:Lorg/squirrelframework/foundation/component/SquirrelProvider;


# instance fields
.field private implementationRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/squirrelframework/foundation/component/SquirrelProvider;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;-><init>()V

    sput-object v0, Lorg/squirrelframework/foundation/component/SquirrelProvider;->instance:Lorg/squirrelframework/foundation/component/SquirrelProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/component/SquirrelProvider;->implementationRegistry:Ljava/util/Map;

    return-void
.end method

.method private findImplementationClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Impl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".impl."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private fromRegistry(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/SquirrelProvider;->implementationRegistry:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;
    .locals 1

    sget-object v0, Lorg/squirrelframework/foundation/component/SquirrelProvider;->instance:Lorg/squirrelframework/foundation/component/SquirrelProvider;

    return-object v0
.end method

.method private postProcess(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/component/SquirrelPostProcessorProvider;->getPostProcessor(Ljava/lang/Class;)Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p0, p2}, Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;->postProcess(Ljava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method private resolveImplIfInterface(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->fromRegistry(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result p2

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->fromRegistry(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->findImplementationClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->register(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_2
    invoke-direct {p0, v0, p2}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->resolveImplIfInterface(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "Registration cycles: "

    invoke-static {p2, p0}, La61;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setInstance(Lorg/squirrelframework/foundation/component/SquirrelProvider;)V
    .locals 0

    sput-object p0, Lorg/squirrelframework/foundation/component/SquirrelProvider;->instance:Lorg/squirrelframework/foundation/component/SquirrelProvider;

    return-void
.end method


# virtual methods
.method public clearRegistry()V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/SquirrelProvider;->implementationRegistry:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getImplementation(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->resolveImplIfInterface(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, p1, v0, v0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public newInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getImplementation(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez p3, :cond_0

    invoke-static {v0}, Lorg/squirrelframework/foundation/util/ReflectUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->postProcess(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p2}, Lorg/squirrelframework/foundation/util/ReflectUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    invoke-static {p2, p3}, Lorg/squirrelframework/foundation/util/ReflectUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->postProcess(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public newInstance(Lorg/squirrelframework/foundation/util/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/squirrelframework/foundation/util/TypeReference<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0, v0}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public newInstance(Lorg/squirrelframework/foundation/util/TypeReference;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/squirrelframework/foundation/util/TypeReference<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Lorg/squirrelframework/foundation/util/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/SquirrelProvider;->implementationRegistry:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/SquirrelProvider;->implementationRegistry:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
