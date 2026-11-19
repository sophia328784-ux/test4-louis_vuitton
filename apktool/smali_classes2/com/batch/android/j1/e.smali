.class public Lcom/batch/android/j1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final n:Ljava/lang/String; = "RuntimeManager"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Ljava/util/Date;

.field private d:Landroid/app/Activity;

.field private e:Lcom/batch/android/j1/d;

.field private f:Lcom/batch/android/j1/f;

.field private g:Ljava/util/Date;

.field private h:Lcom/batch/android/j1/g;

.field private final i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field private final l:Lcom/batch/android/j1/b;

.field private final m:Lcom/batch/android/j/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/j1/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    iput-object v0, p0, Lcom/batch/android/j1/e;->h:Lcom/batch/android/j1/g;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/batch/android/j1/e;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    new-instance v0, Lcom/batch/android/j1/b;

    invoke-direct {v0}, Lcom/batch/android/j1/b;-><init>()V

    iput-object v0, p0, Lcom/batch/android/j1/e;->l:Lcom/batch/android/j1/b;

    new-instance v0, Lcom/batch/android/j/a;

    invoke-direct {v0}, Lcom/batch/android/j/a;-><init>()V

    iput-object v0, p0, Lcom/batch/android/j1/e;->m:Lcom/batch/android/j/a;

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/j1/e;)Lcom/batch/android/j/a;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/batch/android/j1/e;->m:Lcom/batch/android/j/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/batch/android/j1/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/batch/android/j1/e;->d:Landroid/app/Activity;

    return-void
.end method

