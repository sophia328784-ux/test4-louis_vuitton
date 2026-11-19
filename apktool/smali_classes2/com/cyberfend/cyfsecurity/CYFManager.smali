.class public Lcom/cyberfend/cyfsecurity/CYFManager;
.super Ljava/lang/Object;

# interfaces
.implements LZjTIAZ/KgGan;


# static fields
.field public static A:Z = false

.field public static B:Z = false

.field public static u:I = 0xace

.field public static v:I = 0x17f4

.field public static final w:LwcQZwr/MrfBl;

.field public static final x:Ljava/util/ArrayList;

.field public static y:Z

.field public static z:Z


# instance fields
.field public final a:LZjTIAZ/WmAQuO;

.field public b:LZjTIAZ/CbGKec;

.field public c:LZjTIAZ/ECIjpk;

.field public d:LZjTIAZ/Gvcplk;

.field public e:LZjTIAZ/QYXNEc;

.field public f:LZjTIAZ/QQixUL;

.field public g:LZjTIAZ/WpDaqA;

.field public h:LZjTIAZ/UfEmur;

.field public i:LZjTIAZ/ZptgnD;

.field public j:LZjTIAZ/DUcPEg;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public l:Landroid/os/Handler;

.field public m:Ljava/lang/String;

.field public volatile n:I

.field public volatile o:I

.field public volatile p:I

.field public q:I

.field public r:Ljava/util/Date;

.field public s:Z

.field public final t:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    new-instance v0, LwcQZwr/MrfBl;

    new-instance v1, Landroid/util/Pair;

    const-string v2, ""

    invoke-direct {v1, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2, v2}, LwcQZwr/MrfBl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFManager;->w:LwcQZwr/MrfBl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFManager;->x:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cyberfend/cyfsecurity/CYFManager;->y:Z

    sput-boolean v0, Lcom/cyberfend/cyfsecurity/CYFManager;->z:Z

    sput-boolean v0, Lcom/cyberfend/cyfsecurity/CYFManager;->A:Z

    sput-boolean v0, Lcom/cyberfend/cyfsecurity/CYFManager;->B:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LZjTIAZ/WmAQuO;

    invoke-direct {v0}, LZjTIAZ/WmAQuO;-><init>()V

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->a:LZjTIAZ/WmAQuO;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->b:LZjTIAZ/CbGKec;

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->c:LZjTIAZ/ECIjpk;

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->d:LZjTIAZ/Gvcplk;

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->f:LZjTIAZ/QQixUL;

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->g:LZjTIAZ/WpDaqA;

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->h:LZjTIAZ/UfEmur;

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->j:LZjTIAZ/DUcPEg;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->l:Landroid/os/Handler;

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->m:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->q:I

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->r:Ljava/util/Date;

    iput-boolean v2, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->s:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->t:Ljava/util/concurrent/ExecutorService;

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->l:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "M|S~R\\NGtC"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BLfGV\\JR1YTRQZRJ\tCEEY\u000eIQHNVV@"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(III)J
    .locals 12

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    sget v2, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    const/16 v3, 0xacd

    if-gt v2, v3, :cond_1

    :goto_0
    sget v2, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    add-int/lit8 v3, v2, 0xd

    const/16 v4, 0x5e

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    rem-int/lit8 v2, v2, 0x7

    xor-int/lit16 v2, v2, 0x848

    shr-int/lit8 v2, v2, 0x6c

    sput v2, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    :cond_1
    int-to-long v2, p1

    sget p1, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    const/16 v4, 0x17f3

    if-gt p1, v4, :cond_3

    :goto_1
    sget p0, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    add-int/lit8 p1, p0, 0xd

    const/16 p2, 0x5d

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 p0, p0, 0x60

    xor-int/lit16 p0, p0, 0x123f

    sput p0, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    goto :goto_1

    :cond_3
    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    sget p1, LJeZnOD/AbwThP;->a:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    long-to-int p1, v0

    shr-long/2addr v0, p0

    long-to-int v0, v0

    const/4 v1, 0x0

    move v6, v1

    :goto_2
    const/16 v7, 0x10

    if-ge v6, v7, :cond_7

    shl-int v7, p2, v6

    sget v8, LJeZnOD/AbwThP;->a:I

    xor-int/lit16 v8, v8, 0x155e

    if-eqz v8, :cond_6

    :goto_3
    sget v8, LJeZnOD/AbwThP;->a:I

    add-int/lit8 v9, v8, 0xd

    const/16 v10, 0x17

    if-eq v9, v10, :cond_5

    const/16 v10, 0x74

    if-eq v9, v10, :cond_4

    goto :goto_3

    :cond_4
    :goto_4
    sget p0, LJeZnOD/AbwThP;->a:I

    shr-int/lit8 p0, p0, 0x70

    add-int/2addr p0, v8

    mul-int/lit8 p0, p0, 0x7d

    sput p0, LJeZnOD/AbwThP;->a:I

    goto :goto_4

    :cond_5
    shr-int/lit8 v8, v8, 0x8

    mul-int/lit8 v8, v8, 0x23

    sput v8, LJeZnOD/AbwThP;->a:I

    :cond_6
    rsub-int/lit8 v8, v6, 0x20

    ushr-int v8, p2, v8

    or-int/2addr v7, v8

    xor-int/2addr v7, p1

    xor-int/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    move v11, v0

    move v0, p1

    move p1, v11

    goto :goto_2

    :cond_7
    int-to-long v6, v0

    shl-long/2addr v6, p0

    int-to-long p0, p1

    and-long/2addr p0, v4

    or-long/2addr p0, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-object p2, LJeZnOD/AbwThP;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LJeZnOD/AbwThP;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, LJeZnOD/AbwThP;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {p2, v0, v1}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-wide p0
.end method

.method public static synthetic i(III)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cyberfend/cyfsecurity/CYFManager;->d(III)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic j(Lcom/cyberfend/cyfsecurity/CYFManager;)LZjTIAZ/ZptgnD;
    .locals 0

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    return-object p0
.end method

.method public static synthetic k(Lcom/cyberfend/cyfsecurity/CYFManager;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFManager;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/cyberfend/cyfsecurity/CYFManager;)LZjTIAZ/DUcPEg;
    .locals 0

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->j:LZjTIAZ/DUcPEg;

    return-object p0
.end method

