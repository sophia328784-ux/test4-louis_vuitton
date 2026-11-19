.class public Lorg/squirrelframework/foundation/event/ListenerMethod;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final eventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private hasParameter:Z

.field private final isAsync:Z

.field private final method:Ljava/lang/reflect/Method;

.field private final target:Ljava/lang/Object;

.field private final timeout:J


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 5
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->hasParameter:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Parameters cannot be null."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The method "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cannot be used for the given target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->eventType:Ljava/lang/Class;

    iput-object p2, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->target:Ljava/lang/Object;

    iput-object p3, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/squirrelframework/foundation/event/AsyncEventListener;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->isAsync:Z

    if-eqz v2, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/squirrelframework/foundation/event/AsyncEventListener;

    invoke-interface {p2}, Lorg/squirrelframework/foundation/event/AsyncEventListener;->timeout()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, -0x1

    :goto_1
    iput-wide v2, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->timeout:J

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    array-length p3, p2

    if-lez p3, :cond_3

    array-length p3, p2

    if-ne p3, v1, :cond_2

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->hasParameter:Z

    return-void

    :cond_2
    new-instance p0, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;

    sget-object p1, Lorg/squirrelframework/foundation/exception/ErrorCodes;->METHOD_UNEXPECTED_PARAMETERS:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;-><init>(Lorg/squirrelframework/foundation/exception/ErrorCodes;)V

    throw p0

    :cond_3
    return-void
.end method

.method public static synthetic access$000(Lorg/squirrelframework/foundation/event/ListenerMethod;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->method:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/squirrelframework/foundation/event/ListenerMethod;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->target:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/squirrelframework/foundation/event/ListenerMethod;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->hasParameter:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/squirrelframework/foundation/event/ListenerMethod;

    iget-object v2, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->eventType:Ljava/lang/Class;

    iget-object v3, p1, Lorg/squirrelframework/foundation/event/ListenerMethod;->eventType:Ljava/lang/Class;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->target:Ljava/lang/Object;

    iget-object v3, p1, Lorg/squirrelframework/foundation/event/ListenerMethod;->target:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object p0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->method:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lorg/squirrelframework/foundation/event/ListenerMethod;->method:Ljava/lang/reflect/Method;

    if-eq p0, p1, :cond_5

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getEventType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->eventType:Ljava/lang/Class;

    return-object p0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->method:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->target:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->target:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x11

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public invokeMethod(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget-boolean v0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->isAsync:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelConfiguration;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/squirrelframework/foundation/event/ListenerMethod$1;

    invoke-direct {v1, p0, p1}, Lorg/squirrelframework/foundation/event/ListenerMethod$1;-><init>(Lorg/squirrelframework/foundation/event/ListenerMethod;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->target:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->target:Ljava/lang/Object;

    iget-boolean p0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->hasParameter:Z

    if-eqz p0, :cond_1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    :goto_0
    invoke-static {v1, v2, p0}, Lorg/squirrelframework/foundation/util/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public matches(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->target:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public matches(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->target:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p3, p0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->target:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/squirrelframework/foundation/event/ListenerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
