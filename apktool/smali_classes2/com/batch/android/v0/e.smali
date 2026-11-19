.class public Lcom/batch/android/v0/e;
.super Lcom/batch/android/v0/b;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "EventDispatcher"

.field private static final e:Ljava/lang/String; = "com.batch.android.eventdispatcher.DispatcherRegistrar"

.field private static final f:Ljava/lang/String; = "com.batch.android.eventdispatcher:"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/batch/android/BatchEventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/batch/android/v0/h;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/batch/android/v0/h;)V
    .locals 1

    invoke-direct {p0}, Lcom/batch/android/v0/b;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/batch/android/v0/e;->a:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/v0/e;->c:Z

    iput-object p1, p0, Lcom/batch/android/v0/e;->b:Lcom/batch/android/v0/h;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "The version of your event dispatcher: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is outdated, please update it."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EventDispatcher"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 189
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Adding event dispatcher: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EventDispatcher"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j()Lcom/batch/android/v0/e;
    .locals 2

    new-instance v0, Lcom/batch/android/v0/e;

    invoke-static {}, Lcom/batch/android/n/v;->a()Lcom/batch/android/v0/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/v0/e;-><init>(Lcom/batch/android/v0/h;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/batch/android/Batch$EventDispatcher$Type;Lcom/batch/android/Batch$EventDispatcher$Payload;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/batch/android/v0/e;->b:Lcom/batch/android/v0/h;

    invoke-virtual {v1}, Lcom/batch/android/v0/h;->i()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "EventDispatcher"

    const-string p1, "Batch is opted out, refusing to dispatch event."

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/batch/android/v0/e;->a:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/batch/android/v0/e;->a:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/BatchEventDispatcher;

    invoke-interface {v1, p1, p2}, Lcom/batch/android/BatchEventDispatcher;->dispatchEvent(Lcom/batch/android/Batch$EventDispatcher$Type;Lcom/batch/android/Batch$EventDispatcher$Payload;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/batch/android/BatchEventDispatcher;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/batch/android/v0/e;->a:Ljava/util/Set;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/batch/android/v0/e;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Landroid/content/Context;)V
    .locals 6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/batch/android/v0/e;->b:Lcom/batch/android/v0/h;

    invoke-virtual {v1, p1}, Lcom/batch/android/v0/h;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "EventDispatcher"

    const-string p1, "Batch is opted out, refusing to add event dispatchers."

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/batch/android/v0/e;->a:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/batch/android/v0/e;->c:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/batch/android/v0/e;->c:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/batch/android/eventdispatcher/DispatcherDiscoveryService;

    const-string v1, "com.batch.android.eventdispatcher.DispatcherRegistrar"

    const-string v2, "com.batch.android.eventdispatcher:"

    invoke-static {p1, v0, v1, v2}, Lcom/batch/android/e/g;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/batch/android/eventdispatcher/DispatcherRegistrar;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "EventDispatcher"

    const-string v3, "com.batch.android.eventdispatcher.DispatcherRegistrar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not an instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v2

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/eventdispatcher/DispatcherRegistrar;

    invoke-interface {v2, p1}, Lcom/batch/android/eventdispatcher/DispatcherRegistrar;->getDispatcher(Landroid/content/Context;)Lcom/batch/android/BatchEventDispatcher;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/batch/android/v0/e;->a(Lcom/batch/android/BatchEventDispatcher;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v2}, Lcom/batch/android/BatchEventDispatcher;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Lcom/batch/android/BatchEventDispatcher;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lcom/batch/android/v0/e;->a(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v3}, Lcom/batch/android/v0/e;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-direct {p0, v3}, Lcom/batch/android/v0/e;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not instantiate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    return-void

    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public b(Lcom/batch/android/BatchEventDispatcher;)Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/batch/android/v0/e;->a:Ljava/util/Set;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object p0, p0, Lcom/batch/android/v0/e;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, "eventdispatcher"

    return-object p0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public i()Lcom/batch/android/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/v0/e;->a:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/batch/android/v0/e;->a:Ljava/util/Set;

    invoke-static {p0}, Lcom/batch/android/p/a;->a(Ljava/util/Set;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
