.class public Lcom/batch/android/o/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/o/h$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/o/e$b;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "EventSender"


# instance fields
.field protected a:Lcom/batch/android/j1/e;

.field private b:Lcom/batch/android/o/e$b;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Lcom/batch/android/o/h;


# direct methods
.method public constructor <init>(Lcom/batch/android/j1/e;Lcom/batch/android/o/e$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/batch/android/o/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/batch/android/o/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/batch/android/e/v;

    invoke-direct {v0}, Lcom/batch/android/e/v;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/o/e;->e:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/batch/android/o/e;->a:Lcom/batch/android/j1/e;

    iput-object p2, p0, Lcom/batch/android/o/e;->b:Lcom/batch/android/o/e$b;

    new-instance p2, Lcom/batch/android/o/h;

    invoke-virtual {p1}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/batch/android/o/h;-><init>(Landroid/content/Context;Lcom/batch/android/o/h$b;)V

    iput-object p2, p0, Lcom/batch/android/o/e;->f:Lcom/batch/android/o/h;

    return-void

    :cond_0
    const-string p0, "listener==null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "runtimeManager==null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/util/List;Lcom/batch/android/n1/i;)Lcom/batch/android/e/l0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;",
            "Lcom/batch/android/n1/i;",
            ")",
            "Lcom/batch/android/e/l0;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/batch/android/o/e;->a:Lcom/batch/android/j1/e;

    invoke-static {p0, p1, p2}, Lcom/batch/android/a/m;->a(Lcom/batch/android/j1/e;Ljava/util/List;Lcom/batch/android/n1/i;)Lcom/batch/android/e/l0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/batch/android/o/e;)Lcom/batch/android/o/h;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/batch/android/o/e;->f:Lcom/batch/android/o/h;

    return-object p0
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/o/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/batch/android/o/e;->f:Lcom/batch/android/o/h;

    invoke-virtual {p1}, Lcom/batch/android/o/h;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/batch/android/o/e;->a:Lcom/batch/android/j1/e;

    new-instance v0, Lt81;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lt81;-><init>(Lcom/batch/android/o/e;I)V

    invoke-virtual {p1, v0}, Lcom/batch/android/j1/e;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic b(Lcom/batch/android/o/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/batch/android/o/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic c(Lcom/batch/android/o/e;)Lcom/batch/android/o/e$b;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/batch/android/o/e;->b:Lcom/batch/android/o/e$b;

    return-object p0
.end method

.method private synthetic c()V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/o/e;->b:Lcom/batch/android/o/e$b;

    invoke-interface {v0}, Lcom/batch/android/o/e$b;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/o/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/o/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start sending events : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EventSender"

    invoke-static {v2, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/batch/android/o/e$a;

    invoke-direct {v1, p0}, Lcom/batch/android/o/e$a;-><init>(Lcom/batch/android/o/e;)V

    invoke-direct {p0, v0, v1}, Lcom/batch/android/o/e;->a(Ljava/util/List;Lcom/batch/android/n1/i;)Lcom/batch/android/e/l0;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic d()V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/o/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/o/e;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lt81;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lt81;-><init>(Lcom/batch/android/o/e;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/batch/android/o/e;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/batch/android/o/e;->c()V

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batch/android/o/e;->a(Z)V

    return-void
.end method

.method public static synthetic e(Lcom/batch/android/o/e;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/batch/android/o/e;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, v0}, Lcom/batch/android/o/e;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/o/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/batch/android/o/e;->e()V

    return-void
.end method