.method public static declared-synchronized p(Landroid/view/Window;)Z
    .locals 5

    const-class v0, Lcom/cyberfend/cyfsecurity/CYFManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/cyberfend/cyfsecurity/CYFManager;->x:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v3, :cond_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized A()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->d:LZjTIAZ/Gvcplk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, LZjTIAZ/Gvcplk;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "M|S~R\\NGtC"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "K]vVCFFO\u007f\u0011\\R\u0015ECWYZBBJ\u000eB_UKLJ\u0005KFFY}~n"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized B()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, LZjTIAZ/QYXNEc;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "M|S~R\\NGtC"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "K]vVCFFO\u007f\u0011\\R\u0015ECWYZBBJ\u000e@BHGMPDRNGV:v}s\u007fxEB"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized C()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->d:LZjTIAZ/Gvcplk;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, LZjTIAZ/Gvcplk;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x10

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;

    iget-object v1, v1, LZjTIAZ/QYXNEc;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/cyberfend/cyfsecurity/CYFManager$5;

    invoke-direct {v2, p0}, Lcom/cyberfend/cyfsecurity/CYFManager$5;-><init>(Lcom/cyberfend/cyfsecurity/CYFManager;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    :goto_0
    const-string v1, "M|S~R\\NGtC"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CJaZ\\\\\u0000ocXPRAWCQFD\u000bAL@NWDPP\u0004KIS\u0008Qtrht\u007fsIJww/5e|qyzbbj.lqbjf$pvcim_\u0012"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    const-string v2, "M|S~R\\NGtC"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{UqRGW|E\u007fBZNqWCYjKHDH\u000eJHDAVPJT\u0007MJhtn\'>"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-static {v2, v3, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v1}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a:I
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

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a:I
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

.method public final c()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->f:LZjTIAZ/QQixUL;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput v1, v0, LZjTIAZ/QQixUL;->b:I

    iput v1, v0, LZjTIAZ/QQixUL;->c:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, LZjTIAZ/QQixUL;->d:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, LZjTIAZ/QQixUL;->a:J

    iget-object v2, v0, LZjTIAZ/QQixUL;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, LZjTIAZ/QQixUL;->f:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, LZjTIAZ/QQixUL;->f:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, LZjTIAZ/QQixUL;->f:Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, LZjTIAZ/QQixUL;->f:Ljava/util/concurrent/Future;

    :cond_1
    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->b:LZjTIAZ/CbGKec;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LZjTIAZ/CbGKec;->d()V

    :cond_2
    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->c:LZjTIAZ/ECIjpk;

    if-eqz p0, :cond_3

    iget-object p0, p0, LZjTIAZ/ECIjpk;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_3
    invoke-static {}, LZjTIAZ/XbALEN;->c()V

    sget p0, LZjTIAZ/ZxDSl;->c:I

    const-string p0, "MJ{@GSATb"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\@fVGFFNv\u0011C]YCRK"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {p0, v0, v1}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, LZjTIAZ/ZxDSl;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, LZjTIAZ/ZxDSl;->a:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 11

    const-string v0, "M|S~R\\NGtC"

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v2, "$"

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    iget-object v5, v5, LZjTIAZ/RXtEM;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, ""

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v7, :cond_1

    move-object v5, v6

    :cond_1
    :try_start_2
    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->l:Landroid/os/Handler;

    if-nez v7, :cond_2

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->l:Landroid/os/Handler;

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->l:Landroid/os/Handler;

    new-instance v8, Lcom/cyberfend/cyfsecurity/CYFManager$3;

    invoke-direct {v8, p0}, Lcom/cyberfend/cyfsecurity/CYFManager$3;-><init>(Lcom/cyberfend/cyfsecurity/CYFManager;)V

    const-wide/16 v9, 0x1388

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_2
    :try_start_3
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "HD|_VV\u000fT~\u0011F_]SSMEO\u000b_H@\\_S\u0002GEQG\u0007Z]|iynv"

    invoke-static {v9}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Throwable;

    aput-object v7, v10, v4

    invoke-static {v8, v9, v10}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFManager;->g()Ljava/lang/String;

    move-result-object p0

    sget-object v1, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    iget-object v1, v1, LZjTIAZ/RXtEM;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v1, v6

    :goto_4
    sget-object v7, LZjTIAZ/DQwsTh;->A:LZjTIAZ/DQwsTh;

    invoke-virtual {v7}, LZjTIAZ/DQwsTh;->h()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    move-object v7, v6

    :goto_5
    sget-object v8, LZjTIAZ/AcVtYN;->I:LZjTIAZ/AcVtYN;

    invoke-virtual {v8}, LZjTIAZ/AcVtYN;->p()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move-object v8, v6

    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_7

    move-object v6, v1

    :cond_7
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "i@apRQGEubPRFYE|H^J\u000cKOF\\DF"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Throwable;

    aput-object p0, v2, v4

    invoke-static {v0, v1, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    const-string p0, "j@sRF^[\r|^WUYS"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, LZjTIAZ/QYXNEc;->c:J

    iget-object v1, v0, LZjTIAZ/QYXNEc;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, LZjTIAZ/QYXNEc;->f:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, LZjTIAZ/QYXNEc;->f:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, LZjTIAZ/QYXNEc;->f:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, LZjTIAZ/QYXNEc;->f:Ljava/util/concurrent/Future;

    :cond_1
    iget-object v0, v0, LZjTIAZ/QYXNEc;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->d:LZjTIAZ/Gvcplk;

    invoke-virtual {p0}, LZjTIAZ/Gvcplk;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 11

    const-string v0, "#\u0014"

    const-string v1, ":\u000b\'\u001d\u0003"

    const-string v2, "0"

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, LZjTIAZ/ZptgnD;->t()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    invoke-virtual {v5}, LZjTIAZ/ZptgnD;->u()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    iget-object v7, v6, LZjTIAZ/ZptgnD;->h:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v6, LZjTIAZ/ZptgnD;->h:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v6, v6, LZjTIAZ/ZptgnD;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v6, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {v6}, LZjTIAZ/RXtEM;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, ""

    goto :goto_0

    :catch_0
    move-exception v4

    goto/16 :goto_3

    :cond_2
    sget-object v4, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {v4}, LZjTIAZ/RXtEM;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, LZjTIAZ/RXtEM;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, LZjTIAZ/RXtEM;->k()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v6

    move-object v6, v4

    move-object v4, v5

    move-object v5, v10

    :goto_0
    :try_start_1
    iget-object v7, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->j:LZjTIAZ/DUcPEg;

    if-eqz v7, :cond_3

    iget-object v7, v7, LZjTIAZ/DUcPEg;->g:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v7, v3

    :goto_1
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_4

    :try_start_2
    sget-object v8, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {v8, v7}, LZjTIAZ/RXtEM;->o(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :cond_4
    :try_start_3
    sget-object v7, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {v7}, LZjTIAZ/RXtEM;->e()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-object v7, v2

    :catchall_1
    :goto_2
    const-string v8, "(\u00033"

    if-eqz v6, :cond_5

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :goto_3
    const-string v5, "M|S~R\\NGtC"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lP|_Wq_RBXRRTZsY]K\u000bI_\\@B\u001b\u0002"

    invoke-static {v4, v7, v6}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Throwable;

    invoke-static {v5, v4, v6}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :try_start_5
    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->j:LZjTIAZ/DUcPEg;

    if-eqz p0, :cond_6

    iget-object v3, p0, LZjTIAZ/DUcPEg;->g:Ljava/lang/String;

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez p0, :cond_7

    :try_start_6
    sget-object p0, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {p0, v3}, LZjTIAZ/RXtEM;->o(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-object v2, v3

    goto :goto_4

    :cond_7
    :try_start_7
    sget-object p0, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {p0}, LZjTIAZ/RXtEM;->e()Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v2, p0

    :catchall_3
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ">\u00033\u0015"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(\u00033\u0003\u0015\u0014\t"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->t()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {p0}, LZjTIAZ/RXtEM;->f()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "M|S~R\\NGtC"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i@apC@lFxx[ZZpXJzOE_B\\kQUC\u0003AWTHZ\u0002:"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-string p0, "0"

    return-object p0
.end method

.method public final m()Z
    .locals 6

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->d:LZjTIAZ/Gvcplk;

    iget-object v0, v0, LZjTIAZ/Gvcplk;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;

    sget v0, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    const/16 v1, 0x17f3

    const/4 v4, 0x1

    if-gt v0, v1, :cond_7

    :goto_0
    sget v0, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    add-int/lit8 v1, v0, 0x27

    const/16 v5, 0x52

    if-eq v1, v5, :cond_2

    const/16 v5, 0x89

    if-eq v1, v5, :cond_1

    const/16 v5, 0xb7

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit16 p0, v0, 0x136c

    mul-int/lit8 p0, p0, 0x3b

    rem-int/lit8 p0, p0, 0x69

    sput p0, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x6e

    shr-int/lit8 v0, v0, 0x36

    sput v0, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    goto :goto_6

    :cond_2
    :goto_1
    sget p0, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x5

    shr-int/lit8 p0, p0, 0x66

    sput p0, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    sget p0, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    xor-int/lit16 p0, p0, 0xace

    if-eqz p0, :cond_2

    :goto_2
    sget p0, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    add-int/lit8 v0, p0, 0x41

    const/16 v1, 0x35

    if-eq v0, v1, :cond_5

    const/16 v1, 0xeb

    if-eq v0, v1, :cond_4

    const/16 v1, 0x15d

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1f1

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    mul-int/lit8 v0, p0, 0x6b

    xor-int/lit16 v0, v0, 0x853

    shr-int/2addr v0, v4

    goto :goto_5

    :cond_4
    :goto_3
    sget v0, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    rem-int/lit8 v0, v0, 0x6a

    add-int/2addr v0, p0

    sput v0, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    goto :goto_3

    :cond_5
    :goto_4
    sget v0, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    add-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x6e

    shr-int/lit8 v0, v0, 0x37

    sput v0, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    :cond_6
    sget v0, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    shr-int/lit8 v0, v0, 0x11

    add-int/2addr v0, p0

    xor-int/lit16 v0, v0, 0xe60

    :goto_5
    sput v0, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    goto :goto_4

    :cond_7
    :goto_6
    iget-object p0, p0, LZjTIAZ/QYXNEc;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    int-to-long v0, p0

    cmp-long p0, v0, v2

    if-gez p0, :cond_a

    sget-object p0, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    iget-object p0, p0, LZjTIAZ/RXtEM;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    sget p0, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    xor-int/lit16 p0, p0, 0xace

    if-eqz p0, :cond_9

    :goto_7
    sget p0, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    add-int/lit8 v0, p0, 0x68

    const/16 v1, 0x10

    if-eq v0, v1, :cond_8

    goto :goto_7

    :cond_8
    add-int/2addr p0, p0

    rem-int/lit8 p0, p0, 0x4d

    xor-int/lit16 p0, p0, 0xb25

    sput p0, Lcom/cyberfend/cyfsecurity/CYFManager;->u:I

    :cond_9
    return v4

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final n()Ljava/lang/String;
    .locals 59

    move-object/from16 v1, p0

    const-string v0, "#\u0014%\u0000"

    const-string v2, "#\u0014%\u0001"

    const-string v3, "#\u0014%\u0002"

    const-string v4, "#\u0014%\u0003"

    const-string v5, "#\u0014\'\u0002"

    const-string v6, "#\u001d%"

    const-string v7, "#\u0012%"

    const-string v8, "#\u001c$"

    const-string v9, "#\u001c%"

    const-string v10, ":\u000b\'\u001d\u0003"

    const-string v11, "jHJF]@"

    const-string v12, "jJJF]@"

    const-string v13, "$"

    const-string v14, "#\u0014$\u0006"

    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v16, "#\u0014"

    const-string v19, "M|S~R\\NGtC"

    move-object/from16 v20, v2

    const-string v2, ""

    move-object/from16 v21, v3

    const-string v3, ","

    move-object/from16 v22, v4

    :try_start_0
    invoke-static/range {v19 .. v19}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v24, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "LP|_W[AG1BPRFYE\u0018MK_M\u0017\u000e"

    move-object/from16 v26, v6

    invoke-static/range {v25 .. v25}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v25, v7

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Throwable;

    invoke-static {v4, v5, v7}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, LZjTIAZ/XbALEN;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "j@sRF^[\u007faTGZZDZYGIN"

    invoke-static {v7}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, LZjTIAZ/AagQCC;->a()Ljava/lang/String;

    move-result-object v6

    const-class v7, LZjTIAZ/XbALEN;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v6, "j@sRF^[\u007faTGZZDZYGIN"

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    sput-object v6, LZjTIAZ/XbALEN;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :goto_1
    const/4 v4, 0x1

    const/16 v23, 0x0

    goto/16 :goto_22

    :catchall_1
    move-exception v0

    goto/16 :goto_20

    :catch_0
    move-exception v0

    goto/16 :goto_21

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v6, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->l:Landroid/os/Handler;

    if-nez v6, :cond_2

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->l:Landroid/os/Handler;

    :cond_2
    invoke-static/range {v16 .. v16}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v16 .. v16}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v16 .. v16}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v16 .. v16}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-wide/from16 v29, v4

    const-string v4, "0"

    invoke-static/range {v16 .. v16}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v31, Lcom/cyberfend/cyfsecurity/CYFMonitor;->a:I

    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->m()Z

    move-result v31

    if-eqz v31, :cond_3

    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->a:LZjTIAZ/WmAQuO;

    new-instance v3, Lcom/cyberfend/cyfsecurity/CYFManager$4;

    invoke-direct {v3, v1}, Lcom/cyberfend/cyfsecurity/CYFManager$4;-><init>(Lcom/cyberfend/cyfsecurity/CYFManager;)V

    invoke-virtual {v2, v3}, LZjTIAZ/WmAQuO;->b(Ljava/lang/Runnable;)V

    return-object v0

    :cond_3
    move-object/from16 v31, v5

    iget-object v5, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->j:LZjTIAZ/DUcPEg;

    if-eqz v5, :cond_4

    iget-object v6, v5, LZjTIAZ/DUcPEg;->b:Ljava/lang/String;

    invoke-virtual {v5}, LZjTIAZ/DUcPEg;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v5, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->j:LZjTIAZ/DUcPEg;

    iget-object v5, v5, LZjTIAZ/DUcPEg;->o:Ljava/lang/String;

    :goto_3
    move-object/from16 v32, v8

    goto :goto_4

    :cond_4
    move-object v5, v2

    goto :goto_3

    :goto_4
    iget-object v8, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->h:LZjTIAZ/UfEmur;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v8, :cond_7

    :try_start_5
    invoke-virtual {v8}, LZjTIAZ/UfEmur;->h()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->h:LZjTIAZ/UfEmur;

    invoke-virtual {v8}, LZjTIAZ/UfEmur;->h()Ljava/lang/String;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v27, v8

    goto :goto_5

    :cond_5
    move-object/from16 v27, v2

    :catch_2
    :goto_5
    :try_start_6
    iget-object v8, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->h:LZjTIAZ/UfEmur;

    invoke-virtual {v8}, LZjTIAZ/UfEmur;->g()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->h:LZjTIAZ/UfEmur;

    invoke-virtual {v8}, LZjTIAZ/UfEmur;->g()Ljava/lang/String;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v28, v8

    goto :goto_6

    :cond_6
    move-object/from16 v28, v2

    :catch_3
    :cond_7
    :goto_6
    move-object/from16 v8, v27

    move-object/from16 v27, v9

    move-object/from16 v9, v28

    move-object/from16 v28, v10

    :try_start_7
    invoke-static {v6}, LZjTIAZ/DeHqqG;->e(Ljava/lang/String;)I

    move-result v10

    new-instance v33, Ljava/util/Random;

    invoke-direct/range {v33 .. v33}, Ljava/util/Random;-><init>()V

    invoke-virtual/range {v33 .. v33}, Ljava/util/Random;->nextInt()I

    move-result v33

    move-object/from16 v34, v11

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    sget-wide v35, LZjTIAZ/ZxDSl;->a:J

    const-wide/16 v37, 0x2

    div-long v35, v35, v37

    move-object/from16 v33, v12

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v35, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;

    invoke-virtual {v10}, LZjTIAZ/QYXNEc;->d()LwcQZwr/MrfBl;

    move-result-object v10

    iget-object v11, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->d:LZjTIAZ/Gvcplk;

    invoke-virtual {v11}, LZjTIAZ/Gvcplk;->d()LwcQZwr/MrfBl;

    move-result-object v11

    if-nez v10, :cond_8

    invoke-static/range {v19 .. v19}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "AW|V]FNTx^[\u001cP@RV]Y\u000bX_G_\\DV\u0003MV\u0006I]Tv7<hmvNW2vyebn8okg`ool{"

    invoke-static {v12}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v36, v11

    const/4 v14, 0x0

    new-array v11, v14, [Ljava/lang/Throwable;

    invoke-static {v10, v12, v11}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-object v10, Lcom/cyberfend/cyfsecurity/CYFManager;->w:LwcQZwr/MrfBl;

    goto :goto_7

    :cond_8
    move-object/from16 v36, v11

    :goto_7
    if-nez v36, :cond_9

    invoke-static/range {v19 .. v19}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "CJaZ\\\\\u000fEgT[HF\u0016CJ@ZGIY\u000eFC\u0001LVHI\n\u0007]Ksu{={rPDk3rtz{zhi`"

    invoke-static {v12}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v37, v13

    const/4 v14, 0x0

    new-array v13, v14, [Ljava/lang/Throwable;

    invoke-static {v11, v12, v13}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-object v11, Lcom/cyberfend/cyfsecurity/CYFManager;->w:LwcQZwr/MrfBl;

    goto :goto_8

    :cond_9
    move-object/from16 v37, v13

    move-object/from16 v11, v36

    :goto_8
    iget-object v12, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;

    invoke-virtual {v12}, LZjTIAZ/QYXNEc;->c()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->d:LZjTIAZ/Gvcplk;

    invoke-virtual {v13}, LZjTIAZ/Gvcplk;->c()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Landroid/util/Pair;

    invoke-direct {v14, v2, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v36, v14

    iget-object v14, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->f:LZjTIAZ/QQixUL;

    if-eqz v14, :cond_a

    invoke-virtual {v14}, LZjTIAZ/QQixUL;->b()Landroid/util/Pair;

    move-result-object v14

    :goto_9
    move-object/from16 v36, v4

    goto :goto_a

    :cond_a
    move-object/from16 v14, v36

    goto :goto_9

    :goto_a
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v15, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->b:LZjTIAZ/CbGKec;

    if-eqz v15, :cond_b

    invoke-virtual {v15}, LZjTIAZ/CbGKec;->b()Landroid/util/Pair;

    move-result-object v4

    :cond_b
    iget-object v15, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v38, v9

    iget-object v9, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v39, v8

    iget-object v8, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->c:LZjTIAZ/ECIjpk;

    if-eqz v8, :cond_c

    invoke-virtual {v8}, LZjTIAZ/ECIjpk;->a()Ljava/lang/String;

    move-result-object v16

    :cond_c
    move-object/from16 v8, v16

    move-object/from16 v16, v7

    iget-object v7, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->g:LZjTIAZ/WpDaqA;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, LZjTIAZ/WpDaqA;->a()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_d
    move-object v7, v2

    :goto_b
    const-string v40, "jJJV]"

    invoke-static/range {v40 .. v40}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v41, v13

    :try_start_8
    iget-object v13, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;

    invoke-virtual {v13}, LZjTIAZ/QYXNEc;->e()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-static/range {v33 .. v33}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    goto :goto_c

    :cond_e
    iget-object v13, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;

    iget-boolean v13, v13, LZjTIAZ/QYXNEc;->b:Z

    if-nez v13, :cond_f

    const-string v13, "jJJWZA"

    invoke-static {v13}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_f
    :goto_c
    move-object/from16 v13, v40

    goto :goto_d

    :catch_4
    :try_start_9
    invoke-static/range {v33 .. v33}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    goto :goto_c

    :goto_d
    const-string v33, "jHJV]"

    invoke-static/range {v33 .. v33}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v40, v12

    :try_start_a
    iget-object v12, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->d:LZjTIAZ/Gvcplk;

    invoke-virtual {v12}, LZjTIAZ/Gvcplk;->e()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-static/range {v34 .. v34}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    goto :goto_e

    :cond_10
    iget-object v12, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->d:LZjTIAZ/Gvcplk;

    iget-boolean v12, v12, LZjTIAZ/Gvcplk;->b:Z

    if-nez v12, :cond_11

    const-string v12, "jHJWZA"

    invoke-static {v12}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_11
    :goto_e
    move-object/from16 v12, v33

    goto :goto_f

    :catch_5
    :try_start_b
    invoke-static/range {v34 .. v34}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    goto :goto_e

    :goto_f
    const-string v33, "zzp]"

    move-object/from16 v34, v9

    invoke-static/range {v33 .. v33}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v33, "hzp]"

    move-object/from16 v42, v15

    invoke-static/range {v33 .. v33}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v33, "~zp]"

    move-object/from16 v43, v5

    invoke-static/range {v33 .. v33}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v33, v7

    iget-object v7, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->j:LZjTIAZ/DUcPEg;

    if-eqz v7, :cond_12

    move-object/from16 v44, v8

    iget-boolean v8, v7, LZjTIAZ/DUcPEg;->l:Z

    iget-boolean v7, v7, LZjTIAZ/DUcPEg;->m:Z

    move/from16 v45, v7

    goto :goto_10

    :cond_12
    move-object/from16 v44, v8

    const/4 v8, 0x0

    const/16 v45, 0x0

    :goto_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_13
    if-eqz v45, :cond_14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v29

    const-wide/16 v12, 0x3e8

    mul-long/2addr v8, v12

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v15

    if-eq v5, v15, :cond_15

    const/4 v5, 0x1

    goto :goto_11

    :cond_15
    const/4 v5, 0x0

    :goto_11
    sget-boolean v15, LZjTIAZ/DbkYmF;->e:Z

    move-wide/from16 v45, v12

    iget-object v12, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-wide/from16 v47, v12

    iget-object v12, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long v12, v47, v12

    move-wide/from16 v47, v12

    iget-object v12, v10, LwcQZwr/MrfBl;->b:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long v12, v47, v12

    move-wide/from16 v47, v12

    iget-object v12, v11, LwcQZwr/MrfBl;->b:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long v12, v47, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v47

    sget-wide v49, LZjTIAZ/ZxDSl;->a:J

    move-object/from16 v51, v6

    move-object/from16 v52, v7

    sub-long v6, v47, v49

    move-object/from16 v47, v2

    iget-object v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->b:LZjTIAZ/CbGKec;

    if-eqz v2, :cond_16

    move-wide/from16 v48, v8

    iget-wide v8, v2, LZjTIAZ/CbGKec;->h:J

    goto :goto_12

    :cond_16
    move-wide/from16 v48, v8

    move-wide/from16 v8, v17

    :goto_12
    iget-object v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->f:LZjTIAZ/QQixUL;
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v2, :cond_17

    :try_start_c
    iget-wide v1, v2, LZjTIAZ/QQixUL;->d:J

    :goto_13
    move/from16 v17, v15

    goto :goto_14

    :catch_6
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_21

    :catch_7
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_17
    move-wide/from16 v1, v17

    goto :goto_13

    :goto_14
    long-to-int v15, v12

    add-long v53, v8, v1

    move/from16 v18, v5

    iget-object v5, v10, LwcQZwr/MrfBl;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v55

    add-long v53, v53, v55

    iget-object v5, v11, LwcQZwr/MrfBl;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v55

    move-wide/from16 v57, v1

    add-long v1, v53, v55

    long-to-int v1, v1

    long-to-int v2, v6

    invoke-static {v15, v1, v2}, Lcom/cyberfend/cyfsecurity/CYFManager;->d(III)J

    move-result-wide v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, LwcQZwr/MrfBl;->b:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, LwcQZwr/MrfBl;->b:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v57

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, LwcQZwr/MrfBl;->c:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, LwcQZwr/MrfBl;->c:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, LZjTIAZ/ZxDSl;->e:J

    mul-long v6, v6, v45

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v48

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, LZjTIAZ/ZxDSl;->f:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, LZjTIAZ/ZxDSl;->a:J

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v1, p0

    :try_start_d
    iget v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->p:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\"\u0015"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\"\u0014"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v6, v18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v17

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v10, LwcQZwr/MrfBl;->a:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, v11, LwcQZwr/MrfBl;->a:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Landroid/util/Pair;

    invoke-static/range {v28 .. v28}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v47

    invoke-direct {v12, v14, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz v12, :cond_18

    invoke-virtual {v12}, LZjTIAZ/ZptgnD;->s()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_18

    new-instance v12, Landroid/util/Pair;

    invoke-static/range {v27 .. v27}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    invoke-virtual {v15}, LZjTIAZ/ZptgnD;->s()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v13, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->h()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/util/Pair;

    invoke-static/range {v32 .. v32}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->g()Ljava/lang/String;

    move-result-object v13

    iget-object v15, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz v15, :cond_1a

    iget-object v15, v15, LZjTIAZ/ZptgnD;->d:Ljava/lang/String;

    if-eqz v15, :cond_1a

    iget-object v15, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    iget-object v15, v15, LZjTIAZ/ZptgnD;->d:Ljava/lang/String;

    move-object/from16 v17, v15

    invoke-static/range {v17 .. v17}, LZjTIAZ/DeHqqG;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, LZjTIAZ/RXtEM;->i()LZjTIAZ/RXtEM;

    move-result-object v18

    move-object/from16 v45, v13

    invoke-virtual/range {v18 .. v18}, LZjTIAZ/RXtEM;->j()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    const/16 v13, 0xc

    iput v13, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    :cond_19
    move-object/from16 v15, v17

    goto :goto_15

    :cond_1a
    move-object/from16 v45, v13

    move-object v15, v14

    :goto_15
    iget-object v13, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->j:LZjTIAZ/DUcPEg;

    iget-object v13, v13, LZjTIAZ/DUcPEg;->n:Ljava/lang/String;

    if-eqz v13, :cond_1b

    :goto_16
    move-object/from16 v17, v15

    goto :goto_17

    :cond_1b
    move-object/from16 v13, v31

    goto :goto_16

    :goto_17
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v18, v12

    invoke-static/range {v25 .. v25}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v31, v11

    new-instance v11, Landroid/util/Pair;

    move-object/from16 v46, v10

    invoke-static/range {v25 .. v25}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v12, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v26 .. v26}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/util/Pair;

    invoke-static/range {v26 .. v26}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v10, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v24 .. v24}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/util/Pair;

    invoke-static/range {v24 .. v24}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v10, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/util/Pair;

    invoke-static/range {v22 .. v22}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v47, v14

    move-object/from16 v14, v51

    invoke-direct {v11, v12, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v10, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/util/Pair;

    invoke-static/range {v21 .. v21}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v14, v52

    invoke-direct {v11, v12, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v10, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/util/Pair;

    invoke-static/range {v20 .. v20}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v14, v44

    invoke-direct {v11, v12, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v10, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/util/Pair;

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, v33

    invoke-direct {v11, v0, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v10, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014%\u0007"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/util/Pair;

    const-string v11, "#\u0014%\u0007"

    invoke-static {v11}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v43

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014%\u000b"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/util/Pair;

    const-string v11, "#\u0014%\u000b"

    invoke-static {v11}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v42

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014$\u0001"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/util/Pair;

    const-string v11, "#\u0014$\u0001"

    invoke-static {v11}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, LZjTIAZ/XbALEN;->a()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v35 .. v35}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/util/Pair;

    invoke-static/range {v35 .. v35}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014$\u0004"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/util/Pair;

    const-string v10, "#\u0014$\u0004"

    invoke-static {v10}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v34

    invoke-direct {v4, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014\'\u0003"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/util/Pair;

    const-string v10, "#\u0014\'\u0003"

    invoke-static {v10}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, LZjTIAZ/XbALEN;->b()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014!\u0007"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/util/Pair;

    const-string v10, "#\u0014!\u0007"

    invoke-static {v10}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014#\u0003"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/util/Pair;

    const-string v5, "#\u0014#\u0003"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v10, v40

    invoke-direct {v4, v5, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014!\u0001"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/util/Pair;

    const-string v5, "#\u0014!\u0001"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014!\u0006"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/util/Pair;

    const-string v5, "#\u0014!\u0006"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014#\u0002"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/util/Pair;

    const-string v5, "#\u0014#\u0002"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v41

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014!\u0000"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/util/Pair;

    const-string v5, "#\u0014!\u0000"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014 \u0003"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/util/Pair;

    const-string v5, "#\u0014 \u0003"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014#\u0000"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/util/Pair;

    const-string v4, "#\u0014#\u0000"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, v16

    invoke-direct {v3, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014#\u0006"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/util/Pair;

    const-string v4, "#\u0014#\u0006"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v39

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014#\u0005"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/util/Pair;

    const-string v4, "#\u0014#\u0005"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v38

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014\"\u0002"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/util/Pair;

    const-string v4, "#\u0014\"\u0002"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->m:Ljava/lang/String;

    if-eqz v5, :cond_1c

    goto :goto_18

    :cond_1c
    move-object/from16 v5, v47

    :goto_18
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0017!\u0003"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/util/Pair;

    const-string v4, "#\u0017!\u0003"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v36

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014\"\u0001"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/util/Pair;

    const-string v4, "#\u0014\"\u0001"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LZjTIAZ/XNPXeV;->j:LZjTIAZ/XNPXeV;

    invoke-virtual {v5}, LZjTIAZ/XNPXeV;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#\u0014-\u0003"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/util/Pair;

    const-string v4, "#\u0014-\u0003"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v0, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v15}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v15}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static/range {v35 .. v35}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v35 .. v35}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    const/4 v4, 0x0

    if-eqz v2, :cond_1d

    iget-object v2, v2, LZjTIAZ/ZptgnD;->l:[Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    iget-object v2, v2, LZjTIAZ/ZptgnD;->l:[Ljava/lang/String;

    goto :goto_19

    :cond_1d
    move-object v2, v4

    :goto_19
    if-eqz v2, :cond_1f

    array-length v5, v2

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v5, :cond_20

    aget-object v7, v2, v6

    invoke-virtual {v0, v7}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1e

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_1f
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v29

    invoke-static/range {v19 .. v19}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ItZ]\u001fmUx]QoPXDW[nJXL\u0003{YLG\u0019\u0004"

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "cV"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    new-array v6, v14, [Ljava/lang/Throwable;

    invoke-static {v0, v5, v6}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-boolean v0, Lcom/cyberfend/cyfsecurity/SensorDataBuilder;->b:Z

    if-eqz v0, :cond_21

    const-string v0, "j@sRF^[\r|^WUYS"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    sget-object v0, Lcom/cyberfend/cyfsecurity/SensorDataBuilder;->a:Lcom/cyberfend/cyfsecurity/SensorDataBuilder;

    invoke-virtual {v0, v9}, Lcom/cyberfend/cyfsecurity/SensorDataBuilder;->buildN(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, v46

    iget-object v5, v10, LwcQZwr/MrfBl;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x10

    cmp-long v5, v5, v7

    if-gez v5, :cond_23

    move-object/from16 v11, v31

    iget-object v5, v11, LwcQZwr/MrfBl;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_22

    goto :goto_1b

    :cond_22
    move-object/from16 v14, v17

    goto/16 :goto_1f

    :cond_23
    move-object/from16 v11, v31

    :goto_1b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/util/Pair;

    invoke-static/range {v28 .. v28}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v14, v47

    invoke-direct {v6, v14, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz v6, :cond_24

    invoke-virtual {v6}, LZjTIAZ/ZptgnD;->s()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_24

    new-instance v6, Landroid/util/Pair;

    invoke-static/range {v27 .. v27}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    invoke-virtual {v8}, LZjTIAZ/ZptgnD;->s()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    new-instance v6, Landroid/util/Pair;

    invoke-static/range {v32 .. v32}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v18

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_26

    array-length v6, v2

    const/4 v7, 0x0

    :goto_1c
    if-ge v7, v6, :cond_27

    aget-object v9, v2, v7

    invoke-virtual {v3, v9}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25

    invoke-virtual {v3, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_25

    invoke-virtual {v3, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_26
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_27
    sget-boolean v2, Lcom/cyberfend/cyfsecurity/SensorDataBuilder;->b:Z

    if-nez v2, :cond_28

    sget-object v2, Lcom/cyberfend/cyfsecurity/SensorDataBuilder;->a:Lcom/cyberfend/cyfsecurity/SensorDataBuilder;

    invoke-virtual {v2, v5}, Lcom/cyberfend/cyfsecurity/SensorDataBuilder;->buildN(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    :cond_28
    iget-object v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, LZjTIAZ/ZptgnD;->u()Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    :cond_29
    invoke-static {}, LZjTIAZ/RXtEM;->i()LZjTIAZ/RXtEM;

    move-result-object v2

    invoke-virtual {v2}, LZjTIAZ/RXtEM;->g()Ljava/lang/String;

    move-result-object v2

    :goto_1e
    invoke-static {}, LZjTIAZ/RXtEM;->i()LZjTIAZ/RXtEM;

    move-result-object v3

    move-object/from16 v14, v17

    invoke-virtual {v3, v4, v14, v2, v8}, LZjTIAZ/RXtEM;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LZjTIAZ/DQwsTh;->f()LZjTIAZ/DQwsTh;

    move-result-object v3

    invoke-virtual {v3}, LZjTIAZ/DQwsTh;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LZjTIAZ/AcVtYN;->o()LZjTIAZ/AcVtYN;

    move-result-object v3

    invoke-virtual {v3}, LZjTIAZ/AcVtYN;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->c()V

    iget-object v2, v10, LwcQZwr/MrfBl;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    cmp-long v2, v2, v4

    if-gez v2, :cond_2a

    iget-object v2, v11, LwcQZwr/MrfBl;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2b

    :cond_2a
    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->f()V

    :cond_2b
    iget-object v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->a:LZjTIAZ/WmAQuO;

    new-instance v3, Lcom/cyberfend/cyfsecurity/CYFManager$4;

    invoke-direct {v3, v1}, Lcom/cyberfend/cyfsecurity/CYFManager$4;-><init>(Lcom/cyberfend/cyfsecurity/CYFManager;)V

    invoke-virtual {v2, v3}, LZjTIAZ/WmAQuO;->b(Ljava/lang/Runnable;)V
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    return-object v0

    :goto_20
    invoke-static/range {v19 .. v19}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[KpKCWLTtU\u0015YGDXJ\tCE\u000cO[F\\EqFJVIUlYnz"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_27

    :goto_21
    invoke-static/range {v19 .. v19}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "K]vVCFFO\u007f\u0011\\R\u0015TBQENxIC]@BeCWE"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Throwable;

    const/16 v23, 0x0

    aput-object v0, v5, v23

    invoke-static {v2, v3, v5}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :try_start_e
    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->a:LZjTIAZ/WmAQuO;

    new-instance v3, Lcom/cyberfend/cyfsecurity/CYFManager$4;

    invoke-direct {v3, v1}, Lcom/cyberfend/cyfsecurity/CYFManager$4;-><init>(Lcom/cyberfend/cyfsecurity/CYFManager;)V

    invoke-virtual {v2, v3}, LZjTIAZ/WmAQuO;->b(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    return-object v0

    :catch_8
    move-exception v0

    invoke-static/range {v19 .. v19}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HD|_VV\u000fT~\u0011RYA\u0016TYJBNH\r]J^RMQ\u0004AGSI"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Throwable;

    const/16 v23, 0x0

    aput-object v0, v3, v23

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_27

    :goto_22
    invoke-static/range {v19 .. v19}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "APa|U\u007fJM~CLyGDXJ\tCE\u000cO[F\\EqFJVIUlYnz"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Throwable;

    aput-object v0, v5, v23

    invoke-static {v2, v3, v5}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :try_start_f
    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->m()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v1}, Lcom/cyberfend/cyfsecurity/CYFManager;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/cyberfend/cyfsecurity/CYFManager;->a:LZjTIAZ/WmAQuO;

    new-instance v3, Lcom/cyberfend/cyfsecurity/CYFManager$4;

    invoke-direct {v3, v1}, Lcom/cyberfend/cyfsecurity/CYFManager$4;-><init>(Lcom/cyberfend/cyfsecurity/CYFManager;)V

    invoke-virtual {v2, v3}, LZjTIAZ/WmAQuO;->b(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-static/range {v19 .. v19}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HD|_VV\u000fT~\u0011RYA\u0016TYJBNH\r]J^RMQ\u0004AGSI\u0018{}hxl?o\u007f_"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Throwable;

    const/16 v23, 0x0

    aput-object v0, v3, v23

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_2c
    sget v0, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    const/16 v1, 0x17f3

    if-gt v0, v1, :cond_31

    :goto_23
    sget v0, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    add-int/lit16 v1, v0, 0x2ff

    const/16 v2, 0x44

    if-eq v1, v2, :cond_2f

    const/16 v2, 0x51

    if-eq v1, v2, :cond_2e

    const/16 v2, 0x82

    if-eq v1, v2, :cond_2d

    const/16 v2, 0x10c

    if-eq v1, v2, :cond_30

    goto :goto_23

    :cond_2d
    xor-int/lit16 v1, v0, 0x6a2

    shr-int/lit8 v1, v1, 0x4e

    rem-int/lit8 v1, v1, 0x1e

    :goto_24
    sput v1, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    goto :goto_26

    :cond_2e
    rem-int/lit8 v0, v0, 0x6c

    rem-int/lit8 v0, v0, 0x5a

    sput v0, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    goto :goto_27

    :cond_2f
    xor-int/lit16 v1, v0, 0xd53

    mul-int/lit8 v1, v1, 0x4d

    :goto_25
    add-int/2addr v1, v0

    goto :goto_24

    :cond_30
    :goto_26
    sget v1, Lcom/cyberfend/cyfsecurity/CYFManager;->v:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x59

    goto :goto_25

    :cond_31
    :goto_27
    const-string v0, "j@sRF^[\r|^WUYS"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized o()Ljava/lang/Boolean;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->r:Ljava/util/Date;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz v1, :cond_1

    iget v1, v1, LZjTIAZ/ZptgnD;->n:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    iget v1, v1, LZjTIAZ/ZptgnD;->n:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xe10

    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->r:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    int-to-long v0, v1

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final q(Landroid/app/Activity;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->c:LZjTIAZ/ECIjpk;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->c:LZjTIAZ/ECIjpk;

    iget-object v1, v0, LZjTIAZ/ECIjpk;->b:LZjTIAZ/JMlAJG;

    if-nez v1, :cond_0

    sget-object v1, LZjTIAZ/ECIjpk;->c:Ljava/lang/String;

    sget-object v2, LZjTIAZ/ECIjpk;->d:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, v0, LZjTIAZ/ECIjpk;->b:LZjTIAZ/JMlAJG;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    :cond_1
    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->c:LZjTIAZ/ECIjpk;

    iget-object p1, p0, LZjTIAZ/ECIjpk;->b:LZjTIAZ/JMlAJG;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/util/Observable;->deleteObservers()V

    const/4 p1, 0x0

    iput-object p1, p0, LZjTIAZ/ECIjpk;->b:LZjTIAZ/JMlAJG;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :catch_1
    :cond_3
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cyberfend/cyfsecurity/CYFManager$2;

    invoke-direct {v1, p0}, Lcom/cyberfend/cyfsecurity/CYFManager$2;-><init>(Lcom/cyberfend/cyfsecurity/CYFManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "M|S~R\\NGtC"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HD|_VV\u000fT~\u0011FHTDC\u0018MOH^T^[YNL\u0003PMTBI\\"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final s()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cyberfend/cyfsecurity/CYFManager$1;

    invoke-direct {v1, p0}, Lcom/cyberfend/cyfsecurity/CYFManager$1;-><init>(Lcom/cyberfend/cyfsecurity/CYFManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "M|S~R\\NGtC"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HD|_VV\u000fT~\u0011FHTDC\u0018LDH^T^[YNL\u0003PMTBI\\"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final declared-synchronized t()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "M|S~R\\NGtC"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "I@aGZ\\H\u0000bT[OZD\u0017\\H^J"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-object v0, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {v0}, LZjTIAZ/RXtEM;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->d:LZjTIAZ/Gvcplk;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFManager;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v1

    :cond_1
    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object v1

    invoke-virtual {v1}, LZjTIAZ/ASYMBN;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "M|S~R\\NGtC"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HD|_VV\u000fT~\u0011RYA\u0016D]GYD^\rJND@"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v1}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object v1

    iget-object v3, v1, LZjTIAZ/ASYMBN;->h:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, v1, LZjTIAZ/ASYMBN;->f:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    sget-object v5, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->NONE:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$IntegrityCheckState;->SENSOR_DATA_FAILED:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$IntegrityCheckState;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v5, LZjTIAZ/ASYMBN;->f0:Ljava/lang/String;

    sget-object v6, LZjTIAZ/ASYMBN;->k:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, LZjTIAZ/ASYMBN;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, LZjTIAZ/ASYMBN;->a()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :goto_0
    :try_start_4
    const-string v1, "M|S~R\\NGtC"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "]@{@\\@\u000fdpET\u0006\u0015"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v1, v3, v2}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    :goto_1
    :try_start_5
    const-string v1, "M|S~R\\NGtC"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ONt^R[maA\u0011fx~\u0016^K\tDDX\rGAYUKBHL\\BL"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v1, v3, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_6
    const-string v1, "M|S~R\\NGtC"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MW|GZQNL1TGNZD\u0017QG\nLIY}J^RMQ`DRF"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-string v0, "j@sRF^[\r|^WUYS"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public final declared-synchronized u(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    sget-boolean v1, Lcom/cyberfend/cyfsecurity/CYFManager;->B:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->r:Ljava/util/Date;

    new-instance v2, LZjTIAZ/ZptgnD;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, LZjTIAZ/ZptgnD;-><init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    sput-boolean v0, Lcom/cyberfend/cyfsecurity/CYFManager;->B:Z

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFManager;->b()V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    sget-boolean p1, Lcom/cyberfend/cyfsecurity/CYFManager;->B:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz p1, :cond_3

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :try_start_2
    iget-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->r:Ljava/util/Date;

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    invoke-virtual/range {v0 .. v5}, LZjTIAZ/ZptgnD;->q(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    invoke-static {p1}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_4

    :cond_3
    const-string p1, "M|S~R\\NGtC"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MD{]\\F\u000fI\u007fXAUTZ^BL\no\u007fn\u000ebQOCDAW\u001c\u0007IHj&"

    invoke-static {p3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    if-eqz v1, :cond_4

    move p4, v0

    goto :goto_2

    :cond_4
    move p4, p3

    :goto_2
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, "\"\u0005q@P{AIeXTP\\LR\\\u0014"

    invoke-static {p4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p4, Lcom/cyberfend/cyfsecurity/CYFManager;->B:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, "\"\u0005q@P\u007fNNpVPN\u0008"

    invoke-static {p4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->i:LZjTIAZ/ZptgnD;

    if-eqz p4, :cond_5

    goto :goto_3

    :cond_5
    move v0, p3

    :goto_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, p3, [Ljava/lang/Throwable;

    invoke-static {p1, p2, p3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final v(Landroid/app/Activity;)V
    .locals 6

    const-string v0, "M|S~R\\NGtC"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->b:LZjTIAZ/CbGKec;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->c:LZjTIAZ/ECIjpk;

    if-nez v2, :cond_0

    new-instance v2, LZjTIAZ/ECIjpk;

    invoke-direct {v2}, LZjTIAZ/ECIjpk;-><init>()V

    iput-object v2, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->c:LZjTIAZ/ECIjpk;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->c:LZjTIAZ/ECIjpk;

    iget-object v3, v2, LZjTIAZ/ECIjpk;->b:LZjTIAZ/JMlAJG;

    if-nez v3, :cond_1

    sget-object v3, LZjTIAZ/ECIjpk;->c:Ljava/lang/String;

    sget-object v4, LZjTIAZ/ECIjpk;->d:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_1
    iget-object v2, v2, LZjTIAZ/ECIjpk;->b:LZjTIAZ/JMlAJG;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->b:LZjTIAZ/CbGKec;

    iget-object p0, p0, LZjTIAZ/CbGKec;->a:LZjTIAZ/CbGKec$XkvjdW;

    invoke-virtual {v2, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void

    :cond_2
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "HJvF@\u0012CIbEPRPD\u0017QZ\nEYAB\u0014\u0010RIJTUOIO\u0018h~{tmkRQfz{{8"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Throwable;

    invoke-static {p0, p1, v2}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :goto_1
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "K]vVCFFO\u007f\u0011\\R\u0015UE]H^BBJ\u000eI_BWP\u0004IOT\\]t~n"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p0, v2, v1

    invoke-static {p1, v0, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object p0

    invoke-virtual {p0}, LZjTIAZ/ASYMBN;->f()V

    return-void
.end method

.method public final w(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 7

    const-string v0, "M|S~R\\NGtC"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p2}, LZjTIAZ/QveSIH;->a(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v4, v3, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->s:Z

    if-nez v4, :cond_1

    new-instance v4, LZjTIAZ/CbGKec;

    invoke-direct {v4, p1}, LZjTIAZ/CbGKec;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->b:LZjTIAZ/CbGKec;

    iput-boolean v2, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->s:Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bLfGV\\JR1PQX\\XP\u0018OEY\u000cHJFDUG[P\u0005"

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, LwcQZwr/GpYFMu;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->b:LZjTIAZ/CbGKec;

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v4, v3}, LZjTIAZ/CbGKec;->c(Landroid/widget/EditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void

    :goto_2
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "K]vVCFFO\u007f\u0011\\R\u0015UE]H^BBJ\u000e[UYV\u0003HLUSMV\u007fi"

    invoke-static {p2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Throwable;

    aput-object p0, v0, v1

    invoke-static {p1, p2, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object p0

    invoke-virtual {p0}, LZjTIAZ/ASYMBN;->f()V

    return-void
.end method

.method public final x(Landroid/view/Window;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->f:LZjTIAZ/QQixUL;

    if-nez v1, :cond_0

    new-instance v1, LZjTIAZ/QQixUL;

    invoke-direct {v1}, LZjTIAZ/QQixUL;-><init>()V

    iput-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->f:LZjTIAZ/QQixUL;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->f:LZjTIAZ/QQixUL;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "ZJ`P[\u007fNNpVPN"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BLfGV\\FNv\u0011ZR\u0015A^VME\\"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, LZjTIAZ/QQixUL;->a:J

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    new-instance v2, LZjTIAZ/DbkYmF;

    invoke-direct {v2, v1}, LZjTIAZ/DbkYmF;-><init>(Landroid/view/Window$Callback;)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    invoke-virtual {v2, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string p1, "M|S~R\\NGtC"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "K]vVCFFO\u007f\u0011\\R\u0015UE]H^BBJ\u000e[_TAK\u0004HGII_\u007fi"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p0, v2, v0

    invoke-static {p1, v1, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object p0

    invoke-virtual {p0}, LZjTIAZ/ASYMBN;->f()V

    return-void
.end method

.method public final declared-synchronized y()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->d:LZjTIAZ/Gvcplk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, LZjTIAZ/Gvcplk;->g()V

    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, LZjTIAZ/ASYMBN;->d(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    sget-object v1, Lcom/cyberfend/cyfsecurity/SDKInitFailure;->MOTION_SENSOR_FAILURE:Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFManager;->a()V

    const-string v1, "M|S~R\\NGtC"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "K]vVCFFO\u007f\u0011\\R\u0015ECY[^BBJ\u000eB_UKLJ\u0005KFFY}~n"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, LZjTIAZ/ASYMBN;->d(Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized z()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->e:LZjTIAZ/QYXNEc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, LZjTIAZ/QYXNEc;->f()V

    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, LZjTIAZ/ASYMBN;->e(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    sget-object v1, Lcom/cyberfend/cyfsecurity/SDKInitFailure;->MOTION_SENSOR_FAILURE:Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFManager;->a()V

    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, LZjTIAZ/ASYMBN;->e(Ljava/lang/Boolean;)V

    const-string v1, "M|S~R\\NGtC"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "K]vVCFFO\u007f\u0011\\R\u0015ECY[^BBJ\u000e@BHGMPDRNGV:v}s\u007fxEB"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
