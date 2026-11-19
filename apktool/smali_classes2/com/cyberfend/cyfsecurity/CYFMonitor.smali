.class public Lcom/cyberfend/cyfsecurity/CYFMonitor;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:I = 0xb62

.field public static final b:Lcom/cyberfend/cyfsecurity/CYFManager;

.field public static c:Z

.field public static d:Z

.field public static e:Ljava/lang/String;

.field public static f:[I

.field public static g:Z

.field public static final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final j:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final k:Ljava/util/concurrent/ScheduledExecutorService;

.field public static volatile l:Ljava/util/concurrent/ScheduledFuture;

.field public static volatile m:Z


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    const-string v0, "M|S~\\\\FT~C"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "GK|GZSCIkX[[\u0015w\\YDKB\u000coo\u007f\u0010rfh\u0004sCU[Quu<)0-\u000e\u0000"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-direct {v0}, Lcom/cyberfend/cyfsecurity/CYFManager;-><init>()V

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->c:Z

    sput-boolean v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->d:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e:Ljava/lang/String;

    sput-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->f:[I

    sput-boolean v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->g:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->k:Ljava/util/concurrent/ScheduledExecutorService;

    sput-boolean v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "M|S~\\\\FT~C"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v2}, Lcom/cyberfend/cyfsecurity/CYFManager;->r()V

    sget-object v3, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x12

    iput v3, v2, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I

    sget-object v2, LZjTIAZ/JOGAgw;->a:LZjTIAZ/JOGAgw;

    sget-object v3, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e:Ljava/lang/String;

    new-instance v4, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;

    invoke-direct {v4, p0, p2, p1}, Lcom/cyberfend/cyfsecurity/CYFMonitor$4;-><init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3, v4}, LZjTIAZ/JOGAgw;->b(Landroid/app/Application;Ljava/lang/String;LZjTIAZ/JOGAgw$JOGAgw;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QCpGPZ`RCTSNPE_{yx\u0011\u000cOO\\UtPO\u0004LU\u0007FMvw<rl?E]bgm96tygddx-~}\u007fbgf`"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sput-boolean v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->g:Z

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "K]vVCFFO\u007f\u0011\\R\u0015PRLJBd^\u007fKIBDQKgut\u001d\u0008"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFManager;->s()V

    sput-boolean v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->g:Z

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0, v0}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->g(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x5

    invoke-static {p0}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e(I)V

    return-void
.end method

.method public static b(Landroid/app/Application;Z)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->r()V

    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    sput-boolean v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->g:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    const/16 v3, 0xd

    iput v3, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    sget-object v1, LZjTIAZ/JOGAgw;->a:LZjTIAZ/JOGAgw;

    sget-object v3, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e:Ljava/lang/String;

    new-instance v4, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;

    invoke-direct {v4, p0, p1}, Lcom/cyberfend/cyfsecurity/CYFMonitor$3;-><init>(Landroid/app/Application;Z)V

    invoke-virtual {v1, p0, v3, v2, v4}, LZjTIAZ/JOGAgw;->c(Landroid/app/Application;Ljava/lang/String;ILZjTIAZ/JOGAgw$JOGAgw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    return-void

    :goto_1
    const-string v1, "M|S~\\\\FT~C"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "K]vVCFFO\u007f\u0011\\R\u0015PRLJBd^\u007fKIBDQK`ve\u001d\u0008"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    invoke-static {v1, v2, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sput-boolean v3, Lcom/cyberfend/cyfsecurity/CYFMonitor;->g:Z

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 4

    :try_start_0
    const-string v0, "M|S~\\\\FT~C"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]QtAG\u0012LO}]P_A_Y_\tYNB^A]\u0010ECWE"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-wide v0, LZjTIAZ/ZxDSl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, LZjTIAZ/ZxDSl;->b:J

    :cond_0
    sget-wide v0, LZjTIAZ/ZxDSl;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, LZjTIAZ/ZxDSl;->a:J

    :cond_1
    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFManager;->y()V

    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFManager;->z()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->p(Landroid/view/Window;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->x(Landroid/view/Window;)V

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->w(Landroid/content/Context;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, p0}, Lcom/cyberfend/cyfsecurity/CYFManager;->v(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object p0

    invoke-virtual {p0}, LZjTIAZ/ASYMBN;->f()V

    return-void
.end method

.method public static d()V
    .locals 3

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    sget v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a:I

    xor-int/lit16 v1, v1, 0xb62

    if-eqz v1, :cond_3

    :goto_0
    sget v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a:I

    add-int/lit8 v1, v0, 0x27

    const/16 v2, 0x24

    if-eq v1, v2, :cond_2

    const/16 v2, 0xaa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xed

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, v0, 0x5b

    mul-int/lit8 v1, v1, 0x39

    sput v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a:I

    :cond_1
    sget v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a:I

    add-int/2addr v1, v0

    rem-int/lit8 v1, v1, 0x31

    sput v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a:I

    :cond_2
    :goto_1
    sget v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a:I

    xor-int/lit16 v0, v0, 0x573

    rem-int/lit8 v0, v0, 0xd

    rem-int/lit8 v0, v0, 0x12

    sput v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a:I

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    iput v1, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->p:I

    :cond_4
    return-void
.end method

.method public static e(I)V
    .locals 3

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iput p0, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->p:I

    :cond_0
    return-void
.end method

.method public static declared-synchronized f()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->t()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v2, "M|S~\\\\FT~C"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MW|GZQNL1TGNZD\u0017QG\nLIY}J^RMQ`DRF"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v2, v3, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-string v1, "j@sRF^[\r|^WUYS"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static g(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iget v1, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v6, "M|S~\\\\FT~C"

    const/4 v7, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_6

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    :catch_1
    :try_start_2
    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GKcR_[K\u0000uTY]L\u0016AYE_N\u000c\n"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\u0005\u2006\u0013WWIAd]AU[Q\u0017LF\nBA@KKY@VF\u0004LHN\\Q{wug\u007fkI_|="

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v7, [Ljava/lang/Throwable;

    invoke-static {v0, p1, v1}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move p1, v7

    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "JvV\u0013ZA\u000fDxBT^YSS\u0018KS\u000b_H\\YUS\u0002\u000b\t\u0014\u0006CMT{b53"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v7, [Ljava/lang/Throwable;

    invoke-static {p0, p1, v0}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_1
    if-gez p1, :cond_2

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@rRG[YE1UPPTO\u0017\u0010"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'\u0005zG[W]\u0000eYTR\u0015\u001b\u0006\u0018LDHCX@[USGG\u0004\u2036\u0006R[Qt|<tsrET{r`p6~v`~bmaguquklj+"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v7, [Ljava/lang/Throwable;

    invoke-static {v0, p1, v1}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move p1, v7

    :cond_2
    const v0, 0x493e0

    if-le p1, v0, :cond_3

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "J@yRJ\u0012"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "cV5VKQJEuB\u0015QTN\u0017\u0010"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'\u001e5P_SBPx_R\u0012"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v7, [Ljava/lang/Throwable;

    invoke-static {v1, p1, v2}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move p1, v0

    :cond_3
    if-nez p1, :cond_4

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GK|GZSCIkX[[\u0015rd{\tCFAHJFQUGO]\u0005\u000eCMT{b!-71"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Throwable;

    invoke-static {p1, v0, v1}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-object v8, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    sget-object v10, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e:Ljava/lang/String;

    move-object v9, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Lcom/cyberfend/cyfsecurity/CYFManager;->u(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "]F}VWGCI\u007fV\u0015xfu\u0017QGC_ELBFJ@VJKK\u0006NF\u0018"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".Hf\u001d"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Throwable;

    invoke-static {v0, v2, v3}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->l:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->l:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->l:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_5
    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct {v2, p0, v11, v12, v13}, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;-><init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    int-to-long p0, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->l:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    :cond_6
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "GK|GZSCIkX[[\u0015rd{\t]BXE\u000eA_\u0001QFVSCU\u0005HhtjtzzD\u0010vvxto9"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Throwable;

    invoke-static {p1, v2, v3}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e:Ljava/lang/String;

    move-object v1, p0

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/cyberfend/cyfsecurity/CYFManager;->u(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v0, v7, [Ljava/lang/Throwable;

    invoke-static {p1, p0, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static h(Landroid/app/Application;Ljava/lang/String;)V
    .locals 10

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "M|S~\\\\FT~C"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "GK|GZSCIkX[[\u0015w\\YDKB\u000coo\u007f\u0010lMMMQIU"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, LZjTIAZ/DeHqqG;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, LZjTIAZ/DeHqqG;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, LZjTIAZ/DeHqqG;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LZjTIAZ/DeHqqG;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LZjTIAZ/DeHqqG;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fQaC"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "fQaC@"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v3, :cond_18

    :cond_4
    sget-boolean v3, Lcom/cyberfend/cyfsecurity/CYFMonitor;->c:Z

    if-eqz v3, :cond_5

    return-void

    :cond_5
    sget-boolean v3, Lcom/cyberfend/cyfsecurity/SensorDataBuilder;->b:Z

    if-eqz v3, :cond_6

    const-string p0, "M|S~\\\\FT~C"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BJtW\u0013~FBcPGE\u0015pVQE_YI"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Throwable;

    invoke-static {p0, p1, v0}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :cond_6
    sput-object p0, LZjTIAZ/XBnaCg;->b:Landroid/app/Application;

    const-string v3, "M|S~\\\\FT~C"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "OGzFG\u0012[O1RTPY\u0016taocEXHI]YU[`L@ELMJ"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    sget-object v3, LZjTIAZ/ASYMBN;->j:LZjTIAZ/ASYMBN;

    const-class v3, LZjTIAZ/ASYMBN;

    monitor-enter v3

    :try_start_2
    sget-object v4, LZjTIAZ/ASYMBN;->j:LZjTIAZ/ASYMBN;

    if-nez v4, :cond_7

    new-instance v4, LZjTIAZ/ASYMBN;

    invoke-direct {v4, p0}, LZjTIAZ/ASYMBN;-><init>(Landroid/app/Application;)V

    sput-object v4, LZjTIAZ/ASYMBN;->j:LZjTIAZ/ASYMBN;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_19

    :cond_7
    :goto_2
    sget-object v4, LZjTIAZ/ASYMBN;->j:LZjTIAZ/ASYMBN;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    iget-object v3, v4, LZjTIAZ/ASYMBN;->h:Ljava/util/ArrayList;

    :try_start_3
    iget-object v5, v4, LZjTIAZ/ASYMBN;->f:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    sget-object v6, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->NONE:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    if-ne v5, v6, :cond_8

    goto :goto_6

    :cond_8
    iput-boolean v2, v4, LZjTIAZ/ASYMBN;->a:Z

    iput-boolean v2, v4, LZjTIAZ/ASYMBN;->b:Z

    iput-boolean v2, v4, LZjTIAZ/ASYMBN;->c:Z

    iput-boolean v2, v4, LZjTIAZ/ASYMBN;->d:Z

    iput-boolean v2, v4, LZjTIAZ/ASYMBN;->e:Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_9

    sget-object v5, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$IntegrityCheckState;->INITIALIZATION_BACKGROUND_THREAD:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$IntegrityCheckState;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, LZjTIAZ/ASYMBN;->i0:Ljava/lang/String;

    sget-object v5, LZjTIAZ/ASYMBN;->T:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v3, v5}, LZjTIAZ/ASYMBN;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :cond_9
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    :catch_1
    move v5, v2

    goto :goto_4

    :cond_a
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    if-nez v5, :cond_b

    :try_start_5
    sget-object v5, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$IntegrityCheckState;->INITIALIZATION_INVALID_URL:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$IntegrityCheckState;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, LZjTIAZ/ASYMBN;->p:Ljava/lang/String;

    sget-object v5, LZjTIAZ/ASYMBN;->v:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :cond_b
    :try_start_6
    invoke-static {}, LZjTIAZ/XBnaCg;->a()Z

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move v5, v2

    :goto_5
    if-nez v5, :cond_c

    :try_start_7
    sget-object v5, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$IntegrityCheckState;->INITIALIZATION_NO_NETWORK:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$IntegrityCheckState;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, LZjTIAZ/ASYMBN;->a0:Ljava/lang/String;

    sget-object v5, LZjTIAZ/ASYMBN;->F:Ljava/lang/String;

    goto :goto_3

    :cond_c
    sget v3, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$IntegrityCheckState;->JAJ:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    :goto_6
    sget-object v3, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iput-object p1, v3, Lcom/cyberfend/cyfsecurity/CYFManager;->m:Ljava/lang/String;

    iput v2, v3, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    iput v2, v3, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v5, "M|S~\\\\FT~C"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\@rZ@FJRx_R\u001cTUCQ_C_U\rBFVDAZGIC\u0007KYvw~|}tS"

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Throwable;

    invoke-static {v5, v6, v7}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-object v5, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    if-nez p0, :cond_d

    const-string v1, "]@{@\\@kAePv]V^R"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "gK|GZSCIkT\u000f\u001cvYYLLR_\u000c]\\@FHFF@\u0005OT\u0008Vowp"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/Throwable;

    invoke-static {v1, v5, v7}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, v5, LZjTIAZ/RXtEM;->a:Landroid/content/Context;

    const-string v7, "]@{@\\@kAePv]V^R"

    invoke-static {v7}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "GK|GZSCIkX[[\u0015UV[AO"

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    monitor-enter v5

    :try_start_8
    invoke-virtual {v5}, LZjTIAZ/RXtEM;->c()Landroid/content/SharedPreferences;

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v7, :cond_e

    :goto_7
    monitor-exit v5

    goto/16 :goto_c

    :cond_e
    :try_start_9
    iget-object v8, v5, LZjTIAZ/RXtEM;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v9, "}@{@\\@pDpET"

    invoke-static {v9}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v8, v5, LZjTIAZ/RXtEM;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v9, "}VJ@ZUAA}"

    invoke-static {v9}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-string v8, "mUglG]DE\u007f"

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, v5, LZjTIAZ/RXtEM;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_8

    :catchall_1
    move-exception p0

    goto/16 :goto_18

    :catch_4
    move-exception v1

    goto/16 :goto_b

    :cond_f
    iget-object v8, v5, LZjTIAZ/RXtEM;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_8
    const-string v8, "mUgl@[HNp]"

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, v5, LZjTIAZ/RXtEM;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_9

    :cond_10
    iget-object v8, v5, LZjTIAZ/RXtEM;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_9
    const-string v8, "zRclV\\LRhAAYQiGYPFDMI"

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, v5, LZjTIAZ/RXtEM;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_a

    :cond_11
    iget-object v8, v5, LZjTIAZ/RXtEM;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_a
    const-string v8, "j@cZPWpIu"

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "#\u0014"

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    iget-object v1, v5, LZjTIAZ/RXtEM;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_12
    iget-object v7, v5, LZjTIAZ/RXtEM;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_7

    :goto_b
    :try_start_a
    const-string v7, "]@{@\\@kAePv]V^R"

    invoke-static {v7}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "bJtWwS[A1TM_PFCQFD"

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Throwable;

    aput-object v1, v9, v2

    invoke-static {v7, v8, v9}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_7

    :goto_c
    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    monitor-enter v1

    :try_start_b
    sget-boolean v5, Lcom/cyberfend/cyfsecurity/CYFManager;->y:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez v5, :cond_13

    if-eqz p0, :cond_13

    :try_start_c
    new-instance v5, LZjTIAZ/DUcPEg;

    invoke-direct {v5}, LZjTIAZ/DUcPEg;-><init>()V

    iput-object v5, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->j:LZjTIAZ/DUcPEg;

    invoke-virtual {v5, p0}, LZjTIAZ/DUcPEg;->d(Landroid/app/Application;)V

    sput-boolean v6, Lcom/cyberfend/cyfsecurity/CYFManager;->y:Z

    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->b()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception p0

    goto/16 :goto_17

    :catch_5
    move-exception v5

    :try_start_d
    invoke-static {v5}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    sget-object v5, Lcom/cyberfend/cyfsecurity/SDKInitFailure;->MOTION_SENSOR_FAILURE:Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->a()V

    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object v5

    invoke-virtual {v5}, LZjTIAZ/ASYMBN;->f()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_13
    :goto_d
    monitor-exit v1

    sget-object v5, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    monitor-enter v5

    :try_start_e
    sget-boolean v1, Lcom/cyberfend/cyfsecurity/CYFManager;->z:Z

    if-nez v1, :cond_14

    new-instance v1, LZjTIAZ/WpDaqA;

    invoke-direct {v1}, LZjTIAZ/WpDaqA;-><init>()V

    iput-object v1, v5, Lcom/cyberfend/cyfsecurity/CYFManager;->g:LZjTIAZ/WpDaqA;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sput-boolean v6, Lcom/cyberfend/cyfsecurity/CYFManager;->z:Z

    invoke-virtual {v5}, Lcom/cyberfend/cyfsecurity/CYFManager;->b()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception p0

    goto/16 :goto_16

    :cond_14
    :goto_e
    monitor-exit v5

    monitor-enter v5

    :try_start_f
    sget-boolean v1, Lcom/cyberfend/cyfsecurity/CYFManager;->A:Z

    if-nez v1, :cond_15

    if-eqz p0, :cond_15

    new-instance v1, LZjTIAZ/UfEmur;

    invoke-direct {v1, p0}, LZjTIAZ/UfEmur;-><init>(Landroid/app/Application;)V

    iput-object v1, v5, Lcom/cyberfend/cyfsecurity/CYFManager;->h:LZjTIAZ/UfEmur;

    sput-boolean v6, Lcom/cyberfend/cyfsecurity/CYFManager;->A:Z

    invoke-virtual {v5}, Lcom/cyberfend/cyfsecurity/CYFManager;->b()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_f

    :catchall_4
    move-exception p0

    goto/16 :goto_15

    :catch_6
    move-exception v1

    :try_start_10
    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object v7

    invoke-virtual {v7}, LZjTIAZ/ASYMBN;->f()V

    invoke-static {v1}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    sget-object v1, Lcom/cyberfend/cyfsecurity/SDKInitFailure;->MOTION_SENSOR_FAILURE:Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    invoke-virtual {v5}, Lcom/cyberfend/cyfsecurity/CYFManager;->a()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :cond_15
    :goto_f
    monitor-exit v5

    monitor-enter v5

    :try_start_11
    iget-object v1, v5, Lcom/cyberfend/cyfsecurity/CYFManager;->d:LZjTIAZ/Gvcplk;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v1, :cond_16

    :goto_10
    monitor-exit v5

    goto :goto_11

    :cond_16
    :try_start_12
    new-instance v1, LZjTIAZ/Gvcplk;

    invoke-direct {v1, p0, v5}, LZjTIAZ/Gvcplk;-><init>(Landroid/app/Application;LZjTIAZ/KgGan;)V

    iput-object v1, v5, Lcom/cyberfend/cyfsecurity/CYFManager;->d:LZjTIAZ/Gvcplk;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_10

    :goto_11
    monitor-enter v5

    :try_start_13
    iget-object v1, v5, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v1, :cond_17

    :goto_12
    monitor-exit v5

    goto :goto_13

    :cond_17
    :try_start_14
    new-instance v1, LZjTIAZ/QYXNEc;

    invoke-direct {v1, p0, v5}, LZjTIAZ/QYXNEc;-><init>(Landroid/app/Application;LZjTIAZ/KgGan;)V

    iput-object v1, v5, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto :goto_12

    :goto_13
    sget-object v1, LZjTIAZ/XNPXeV;->j:LZjTIAZ/XNPXeV;

    invoke-virtual {v1}, LZjTIAZ/XNPXeV;->e()V

    new-instance v1, LZjTIAZ/NUprz;

    invoke-direct {v1}, LZjTIAZ/NUprz;-><init>()V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sput-boolean v6, Lcom/cyberfend/cyfsecurity/CYFMonitor;->c:Z

    sput-object p1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e:Ljava/lang/String;

    :try_start_15
    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/cyberfend/cyfsecurity/CYFMonitor$1;

    invoke-direct {v1, v0, p0}, Lcom/cyberfend/cyfsecurity/CYFMonitor$1;-><init>(Ljava/lang/Boolean;Landroid/app/Application;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    goto :goto_14

    :catch_7
    move-exception p0

    const-string p1, "M|S~\\\\FT~C"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HD|_VV\u000fT~\u0011F_]SSMEO\u000bh~m\u000fVDV@L\u0005ROZ]{\u007f&="

    invoke-static {p0, v1, v0}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Throwable;

    invoke-static {p1, v0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :goto_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v3

    const-string v0, "M|S~\\\\FT~C"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GK|GZSCIkT\u0018h\\[R\u0002\t"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "cV"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :catchall_5
    move-exception p0

    :try_start_16
    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    throw p0

    :catchall_6
    move-exception p0

    :try_start_17
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    throw p0

    :goto_15
    :try_start_18
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    throw p0

    :goto_16
    :try_start_19
    monitor-exit v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    throw p0

    :goto_17
    :try_start_1a
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    throw p0

    :goto_18
    :try_start_1b
    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    throw p0

    :goto_19
    :try_start_1c
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    throw p0

    :catch_8
    :cond_18
    const-string p0, "M|S~\\\\FT~C"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GK|G\u0013tNI}TQ\u001c\u0018\u0016~V_KGEI\u000ezbm"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Throwable;

    invoke-static {p0, p1, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-string p0, "ZMp\u0013f`c\u0000w^GQTB\u0017QZ\n\\^B@H\u001e\u0001oLV@\u0006CML{rpn>wTDb`.:9c}jbocn}!qjcnel(dgt\u0015RgeGVt\u001eVNM\u0015CHXJUwW3BRNPNEY\u0005TNB\u0014{IW},X\u007f`~qoyc\u007f4brI|v[=`t{+yzfloug9FU["

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method
