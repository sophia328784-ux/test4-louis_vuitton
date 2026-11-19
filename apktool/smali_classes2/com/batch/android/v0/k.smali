.class public final Lcom/batch/android/v0/k;
.super Lcom/batch/android/v0/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/o/e$b;


# static fields
.field public static final k:Ljava/lang/String; = "Tracker"


# instance fields
.field private a:Lcom/batch/android/k1/b;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/batch/android/o/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lcom/batch/android/o/e;

.field private f:I

.field private final g:Lcom/batch/android/v0/h;

.field private final h:Lcom/batch/android/v0/f;

.field private final i:Lcom/batch/android/s/a;

.field private final j:Lcom/batch/android/v0/j;


# direct methods
.method private constructor <init>(Lcom/batch/android/v0/h;Lcom/batch/android/v0/f;Lcom/batch/android/s/a;Lcom/batch/android/v0/j;)V
    .locals 2

    invoke-direct {p0}, Lcom/batch/android/v0/b;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/batch/android/v0/k;->b:Ljava/util/Queue;

    new-instance v0, Lcom/batch/android/e/v;

    invoke-direct {v0}, Lcom/batch/android/e/v;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/v0/k;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/batch/android/v0/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/batch/android/v0/k;->g:Lcom/batch/android/v0/h;

    iput-object p2, p0, Lcom/batch/android/v0/k;->h:Lcom/batch/android/v0/f;

    iput-object p3, p0, Lcom/batch/android/v0/k;->i:Lcom/batch/android/s/a;

    iput-object p4, p0, Lcom/batch/android/v0/k;->j:Lcom/batch/android/v0/j;

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Ljava/util/List;Lcom/batch/android/e/c0;)V
    .locals 2

    .line 114
    new-instance v0, Lcom/batch/android/e/v;

    invoke-direct {v0}, Lcom/batch/android/e/v;-><init>()V

    new-instance v1, Lcom/batch/android/v0/k$a;

    invoke-direct {v1, p0, p3}, Lcom/batch/android/v0/k$a;-><init>(Lcom/batch/android/v0/k;Lcom/batch/android/e/c0;)V

    .line 115
    invoke-static {p1, p2, v1}, Lcom/batch/android/a/m;->a(Landroid/content/Context;Ljava/util/List;Lcom/batch/android/n1/i;)Lcom/batch/android/e/l0;

    move-result-object p0

    .line 116
    invoke-virtual {v0, p0}, Lcom/batch/android/e/v;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic a(Lcom/batch/android/j1/g;)V
    .locals 2

    .line 118
    sget-object v0, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    if-eq p1, v0, :cond_0

    .line 119
    iget-object p1, p0, Lcom/batch/android/v0/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    const-string p1, "Tracker"

    const-string v0, "Starting a new flush executor"

    invoke-static {p1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/batch/android/v0/k;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Li91;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Li91;-><init>(Lcom/batch/android/v0/k;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/util/List;Lcom/batch/android/j1/g;)V
    .locals 3

    sget-object v0, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    if-eq p2, v0, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/o/b;

    invoke-virtual {v1}, Lcom/batch/android/o/b;->j()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/batch/android/o/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/batch/android/o/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/batch/android/v0/k;->a:Lcom/batch/android/k1/b;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/batch/android/k1/b;->b([Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p0, p0, Lcom/batch/android/v0/k;->a:Lcom/batch/android/k1/b;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/batch/android/k1/b;->c([Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method private synthetic b(Landroid/content/Context;)V
    .locals 1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/v0/k;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 104
    iget-object p0, p0, Lcom/batch/android/v0/k;->a:Lcom/batch/android/k1/b;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/batch/android/k1/b;->a()V

    return-void

    .line 106
    :cond_0
    new-instance p0, Lcom/batch/android/k1/b;

    invoke-direct {p0, p1}, Lcom/batch/android/k1/b;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {p0}, Lcom/batch/android/k1/b;->a()V

    .line 108
    invoke-virtual {p0}, Lcom/batch/android/k1/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 109
    const-string p1, "Tracker"

    const-string v0, "Could not clear all pending events"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic b(Ljava/util/List;Lcom/batch/android/j1/g;)V
    .locals 2

    .line 95
    sget-object v0, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    if-eq p2, v0, :cond_1

    .line 96
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/o/b;

    .line 98
    invoke-virtual {v1}, Lcom/batch/android/o/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/batch/android/v0/k;->a:Lcom/batch/android/k1/b;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/batch/android/k1/b;->a([Ljava/lang/String;)I

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/batch/android/v0/k;->f:I

    if-ne p1, p2, :cond_1

    .line 102
    iget-object p0, p0, Lcom/batch/android/v0/k;->e:Lcom/batch/android/o/e;

    invoke-virtual {p0}, Lcom/batch/android/o/e;->b()V

    :cond_1
    return-void
.end method

.method private c(Landroid/content/Context;)Lcom/batch/android/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v1

    const-string v2, "app.install.id"

    invoke-virtual {v1, v2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "di"

    invoke-virtual {v0, v3, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_0
    const-string v2, "app.id.custom"

    invoke-virtual {v1, v2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "cus"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_1
    iget-object p0, p0, Lcom/batch/android/v0/k;->j:Lcom/batch/android/v0/j;

    invoke-virtual {p0, p1}, Lcom/batch/android/v0/j;->b(Landroid/content/Context;)Lcom/batch/android/BatchPushRegistration;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/batch/android/BatchPushRegistration;->getToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tok"

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0}, Lcom/batch/android/BatchPushRegistration;->getProvider()Ljava/lang/String;

    move-result-object p1

    const-string v1, "provider"

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0}, Lcom/batch/android/BatchPushRegistration;->getSenderID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/batch/android/BatchPushRegistration;->getSenderID()Ljava/lang/String;

    move-result-object p1

    const-string v1, "senderid"

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_2
    invoke-virtual {p0}, Lcom/batch/android/BatchPushRegistration;->getGcpProjectID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/batch/android/BatchPushRegistration;->getGcpProjectID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "gcpproject"

    invoke-virtual {v0, p1, p0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_3
    return-object v0
.end method

.method private synthetic c(Ljava/util/List;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/batch/android/v0/k;->a:Lcom/batch/android/k1/b;

    iget p0, p0, Lcom/batch/android/v0/k;->f:I

    invoke-virtual {v0, p0}, Lcom/batch/android/k1/b;->b(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private i()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/batch/android/v0/k;->a:Lcom/batch/android/k1/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/batch/android/k1/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Tracker"

    const-string v2, "Error while closing DB"

    invoke-static {v1, v2, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/v0/k;->a:Lcom/batch/android/k1/b;

    return-void
.end method

.method public static synthetic i(Lcom/batch/android/v0/k;Landroid/content/Context;Ljava/util/ArrayList;Lcom/batch/android/e/c0;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/v0/k;->a(Landroid/content/Context;Ljava/util/List;Lcom/batch/android/e/c0;)V

    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/v0/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Tracker"

    if-eqz v0, :cond_0

    const-string p0, "Flush called while already flushing"

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/batch/android/v0/k;->a:Lcom/batch/android/k1/b;

    if-nez v0, :cond_1

    const-string p0, "Flush called in State OFF, not flushing"

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    new-instance v1, Lu81;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lu81;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/h;)V

    return-void
.end method

.method public static synthetic j(Lcom/batch/android/v0/k;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/batch/android/v0/k;->i()V

    return-void
.end method

.method private synthetic k()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/batch/android/v0/k;->a:Lcom/batch/android/k1/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/v0/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/batch/android/v0/k;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/batch/android/v0/k;->a:Lcom/batch/android/k1/b;

    iget-object v2, p0, Lcom/batch/android/v0/k;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/o/b;

    invoke-virtual {v1, v2}, Lcom/batch/android/k1/b;->a(Lcom/batch/android/o/b;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v1

    sget-object v2, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    new-instance v3, Li91;

    invoke-direct {v3, p0, v0}, Li91;-><init>(Lcom/batch/android/v0/k;I)V

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/g;Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/batch/android/v0/k;->e:Lcom/batch/android/o/e;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/batch/android/o/e;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object p0, p0, Lcom/batch/android/v0/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_1
    :try_start_2
    const-string v2, "Tracker"

    const-string v3, "Exception while flushing"

    invoke-static {v2, v3, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/batch/android/v0/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/batch/android/v0/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method

.method public static synthetic k(Lcom/batch/android/v0/k;Lcom/batch/android/j1/g;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/batch/android/v0/k;->a(Lcom/batch/android/j1/g;)V

    return-void
.end method

.method public static l()Lcom/batch/android/v0/k;
    .locals 5

    new-instance v0, Lcom/batch/android/v0/k;

    invoke-static {}, Lcom/batch/android/n/v;->a()Lcom/batch/android/v0/h;

    move-result-object v1

    invoke-static {}, Lcom/batch/android/n/p;->a()Lcom/batch/android/v0/f;

    move-result-object v2

    invoke-static {}, Lcom/batch/android/n/f;->a()Lcom/batch/android/s/a;

    move-result-object v3

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/batch/android/v0/k;-><init>(Lcom/batch/android/v0/h;Lcom/batch/android/v0/f;Lcom/batch/android/s/a;Lcom/batch/android/v0/j;)V

    return-object v0
.end method

.method public static synthetic l(Lcom/batch/android/v0/k;Ljava/util/List;Lcom/batch/android/j1/g;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/batch/android/v0/k;->b(Ljava/util/List;Lcom/batch/android/j1/g;)V

    return-void
.end method

.method public static synthetic m(Lcom/batch/android/v0/k;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/v0/k;->c(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic n(Lcom/batch/android/v0/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/v0/k;->k()V

    return-void
.end method

.method public static synthetic o(Lcom/batch/android/v0/k;Ljava/util/List;Lcom/batch/android/j1/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/batch/android/v0/k;->a(Ljava/util/List;Lcom/batch/android/j1/g;)V

    return-void
.end method

.method public static synthetic p(Lcom/batch/android/v0/k;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/v0/k;->b(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/batch/android/e/c0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/batch/android/e/c0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 108
    :try_start_0
    invoke-direct {p0, p1}, Lcom/batch/android/v0/k;->c(Landroid/content/Context;)Lcom/batch/android/json/JSONObject;

    move-result-object v5

    .line 109
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v0, Lcom/batch/android/o/b;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/o/b;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/batch/android/json/JSONObject;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance p1, Lcom/batch/android/e/c0;

    new-instance p2, Ly81;

    const/16 v0, 0x15

    invoke-direct {p2, p0, v1, v6, v0}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, Lcom/batch/android/e/c0;-><init>(Lcom/batch/android/e/c0$c;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 112
    const-string p1, "Tracker"

    const-string p2, "Could not make opt-out event data"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    invoke-static {p0}, Lcom/batch/android/e/c0;->b(Ljava/lang/Exception;)Lcom/batch/android/e/c0;

    move-result-object p0

    return-object p0
.end method

.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v1

    new-instance v2, Lj91;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lj91;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/batch/android/j1/e;->a(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;JLcom/batch/android/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;JLcom/batch/android/json/JSONObject;)V
    .locals 7

    .line 100
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/batch/android/v0/k;->g:Lcom/batch/android/v0/h;

    invoke-virtual {v1}, Lcom/batch/android/v0/h;->i()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Tracker"

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "Batch is opted out from, refusing to track event."

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Tracking event "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/batch/android/v0/k;->b:Ljava/util/Queue;

    new-instance v1, Lcom/batch/android/o/b;

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v2

    move-object v5, p1

    move-wide v3, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/batch/android/o/b;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/batch/android/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-direct {p0}, Lcom/batch/android/v0/k;->j()V

    .line 105
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/j1/e;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    iget-object p0, p0, Lcom/batch/android/v0/k;->h:Lcom/batch/android/v0/f;

    new-instance p1, Lcom/batch/android/x/a;

    invoke-direct {p1, v5, v6}, Lcom/batch/android/x/a;-><init>(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/batch/android/v0/f;->e(Lcom/batch/android/x/d;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    .locals 2

    .line 99
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;JLcom/batch/android/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;)V"
        }
    .end annotation

    .line 122
    const-string v0, "Tracker"

    const-string v1, "onEventsSendFailure"

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    new-instance v1, Lh91;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lh91;-><init>(Lcom/batch/android/v0/k;Ljava/util/List;I)V

    .line 124
    invoke-virtual {v0, v1}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/h;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/batch/android/v0/k;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/batch/android/v0/k;->j()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;JLcom/batch/android/json/JSONObject;)V
    .locals 7

    .line 84
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/batch/android/v0/k;->g:Lcom/batch/android/v0/h;

    invoke-virtual {v1}, Lcom/batch/android/v0/h;->i()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Tracker"

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "Batch is opted out from, refusing to track collapsible event."

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Tracking collapsible event : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/batch/android/v0/k;->b:Ljava/util/Queue;

    new-instance v1, Lcom/batch/android/o/a;

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v2

    move-object v5, p1

    move-wide v3, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/batch/android/o/a;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/batch/android/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-direct {p0}, Lcom/batch/android/v0/k;->j()V

    .line 89
    iget-object p0, p0, Lcom/batch/android/v0/k;->h:Lcom/batch/android/v0/f;

    new-instance p1, Lcom/batch/android/x/a;

    invoke-direct {p1, v5, v6}, Lcom/batch/android/x/a;-><init>(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/batch/android/v0/f;->e(Lcom/batch/android/x/d;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    .locals 4

    const-string v0, "Tracker"

    iget-object v1, p0, Lcom/batch/android/v0/k;->i:Lcom/batch/android/s/a;

    invoke-virtual {v1}, Lcom/batch/android/s/a;->h()Lcom/batch/android/s/e;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/batch/android/v0/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-interface {v1, p1, v2}, Lcom/batch/android/s/e;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/s/e$a;

    move-result-object p1
    :try_end_0
    .catch Lcom/batch/android/s/f; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1}, Lcom/batch/android/json/JSONObject;-><init>()V

    const-string v2, "ed"

    invoke-virtual {v1, v2, p2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    const-string p2, "count"

    iget v2, p1, Lcom/batch/android/s/e$a;->c:I

    invoke-virtual {v1, p2, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    const-string p2, "last"

    iget-wide v2, p1, Lcom/batch/android/s/e$a;->d:J

    invoke-virtual {v1, p2, v2, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;J)Lcom/batch/android/json/JSONObject;

    const-string p2, "id"

    iget-object p1, p1, Lcom/batch/android/s/e$a;->a:Ljava/lang/String;

    invoke-virtual {v1, p2, p1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    const-string p1, "_LC_VIEW"

    invoke-virtual {p0, p1, v1}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    :try_end_1
    .catch Lcom/batch/android/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Could not track _LC_VIEW"

    invoke-static {v0, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    const-string p0, "View tracker not available, not tracking view"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;)V"
        }
    .end annotation

    .line 92
    const-string v0, "Tracker"

    const-string v1, "onEventsSendSuccess"

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    new-instance v1, Lh91;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lh91;-><init>(Lcom/batch/android/v0/k;Ljava/util/List;I)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/h;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/batch/android/v0/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/batch/android/v0/k;->i()V

    :cond_0
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/batch/android/v0/k;->c(Landroid/content/Context;)Lcom/batch/android/json/JSONObject;

    move-result-object p1

    const-string v0, "_OPT_IN"

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    return-void
.end method

.method public e()V
    .locals 5

    const-string v0, "Tracker"

    const-string v1, "Deleted "

    :try_start_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v2

    const-string v3, "tracker.batch.quantity"

    invoke-virtual {v2, v3}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/batch/android/v0/k;->f:I

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v3

    const-string v4, "tracker.db.limit"

    invoke-virtual {v3, v4}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/batch/android/k1/b;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/batch/android/k1/b;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/batch/android/v0/k;->a:Lcom/batch/android/k1/b;

    invoke-virtual {v4, v3}, Lcom/batch/android/k1/b;->a(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " overflow events"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/v0/k;->a:Lcom/batch/android/k1/b;

    invoke-virtual {v1}, Lcom/batch/android/k1/b;->d()Z

    iget-object v1, p0, Lcom/batch/android/v0/k;->e:Lcom/batch/android/o/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/batch/android/o/e;

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/batch/android/o/e;-><init>(Lcom/batch/android/j1/e;Lcom/batch/android/o/e$b;)V

    iput-object v1, p0, Lcom/batch/android/v0/k;->e:Lcom/batch/android/o/e;

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "Error while starting tracker module"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 3

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/batch/android/v0/k;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lj91;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lj91;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, "tracker"

    return-object p0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
