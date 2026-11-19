.class public final Lnet/rtccloud/sdk/event/EventBus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;,
        Lnet/rtccloud/sdk/event/EventBus$MethodCall;,
        Lnet/rtccloud/sdk/event/EventBus$Wrapper;
    }
.end annotation


# static fields
.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final handlerBg:Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

.field private final handlerUi:Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mapOfTargets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Lnet/rtccloud/sdk/event/EventBus$MethodCall;",
            ">;>;"
        }
    .end annotation
.end field

.field private final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->EVENT_BUS:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/event/EventBus;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/event/EventBus;->cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->listeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->methods:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->mapOfTargets:Ljava/util/Map;

    sget-object v0, Lnet/rtccloud/sdk/event/Event$Thread;->MAIN:Lnet/rtccloud/sdk/event/Event$Thread;

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/event/EventBus;->newInvokeHandler(Lnet/rtccloud/sdk/event/Event$Thread;)Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->handlerUi:Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    sget-object v0, Lnet/rtccloud/sdk/event/Event$Thread;->BACKGROUND:Lnet/rtccloud/sdk/event/Event$Thread;

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/event/EventBus;->newInvokeHandler(Lnet/rtccloud/sdk/event/Event$Thread;)Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->handlerBg:Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 55
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->listeners:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->methods:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->mapOfTargets:Ljava/util/Map;

    .line 60
    new-instance v0, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;-><init>(Lnet/rtccloud/sdk/event/EventBus;Landroid/os/Looper;I)V

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->handlerUi:Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    .line 61
    sget-object p1, Lnet/rtccloud/sdk/event/Event$Thread;->BACKGROUND:Lnet/rtccloud/sdk/event/Event$Thread;

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/EventBus;->newInvokeHandler(Lnet/rtccloud/sdk/event/Event$Thread;)Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    move-result-object p1

    iput-object p1, p0, Lnet/rtccloud/sdk/event/EventBus;->handlerBg:Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Looper;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 64
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->listeners:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->methods:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->mapOfTargets:Ljava/util/Map;

    .line 69
    new-instance v0, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;-><init>(Lnet/rtccloud/sdk/event/EventBus;Landroid/os/Looper;I)V

    iput-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->handlerUi:Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    .line 70
    new-instance p1, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    invoke-direct {p1, p0, p2, v1}, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;-><init>(Lnet/rtccloud/sdk/event/EventBus;Landroid/os/Looper;I)V

    iput-object p1, p0, Lnet/rtccloud/sdk/event/EventBus;->handlerBg:Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    return-void
.end method

