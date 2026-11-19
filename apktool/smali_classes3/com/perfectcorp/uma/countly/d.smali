.class public final Lcom/perfectcorp/uma/countly/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/uma/countly/d$c;,
        Lcom/perfectcorp/uma/countly/d$a;,
        Lcom/perfectcorp/uma/countly/d$b;,
        Lcom/perfectcorp/uma/countly/d$d;
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/ExecutorService;

.field public static final h:Lcom/perfectcorp/uma/countly/d$b$a;

.field public static final i:Lcom/perfectcorp/uma/countly/d$a;

.field public static volatile j:I

.field public static volatile k:Z


# instance fields
.field public a:Lcom/perfectcorp/uma/countly/b;

.field public b:Ljava/util/concurrent/ScheduledExecutorService;

.field public c:Lcom/perfectcorp/uma/countly/p;

.field public d:Lcom/perfectcorp/uma/countly/s;

.field public e:J

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/uma/countly/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/uma/countly/d;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/perfectcorp/uma/countly/d$b$a;

    invoke-direct {v0}, Lcom/perfectcorp/uma/countly/d$b$a;-><init>()V

    sput-object v0, Lcom/perfectcorp/uma/countly/d;->h:Lcom/perfectcorp/uma/countly/d$b$a;

    new-instance v0, Lcom/perfectcorp/uma/countly/d$a;

    invoke-direct {v0}, Lcom/perfectcorp/uma/countly/d$a;-><init>()V

    sput-object v0, Lcom/perfectcorp/uma/countly/d;->i:Lcom/perfectcorp/uma/countly/d$a;

    sget-object v0, Lcom/perfectcorp/uma/countly/d$c;->a:Lcom/perfectcorp/uma/countly/d$c$a;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/perfectcorp/uma/countly/d;->k:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart activityCount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/perfectcorp/uma/countly/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Countly"

    sget-object v2, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1, v0}, Lcom/perfectcorp/uma/m;->a(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/d;->d:Lcom/perfectcorp/uma/countly/s;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/perfectcorp/uma/countly/d;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/perfectcorp/uma/countly/d;->f:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/uma/countly/d;->e:J

    sget-object v0, Lcom/perfectcorp/uma/countly/d;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/perfectcorp/uma/countly/j;

    invoke-direct {v1, p0}, Lcom/perfectcorp/uma/countly/j;-><init>(Lcom/perfectcorp/uma/countly/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "init must be called before onStart"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;Lcom/perfectcorp/uma/internal/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/uma/countly/d;->d:Lcom/perfectcorp/uma/countly/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/uma/countly/p;

    invoke-direct {v0, p1}, Lcom/perfectcorp/uma/countly/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/perfectcorp/uma/countly/d;->c:Lcom/perfectcorp/uma/countly/p;

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/uma/countly/b;->c(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/d;->c:Lcom/perfectcorp/uma/countly/p;

    iput-object v0, p1, Lcom/perfectcorp/uma/countly/b;->a:Lcom/perfectcorp/uma/countly/p;

    iput-object p2, p1, Lcom/perfectcorp/uma/countly/b;->e:Lcom/perfectcorp/uma/internal/b;

    new-instance p1, Lcom/perfectcorp/uma/countly/s;

    invoke-direct {p1, v0}, Lcom/perfectcorp/uma/countly/s;-><init>(Lcom/perfectcorp/uma/countly/p;)V

    iput-object p1, p0, Lcom/perfectcorp/uma/countly/d;->d:Lcom/perfectcorp/uma/countly/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "&crash=1&crash_reason="

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/perfectcorp/uma/countly/d;->f:I

    if-lez v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/perfectcorp/uma/countly/d;->f:I

    const-string v1, "&crash=1"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d;->h()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/uma/countly/b;->b(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    const-string v0, "Countly"

    const-string v1, "onTerminate(): endSession failed."

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/uma/b$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perfectcorp/uma/countly/d;->e:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    if-eqz v0, :cond_3

    const-string v1, "http://undefined"

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "undefined"

    iget-object v1, p0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    iget-object v1, v1, Lcom/perfectcorp/uma/countly/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    iput-object p1, v0, Lcom/perfectcorp/uma/countly/b;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    iput-object p2, p1, Lcom/perfectcorp/uma/countly/b;->h:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/b;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    iget-object p1, p1, Lcom/perfectcorp/uma/countly/b;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ConnectionQueue cannot be reinitialized with different values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "connectionQueue_ is null, need to invoke init first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "valid appKey is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "valid serverURL is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized e(Ljava/lang/String;Ljava/util/Map;ID)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/uma/countly/d;->d:Lcom/perfectcorp/uma/countly/s;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perfectcorp/uma/countly/d;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/perfectcorp/uma/countly/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/perfectcorp/uma/countly/h;-><init>(Lcom/perfectcorp/uma/countly/d;Ljava/lang/String;Ljava/util/Map;ID)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valid key is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v2, p0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "init must be called before recordEvent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop activityCount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/perfectcorp/uma/countly/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Countly"

    sget-object v2, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1, v0}, Lcom/perfectcorp/uma/m;->a(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/d;->d:Lcom/perfectcorp/uma/countly/s;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/perfectcorp/uma/countly/d;->f:I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/perfectcorp/uma/countly/d;->f:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d;->h()I

    move-result v0

    sget-object v1, Lcom/perfectcorp/uma/countly/d;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/perfectcorp/uma/countly/l;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/perfectcorp/uma/countly/l;-><init>(Lcom/perfectcorp/uma/countly/d;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perfectcorp/uma/countly/d;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call onStart before onStop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "init must be called before onStop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/common/debug/NotAnError;

    invoke-direct {v0}, Lcom/perfectcorp/common/debug/NotAnError;-><init>()V

    const-string v1, "Countly"

    const-string v2, "[flushEvents] start"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/perfectcorp/uma/countly/i;

    invoke-direct {v0, p0}, Lcom/perfectcorp/uma/countly/i;-><init>(Lcom/perfectcorp/uma/countly/d;)V

    sget-object p0, Lcom/perfectcorp/uma/countly/d;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final h()I
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/perfectcorp/uma/countly/d;->e:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/perfectcorp/uma/countly/d;->e:J

    const-wide/32 v0, 0x1dcd6500

    add-long/2addr v2, v0

    const-wide/32 v0, 0x3b9aca00

    div-long/2addr v2, v0

    long-to-int p0, v2

    return p0
.end method
