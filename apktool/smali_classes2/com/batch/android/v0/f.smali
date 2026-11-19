.class public Lcom/batch/android/v0/f;
.super Lcom/batch/android/v0/b;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String; = "LocalCampaigns"


# instance fields
.field private final a:Lcom/batch/android/s/a;

.field private b:Z

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/batch/android/x/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private g:Z

.field private final h:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Lcom/batch/android/s/a;)V
    .locals 2

    invoke-direct {p0}, Lcom/batch/android/v0/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/v0/f;->b:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/batch/android/v0/f;->c:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/batch/android/v0/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/batch/android/v0/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lcom/batch/android/e/v;

    invoke-direct {v1}, Lcom/batch/android/e/v;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/batch/android/v0/f;->f:Ljava/util/concurrent/ExecutorService;

    iput-boolean v0, p0, Lcom/batch/android/v0/f;->g:Z

    new-instance v0, Lcom/batch/android/v0/f$a;

    invoke-direct {v0, p0}, Lcom/batch/android/v0/f$a;-><init>(Lcom/batch/android/v0/f;)V

    iput-object v0, p0, Lcom/batch/android/v0/f;->h:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/v0/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/batch/android/v0/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a(Lcom/batch/android/t/b;)V
    .locals 0

    .line 127
    invoke-virtual {p1}, Lcom/batch/android/t/b;->b()V

    .line 128
    invoke-virtual {p1}, Lcom/batch/android/t/b;->a()V

    return-void
.end method