.method public static bridge synthetic a(Lnet/rtccloud/sdk/event/EventBus;Lnet/rtccloud/sdk/event/EventBus$Wrapper;Lnet/rtccloud/sdk/event/EventBus$MethodCall;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/rtccloud/sdk/event/EventBus;->logMethodInvoke(Lnet/rtccloud/sdk/event/EventBus$Wrapper;Lnet/rtccloud/sdk/event/EventBus$MethodCall;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized addTarget(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
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

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/EventBus;->findTargets(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;

    invoke-direct {v0, p2, p3}, Lnet/rtccloud/sdk/event/EventBus$MethodCall;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static bridge synthetic b()Lnet/rtccloud/sdk/util/OldLogger;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/event/EventBus;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-object v0
.end method

.method private declared-synchronized findTargets(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Lnet/rtccloud/sdk/event/EventBus$MethodCall;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->mapOfTargets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lnet/rtccloud/sdk/event/EventBus;->mapOfTargets:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static declared-synchronized getAnnotatedMethodsOf(Ljava/lang/Object;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-class v0, Lnet/rtccloud/sdk/event/EventBus;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v1, Lnet/rtccloud/sdk/event/EventBus;->cache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_8

    aget-object v6, v2, v5

    const-class v7, Lnet/rtccloud/sdk/event/Event;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@Event methods return type must be void: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_1
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@Event methods must be declared as public: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@Event methods parameter must be a concrete subclass of Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@Event methods must have exactly one argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    sget-object v2, Lnet/rtccloud/sdk/event/EventBus;->cache:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static logAppendNoMethod(Ljava/lang/StringBuilder;)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x2514

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x2500

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "No @Event annotated method found"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static logCallableMethod(Ljava/lang/StringBuilder;ZLnet/rtccloud/sdk/event/EventBus$MethodCall;)V
    .locals 2

    invoke-static {p2}, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->b(Lnet/rtccloud/sdk/event/EventBus$MethodCall;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 p1, 0x2514

    goto :goto_0

    :cond_0
    const/16 p1, 0x251c

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x2500

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "null"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->a(Lnet/rtccloud/sdk/event/EventBus$MethodCall;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static logDeadEvent(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x2514

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x2500

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static logListenerIgnored(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x2514

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x2500

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private logMethodInvoke(Lnet/rtccloud/sdk/event/EventBus$Wrapper;Lnet/rtccloud/sdk/event/EventBus$MethodCall;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    invoke-static {p2}, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->b(Lnet/rtccloud/sdk/event/EventBus$MethodCall;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_0
    const-string p0, "null"

    goto :goto_0

    :goto_1
    invoke-static {p2}, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->a(Lnet/rtccloud/sdk/event/EventBus$MethodCall;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->c(Lnet/rtccloud/sdk/event/EventBus$MethodCall;)Lnet/rtccloud/sdk/event/Event$Thread;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    invoke-static {p1}, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->c(Lnet/rtccloud/sdk/event/EventBus$Wrapper;)J

    move-result-wide p0

    sub-long/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u2709\u2192 %s.%s(%s@%s) [%s] [%dms]"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static logPosting(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x250c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u2500post("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p0, Lnet/rtccloud/sdk/event/util/DeadEvent;

    const-string v2, "@"

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lnet/rtccloud/sdk/event/util/DeadEvent;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/event/util/DeadEvent;->event()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static logRegisteredMethod(Ljava/lang/StringBuilder;ZLjava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Z",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 p1, 0x2514

    goto :goto_0

    :cond_0
    const/16 p1, 0x251c

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x2500

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static logRegistering(Ljava/lang/Object;Z)Ljava/lang/StringBuilder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x250c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2500

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "register("

    goto :goto_0

    :cond_0
    const-string p1, "unregister("

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private newInvokeHandler(Lnet/rtccloud/sdk/event/Event$Thread;)Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/event/EventBus$1;->$SwitchMap$net$rtccloud$sdk$event$Event$Thread:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    new-instance p1, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0, v1}, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;-><init>(Lnet/rtccloud/sdk/event/EventBus;Landroid/os/Looper;I)V

    return-object p1

    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "event-bus-bg"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1, v1}, Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;-><init>(Lnet/rtccloud/sdk/event/EventBus;Landroid/os/Looper;I)V

    return-object v0
.end method

.method private declared-synchronized removeTarget(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
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

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/EventBus;->findTargets(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Lnet/rtccloud/sdk/event/EventBus$MethodCall;

    invoke-direct {v0, p2, p3}, Lnet/rtccloud/sdk/event/EventBus$MethodCall;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->handlerUi:Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->handlerBg:Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->methods:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->mapOfTargets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized listeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->listeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized methods(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/event/EventBus;->methods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized post(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_d

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lnet/rtccloud/sdk/event/EventBus;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lnet/rtccloud/sdk/event/EventBus;->logPosting(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/event/EventBus;->findTargets(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, p1, Lnet/rtccloud/sdk/event/util/DeadEvent;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_4

    const-string p1, "Dead event ignored!"

    invoke-static {v2, p1}, Lnet/rtccloud/sdk/event/EventBus;->logDeadEvent(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :cond_1
    instance-of v3, p1, Lnet/rtccloud/sdk/event/util/ExceptionEvent;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lnet/rtccloud/sdk/event/util/ExceptionEvent;

    invoke-virtual {v3}, Lnet/rtccloud/sdk/event/util/ExceptionEvent;->event()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lnet/rtccloud/sdk/event/util/DeadEvent;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_4

    const-string p1, "Dead event Exception thrown!"

    invoke-static {v2, p1}, Lnet/rtccloud/sdk/event/EventBus;->logDeadEvent(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    const-string v3, "Dead event detected!"

    invoke-static {v2, v3}, Lnet/rtccloud/sdk/event/EventBus;->logDeadEvent(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    :cond_3
    const-class v1, Lnet/rtccloud/sdk/event/util/DeadEvent;

    invoke-direct {p0, v1}, Lnet/rtccloud/sdk/event/EventBus;->findTargets(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lnet/rtccloud/sdk/event/util/DeadEvent;

    invoke-direct {v1, p1}, Lnet/rtccloud/sdk/event/util/DeadEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/rtccloud/sdk/event/EventBus$MethodCall;

    const/4 v7, 0x1

    if-eqz v2, :cond_7

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v1, :cond_6

    move v8, v7

    goto :goto_3

    :cond_6
    move v8, v4

    :goto_3
    invoke-static {v2, v8, v6}, Lnet/rtccloud/sdk/event/EventBus;->logCallableMethod(Ljava/lang/StringBuilder;ZLnet/rtccloud/sdk/event/EventBus$MethodCall;)V

    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk22()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v8, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    :cond_8
    invoke-static {v6, p1}, Lnet/rtccloud/sdk/event/EventBus$Wrapper;->obtain(Lnet/rtccloud/sdk/event/EventBus$MethodCall;Ljava/lang/Object;)Lnet/rtccloud/sdk/event/EventBus$Wrapper;

    move-result-object v9

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v9, Lnet/rtccloud/sdk/event/EventBus$1;->$SwitchMap$net$rtccloud$sdk$event$Event$Thread:[I

    invoke-static {v6}, Lnet/rtccloud/sdk/event/EventBus$MethodCall;->c(Lnet/rtccloud/sdk/event/EventBus$MethodCall;)Lnet/rtccloud/sdk/event/Event$Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v9, v6

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Lnet/rtccloud/sdk/event/EventBus;->handlerUi:Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    invoke-virtual {v8, v6}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    goto :goto_4

    :cond_9
    iget-object v6, p0, Lnet/rtccloud/sdk/event/EventBus;->handlerBg:Lnet/rtccloud/sdk/event/EventBus$InvokeHandler;

    invoke-virtual {v8, v6}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    :goto_4
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_a
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_b

    :try_start_3
    sget-object p1, Lnet/rtccloud/sdk/event/EventBus;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    monitor-exit p0

    return-void

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "[event] must be a concrete subclass of Event"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "[event] must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized register(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->logRegistering(Ljava/lang/Object;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/rtccloud/sdk/event/EventBus;->listeners:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, Lnet/rtccloud/sdk/event/EventBus;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/util/OldLogger;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "already registered"

    invoke-static {v1, v0}, Lnet/rtccloud/sdk/event/EventBus;->logListenerIgnored(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Lnet/rtccloud/sdk/event/EventBus;->getAnnotatedMethodsOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lnet/rtccloud/sdk/event/EventBus;->listeners:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lnet/rtccloud/sdk/event/EventBus;->methods:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    aget-object v8, v8, v5

    sget-object v9, Lnet/rtccloud/sdk/event/EventBus;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v9}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v3, :cond_2

    move v9, v0

    goto :goto_2

    :cond_2
    move v9, v5

    :goto_2
    invoke-static {v1, v9, v7, v8}, Lnet/rtccloud/sdk/event/EventBus;->logRegisteredMethod(Ljava/lang/StringBuilder;ZLjava/lang/reflect/Method;Ljava/lang/Class;)V

    :cond_3
    invoke-direct {p0, v8, p1, v7}, Lnet/rtccloud/sdk/event/EventBus;->addTarget(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    goto :goto_1

    :cond_4
    sget-object p1, Lnet/rtccloud/sdk/event/EventBus;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lnet/rtccloud/sdk/event/EventBus;->logAppendNoMethod(Ljava/lang/StringBuilder;)V

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "[listener] must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized targets(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Lnet/rtccloud/sdk/event/EventBus$MethodCall;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/EventBus;->findTargets(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->logRegistering(Ljava/lang/Object;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/rtccloud/sdk/event/EventBus;->listeners:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lnet/rtccloud/sdk/event/EventBus;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/util/OldLogger;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "not registered yet"

    invoke-static {v1, v0}, Lnet/rtccloud/sdk/event/EventBus;->logListenerIgnored(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Lnet/rtccloud/sdk/event/EventBus;->getAnnotatedMethodsOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lnet/rtccloud/sdk/event/EventBus;->listeners:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lnet/rtccloud/sdk/event/EventBus;->methods:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v0

    sget-object v8, Lnet/rtccloud/sdk/event/EventBus;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v8}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v3, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    move v8, v0

    :goto_2
    invoke-static {v1, v8, v6, v7}, Lnet/rtccloud/sdk/event/EventBus;->logRegisteredMethod(Ljava/lang/StringBuilder;ZLjava/lang/reflect/Method;Ljava/lang/Class;)V

    :cond_3
    invoke-direct {p0, v7, p1, v6}, Lnet/rtccloud/sdk/event/EventBus;->removeTarget(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    goto :goto_1

    :cond_4
    sget-object p1, Lnet/rtccloud/sdk/event/EventBus;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lnet/rtccloud/sdk/event/EventBus;->logAppendNoMethod(Ljava/lang/StringBuilder;)V

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "[listener] must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
