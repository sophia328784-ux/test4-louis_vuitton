.class public Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/SquirrelComponent;
.implements Lorg/squirrelframework/foundation/component/SquirrelSingleton;


# static fields
.field private static instance:Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;


# instance fields
.field private instanceRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;-><init>()V

    sput-object v0, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->instance:Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->instanceRegistry:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;
    .locals 1

    sget-object v0, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->instance:Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;

    return-object v0
.end method

.method public static setInstance(Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;)V
    .locals 0

    sput-object p0, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->instance:Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;

    return-void
.end method


# virtual methods
.method public clearRegistry()V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->instanceRegistry:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->instanceRegistry:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/squirrelframework/foundation/component/SquirrelProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->register(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->instanceRegistry:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

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

    iget-object p0, p0, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->instanceRegistry:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
