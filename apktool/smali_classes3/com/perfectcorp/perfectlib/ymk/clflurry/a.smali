.class public abstract Lcom/perfectcorp/perfectlib/ymk/clflurry/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final b:Ljava/util/concurrent/FutureTask;

.field public static volatile c:Z

.field public static final d:Ljava/util/concurrent/ExecutorService;

.field public static volatile e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, La8;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, La8;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->b:Ljava/util/concurrent/FutureTask;

    const-string v0, "CLFlurryAgentHelper"

    invoke-static {v0}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/perfectcorp/uma/m;->v0:Lcom/perfectcorp/uma/m;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/perfectcorp/common/PfCommons;->d:Z

    const/4 v2, 0x3

    const-string v4, "CLFlurryAgentHelper"

    if-nez v1, :cond_2

    sget-object v1, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/internal/a;->countly:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "[init] isDebug=false"

    invoke-static {v2, v4, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;->b:Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;

    if-eqz v1, :cond_1

    :goto_0
    move-object v0, v1

    :cond_1
    sput-object v0, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "[init] isDebug=true"

    invoke-static {v2, v4, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/internal/a;->countly:Z

    if-eqz v1, :cond_3

    const-string v1, "[init] debug flag on, enable UMA debug"

    invoke-static {v2, v4, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_3
    sput-boolean v3, Lcom/perfectcorp/uma/b;->d:Z

    sget-object v1, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    if-ne v1, v0, :cond_4

    sget-object v1, Lcom/perfectcorp/uma/m;->u0:Lcom/perfectcorp/uma/m;

    sput-object v1, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    :cond_4
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;->a:Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;

    if-eqz v1, :cond_1

    goto :goto_0

    :goto_2
    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/perfectcorp/uma/countly/d;->h:Lcom/perfectcorp/uma/countly/d$b$a;

    iget-object v1, v1, Lcom/perfectcorp/uma/countly/d$b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->a:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ymk/a$a;->b:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/perfectcorp/uma/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->run()V

    :cond_5
    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/perfectcorp/common/PfCommons;->d:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->c:Z

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/internal/a;->countly:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