.method private synthetic a(Lcom/batch/android/t/b;Lcom/batch/android/t/b;)V
    .locals 1

    const-string v0, "LocalCampaigns"

    if-eqz p2, :cond_0

    .line 120
    const-string p1, "Elected campaign has been synchronized with JIT."

    invoke-static {v0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, p2}, Lcom/batch/android/v0/f;->a(Lcom/batch/android/t/b;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 122
    const-string p2, "JIT respond with no eligible campaigns or with error. Fallback on offline campaign."

    invoke-static {v0, p2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/batch/android/v0/f;->a(Lcom/batch/android/t/b;)V

    goto :goto_0

    .line 124
    :cond_1
    const-string p1, "Ne eligible campaigns found after the JIT sync."

    invoke-static {v0, p1}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    iget-object p1, p0, Lcom/batch/android/v0/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    invoke-direct {p0}, Lcom/batch/android/v0/f;->i()V

    return-void
.end method

.method private a(Lcom/batch/android/x/d;)V
    .locals 4

    iget-object v0, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    invoke-virtual {v0, p1}, Lcom/batch/android/s/a;->a(Lcom/batch/android/x/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "LocalCampaigns"

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/t/b;

    iget-boolean v2, v0, Lcom/batch/android/t/b;->q:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    invoke-virtual {v2, v0}, Lcom/batch/android/s/a;->a(Lcom/batch/android/t/b;)Lcom/batch/android/t/b$b$a;

    move-result-object v2

    sget-object v3, Lcom/batch/android/t/b$b$a;->b:Lcom/batch/android/t/b$b$a;

    if-ne v2, v3, :cond_0

    const-string p1, "Skipping JIT sync since this campaign has been already synced recently."

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/v0/f;->a(Lcom/batch/android/t/b;)V

    return-void

    :cond_0
    sget-object v0, Lcom/batch/android/t/b$b$a;->d:Lcom/batch/android/t/b$b$a;

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    invoke-virtual {v0}, Lcom/batch/android/s/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    invoke-virtual {v0, p1}, Lcom/batch/android/s/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    invoke-virtual {v1, p1}, Lcom/batch/android/s/a;->b(Ljava/util/List;)Lcom/batch/android/t/b;

    move-result-object p1

    iget-object v1, p0, Lcom/batch/android/v0/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    new-instance v2, Lgy0;

    const/16 v3, 0xc

    invoke-direct {v2, p0, p1, v3}, Lgy0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v2}, Lcom/batch/android/s/a;->a(Ljava/util/List;Lcom/batch/android/s/a$b;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    invoke-virtual {v0, p1}, Lcom/batch/android/s/a;->b(Ljava/util/List;)Lcom/batch/android/t/b;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "JIT not available or campaign is cached and not eligible, fallback on offline campaign."

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/batch/android/v0/f;->a(Lcom/batch/android/t/b;)V

    :cond_2
    return-void

    :cond_3
    const-string p1, "Elected campaign not requiring a sync, display it."

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/v0/f;->a(Lcom/batch/android/t/b;)V

    return-void

    :cond_4
    const-string p0, "No eligible campaigns found."

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Landroid/content/Context;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    invoke-virtual {v0, p1}, Lcom/batch/android/s/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object p0, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    invoke-virtual {p0, p1}, Lcom/batch/android/s/a;->e(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/batch/android/x/d;)V
    .locals 4

    const-string v0, "Local Campaign module isn\'t ready, enqueueing signal: "

    iget-object v1, p0, Lcom/batch/android/v0/f;->c:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/batch/android/v0/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/batch/android/v0/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/batch/android/v0/f;->e(Lcom/batch/android/x/d;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v2, "LocalCampaigns"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/v0/f;->c:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    invoke-virtual {v0}, Lcom/batch/android/s/a;->k()V

    iget-boolean v0, p0, Lcom/batch/android/v0/f;->b:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/batch/android/n/d0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object v0

    new-instance v1, Lw21;

    const/16 v2, 0x1b

    invoke-direct {v1, p0, p1, v2}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/batch/android/v0/f;->b:Z

    :cond_0
    return-void
.end method

.method private synthetic c(Lcom/batch/android/x/d;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/batch/android/v0/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "LocalCampaigns"

    const-string v1, "JIT sync in progress, enqueue signal."

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/batch/android/v0/f;->b(Lcom/batch/android/x/d;)V

    return-void

    .line 30
    :cond_0
    invoke-direct {p0, p1}, Lcom/batch/android/v0/f;->a(Lcom/batch/android/x/d;)V

    return-void
.end method

.method private d(Lcom/batch/android/x/d;)V
    .locals 3

    instance-of v0, p1, Lcom/batch/android/x/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/batch/android/x/a;

    iget-object v1, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    iget-object v2, v0, Lcom/batch/android/x/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/batch/android/s/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Skipping event signal processing as the event named \'"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/batch/android/x/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'is not watched."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalCampaigns"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/batch/android/x/c;->a(Lcom/batch/android/x/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lcom/batch/android/x/c;

    invoke-direct {p1, v0}, Lcom/batch/android/x/c;-><init>(Lcom/batch/android/x/a;)V

    :cond_1
    iget-object v0, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    invoke-virtual {v0}, Lcom/batch/android/s/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/batch/android/v0/f;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lw21;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, p1, v2}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private i()V
    .locals 5

    const-string v0, "Replaying "

    iget-object v1, p0, Lcom/batch/android/v0/f;->c:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/batch/android/v0/f;->c:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/batch/android/v0/f;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LocalCampaigns"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " local campaign signals"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/x/d;

    invoke-direct {p0, v2}, Lcom/batch/android/v0/f;->d(Lcom/batch/android/x/d;)V

    goto :goto_1

    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic i(Lcom/batch/android/v0/f;Landroid/content/Context;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/batch/android/v0/f;->b(Landroid/content/Context;)V

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/v0/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/batch/android/v0/f;->i()V

    return-void
.end method

.method public static synthetic j(Lcom/batch/android/v0/f;Lcom/batch/android/t/b;Lcom/batch/android/t/b;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/batch/android/v0/f;->a(Lcom/batch/android/t/b;Lcom/batch/android/t/b;)V

    return-void
.end method

.method public static synthetic k(Lcom/batch/android/v0/f;Lcom/batch/android/x/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/v0/f;->c(Lcom/batch/android/x/d;)V

    return-void
.end method

.method public static l()Lcom/batch/android/v0/f;
    .locals 2

    new-instance v0, Lcom/batch/android/v0/f;

    invoke-static {}, Lcom/batch/android/n/f;->a()Lcom/batch/android/s/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/v0/f;-><init>(Lcom/batch/android/s/a;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/batch/android/v0/f;->d(Landroid/content/Context;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/batch/android/v0/f;->c(Landroid/content/Context;)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    invoke-virtual {p0}, Lcom/batch/android/s/a;->c()V

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 2

    .line 77
    iget-boolean v0, p0, Lcom/batch/android/v0/f;->g:Z

    if-nez v0, :cond_0

    .line 78
    invoke-static {p1}, Lcom/batch/android/n/o;->a(Landroid/content/Context;)Lcom/batch/android/d/a;

    move-result-object p1

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/batch/android/v0/f;->g:Z

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    const-string v1, "com.batch.android.runtime.session.new"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/batch/android/v0/f;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Lcom/batch/android/d/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 1

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/batch/android/v0/f;->a:Lcom/batch/android/s/a;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/s/a;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Lcom/batch/android/v/c; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 17
    const-string p1, "LocalCampaigns"

    const-string v0, "Could not delete persisted campaigns"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Lcom/batch/android/x/d;)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/v0/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/batch/android/v0/f;->d(Lcom/batch/android/x/d;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/batch/android/v0/f;->b(Lcom/batch/android/x/d;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, "localcampaigns"

    return-object p0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public k()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/batch/android/v0/f;->j()V

    return-void
.end method