.method public a(Landroid/app/Application;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/batch/android/j1/e;->e:Lcom/batch/android/j1/d;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/batch/android/j1/d;

    invoke-direct {v0}, Lcom/batch/android/j1/d;-><init>()V

    iput-object v0, p0, Lcom/batch/android/j1/e;->e:Lcom/batch/android/j1/d;

    .line 91
    new-instance v1, Lcom/batch/android/j1/e$a;

    invoke-direct {v1, p0}, Lcom/batch/android/j1/e$a;-><init>(Lcom/batch/android/j1/e;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/j1/d;->a(Lcom/batch/android/j1/d$a;)V

    .line 92
    iget-object p0, p0, Lcom/batch/android/j1/e;->e:Lcom/batch/android/j1/d;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Application;Z)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/j1/e;->f:Lcom/batch/android/j1/f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/batch/android/j1/f;

    invoke-direct {v0}, Lcom/batch/android/j1/f;-><init>()V

    iput-object v0, p0, Lcom/batch/android/j1/e;->f:Lcom/batch/android/j1/f;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, p0, Lcom/batch/android/j1/e;->f:Lcom/batch/android/j1/f;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->b()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/batch/android/j1/e;->f:Lcom/batch/android/j1/f;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/batch/android/j1/f;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/batch/android/j1/e;->f:Lcom/batch/android/j1/f;

    invoke-virtual {p2, p1}, Lcom/batch/android/j1/f;->onActivityStarted(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/batch/android/j1/e;->f:Lcom/batch/android/j1/f;

    invoke-virtual {p0, p1}, Lcom/batch/android/j1/f;->a(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string p0, "RuntimeManager"

    const-string p1, "Could not replay activity lifecycle on the session manager, since no activity was set. This should not happen. Sessions will NOT be tracked correctly. Please report this to Batch\'s support."

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/batch/android/j1/e;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/batch/android/j1/c;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/j1/e;->l:Lcom/batch/android/j1/b;

    invoke-virtual {v0}, Lcom/batch/android/j1/b;->a()Lcom/batch/android/j1/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/batch/android/j1/c;->a(Lcom/batch/android/j1/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object p0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 55
    throw p1
.end method

.method public a(Lcom/batch/android/j1/g;Lcom/batch/android/j1/h;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/j1/e;->h:Lcom/batch/android/j1/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 74
    iget-object p0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    .line 75
    :cond_0
    :try_start_1
    invoke-interface {p2, v0}, Lcom/batch/android/j1/h;->a(Lcom/batch/android/j1/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    iget-object p0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 77
    throw p1
.end method

.method public a(Lcom/batch/android/j1/h;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/j1/e;->h:Lcom/batch/android/j1/g;

    invoke-interface {p1, v0}, Lcom/batch/android/j1/h;->a(Lcom/batch/android/j1/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object p0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 71
    throw p1
.end method

.method public a(Lcom/batch/android/j1/a;)Z
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/j1/e;->h:Lcom/batch/android/j1/g;

    iget-object v1, p0, Lcom/batch/android/j1/e;->l:Lcom/batch/android/j1/b;

    invoke-interface {p1, v0, v1}, Lcom/batch/android/j1/a;->a(Lcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Lcom/batch/android/j1/e;->h:Lcom/batch/android/j1/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object p0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 p0, 0x0

    return p0

    :goto_0
    iget-object p0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 60
    throw p1
.end method

.method public a(Lcom/batch/android/j1/g;Lcom/batch/android/j1/a;)Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/j1/e;->h:Lcom/batch/android/j1/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 63
    iget-object p0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v1

    .line 64
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/batch/android/j1/e;->l:Lcom/batch/android/j1/b;

    invoke-interface {p2, v0, p1}, Lcom/batch/android/j1/a;->a(Lcom/batch/android/j1/g;Lcom/batch/android/j1/b;)Lcom/batch/android/j1/g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    iput-object p1, p0, Lcom/batch/android/j1/e;->h:Lcom/batch/android/j1/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    iget-object p0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v1

    :goto_0
    iget-object p0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 67
    throw p1
.end method

.method public a(Lcom/batch/android/j1/g;Ljava/lang/Runnable;)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/j1/e;->h:Lcom/batch/android/j1/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 81
    iget-object p0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    iget-object p0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/batch/android/j1/e;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 84
    throw p1
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 1

    .line 78
    sget-object v0, Lcom/batch/android/j1/g;->c:Lcom/batch/android/j1/g;

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/g;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public b()Landroid/app/Activity;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/batch/android/j1/e;->d:Landroid/app/Activity;

    return-object p0
.end method

.method public b(Lcom/batch/android/j1/c;)V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/batch/android/j1/e;->h:Lcom/batch/android/j1/g;

    sget-object v1, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/batch/android/j1/e;->l:Lcom/batch/android/j1/b;

    invoke-interface {p1, v0}, Lcom/batch/android/j1/c;->a(Lcom/batch/android/j1/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/batch/android/j1/e;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public c()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/j1/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method public d()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/j1/e;->c:Ljava/util/Date;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/j1/e;->f:Lcom/batch/android/j1/f;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/j1/f;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f()Lcom/batch/android/j1/f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/j1/e;->f:Lcom/batch/android/j1/f;

    return-object p0
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Lcom/batch/android/j1/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public h()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/j1/e;->e:Lcom/batch/android/j1/d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/j1/d;->a()Z

    move-result p0

    return p0
.end method

.method public i()Z
    .locals 1

    iget-object p0, p0, Lcom/batch/android/j1/e;->h:Lcom/batch/android/j1/g;

    sget-object v0, Lcom/batch/android/j1/g;->c:Lcom/batch/android/j1/g;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public j()Z
    .locals 5

    iget-object v0, p0, Lcom/batch/android/j1/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_3

    const-string v3, "RuntimeManager"

    const-string v4, "Batch has been under-locked. You probably called Batch.onServiceDestroy() too many times. Recovering, but this may leave Batch in an undesired state."

    invoke-static {v3, v4}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/batch/android/j1/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-gez v0, :cond_1

    iget-object v3, p0, Lcom/batch/android/j1/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_1
    if-eqz v3, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    if-eqz v0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public k()Ljava/lang/Long;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/batch/android/j1/e;->g:Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v0, p0, Lcom/batch/android/j1/e;->g:Ljava/util/Date;

    return-object v1

    :goto_1
    iput-object v0, p0, Lcom/batch/android/j1/e;->g:Ljava/util/Date;

    throw v1
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/j1/e;->h:Lcom/batch/android/j1/g;

    sget-object v1, Lcom/batch/android/j1/g;->c:Lcom/batch/android/j1/g;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/batch/android/j1/e;->g:Ljava/util/Date;

    return-void
.end method

.method public m()V
    .locals 1

    iget-object p0, p0, Lcom/batch/android/j1/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public n()V
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/batch/android/j1/e;->c:Ljava/util/Date;

    return-void
.end method
