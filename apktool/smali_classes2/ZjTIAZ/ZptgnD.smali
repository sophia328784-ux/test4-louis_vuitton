.class public LZjTIAZ/ZptgnD;
.super Ljava/lang/Object;


# static fields
.field public static G:I = 0xabb

.field public static H:I = 0xf40

.field public static final I:Ljava/lang/String;


# instance fields
.field public A:LZjTIAZ/USrWvK;

.field public final B:Ljava/lang/Object;

.field public volatile C:Ljava/lang/String;

.field public volatile D:Ljava/lang/String;

.field public volatile E:Ljava/lang/String;

.field public volatile F:Ljava/lang/String;

.field public a:Landroid/app/Application;

.field public volatile b:Ljava/lang/String;

.field public volatile c:Ljava/lang/String;

.field public volatile d:Ljava/lang/String;

.field public volatile e:Ljava/lang/String;

.field public volatile f:Ljava/lang/String;

.field public volatile g:Ljava/lang/String;

.field public volatile h:Ljava/lang/String;

.field public volatile i:Ljava/lang/String;

.field public volatile j:Ljava/lang/String;

.field public volatile k:Ljava/lang/String;

.field public volatile l:[Ljava/lang/String;

.field public volatile m:Z

.field public volatile n:I

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final x:Landroid/os/Handler;

.field public y:Ljava/lang/Runnable;

.field public final z:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const-class v0, LZjTIAZ/ZptgnD;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LZjTIAZ/ZptgnD;->a:Landroid/app/Application;

    const/4 v1, 0x1

    iput-boolean v1, p0, LZjTIAZ/ZptgnD;->m:Z

    const/4 v1, 0x0

    iput v1, p0, LZjTIAZ/ZptgnD;->n:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, LZjTIAZ/ZptgnD;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, LZjTIAZ/ZptgnD;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, LZjTIAZ/ZptgnD;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, LZjTIAZ/ZptgnD;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, LZjTIAZ/ZptgnD;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, LZjTIAZ/ZptgnD;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, p0, LZjTIAZ/ZptgnD;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, LZjTIAZ/ZptgnD;->x:Landroid/os/Handler;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, LZjTIAZ/ZptgnD;->z:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v0, p0, LZjTIAZ/ZptgnD;->A:LZjTIAZ/USrWvK;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LZjTIAZ/ZptgnD;->B:Ljava/lang/Object;

    if-nez p1, :cond_0

    :try_start_0
    sget-object p0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    const-string p1, "OUe_ZQNTx^[\u001c[C[T\tCE\u000cD@FDHCOM_C"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Throwable;

    invoke-static {p0, p1, p2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p2}, LZjTIAZ/ZptgnD;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    const-string p1, "LDfV\u0013g}l1X[JTZ^\\\tCE\u000cD@FDHCOM_C"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Throwable;

    invoke-static {p0, p1, p2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iput-object p1, p0, LZjTIAZ/ZptgnD;->a:Landroid/app/Application;

    iput-object p2, p0, LZjTIAZ/ZptgnD;->b:Ljava/lang/String;

    iput-object p3, p0, LZjTIAZ/ZptgnD;->c:Ljava/lang/String;

    iput-object p4, p0, LZjTIAZ/ZptgnD;->i:Ljava/lang/String;

    iput-object p5, p0, LZjTIAZ/ZptgnD;->k:Ljava/lang/String;

    iput-object p2, p0, LZjTIAZ/ZptgnD;->C:Ljava/lang/String;

    iput-object p3, p0, LZjTIAZ/ZptgnD;->D:Ljava/lang/String;

    iput-object p4, p0, LZjTIAZ/ZptgnD;->E:Ljava/lang/String;

    iput-object p5, p0, LZjTIAZ/ZptgnD;->F:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    sget-object p1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "gK|GZSCIkT\u0015YMURH]CDB\u0017\u000e"

    invoke-static {p0, p3, p2}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Throwable;

    invoke-static {p1, p2, p3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public static B(Ljava/lang/String;)Z
    .locals 3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "2VvAZB[\u001e"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "dDcR@Q]IaE\u000f"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "kSt_\u001b"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "HP{PG[@N9"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x2710

    if-le p0, v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xDyZWS[EBXRRTZ~V]OL^DZV\u0010DPQKW\u001c\u0007"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Throwable;

    sget-object v2, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    invoke-static {v2, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "RY"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    array-length v4, v1

    if-ge v3, v4, :cond_2

    if-lez v3, :cond_1

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "}QgZCfXVT_VNLFC]MzJUAANT\u0001GQVJT\u001d\u0008"

    invoke-static {v1, v3, v2}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Throwable;

    sget-object v2, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    invoke-static {v2, v1, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "RY"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v1, 0x3

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "k]aARQ[tfGpRVDNH]OO|LWC_@F\u0003AWTHZ\u0002:"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    sget-object v2, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    invoke-static {v2, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static i()Z
    .locals 4

    :try_start_0
    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gVFVADFCtc@R[_Y_\tOY^B\\\u0015\u0010"

    invoke-static {v0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Throwable;

    sget-object v3, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    invoke-static {v3, v0, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v1
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_9

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget p0, LZjTIAZ/ZptgnD;->H:I

    const/16 p1, 0xf3f

    if-gt p0, p1, :cond_8

    :cond_1
    :goto_0
    sget p0, LZjTIAZ/ZptgnD;->H:I

    add-int/lit8 p1, p0, 0x27

    const/16 v0, 0x33

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12d

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_2
    xor-int/lit16 p1, p0, 0xd33

    add-int/2addr p1, p0

    sput p1, LZjTIAZ/ZptgnD;->H:I

    :cond_3
    sget p1, LZjTIAZ/ZptgnD;->H:I

    rem-int/lit8 p1, p1, 0xf

    add-int/2addr p1, p0

    sput p1, LZjTIAZ/ZptgnD;->H:I

    sget p0, LZjTIAZ/ZptgnD;->G:I

    const/16 p1, 0xaba

    if-gt p0, p1, :cond_1

    :goto_1
    sget p0, LZjTIAZ/ZptgnD;->G:I

    add-int/lit8 p1, p0, 0x34

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_5

    const/16 p0, 0xec

    if-eq p1, p0, :cond_4

    const/16 p0, 0x197

    if-eq p1, p0, :cond_6

    goto :goto_1

    :cond_4
    :goto_2
    sget p0, LZjTIAZ/ZptgnD;->G:I

    xor-int/lit16 p0, p0, 0x822

    rem-int/lit8 p0, p0, 0x2a

    sput p0, LZjTIAZ/ZptgnD;->G:I

    goto :goto_2

    :cond_5
    rem-int/lit8 p1, p0, 0x57

    add-int/2addr p1, p0

    sput p1, LZjTIAZ/ZptgnD;->G:I

    :cond_6
    :goto_3
    sget p0, LZjTIAZ/ZptgnD;->G:I

    rem-int/lit8 p0, p0, 0x7a

    mul-int/lit16 p0, p0, 0x990

    sput p0, LZjTIAZ/ZptgnD;->G:I

    goto :goto_3

    :cond_7
    :goto_4
    sget p0, LZjTIAZ/ZptgnD;->H:I

    mul-int/lit8 p0, p0, 0x75

    shr-int/lit8 p0, p0, 0x14

    sput p0, LZjTIAZ/ZptgnD;->H:I

    goto :goto_4

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v1, "fQaC@"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_4
    :goto_0
    return v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gV@A_dNLxU\u0015YGDXJ\u0013\n"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Throwable;

    sget-object v2, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    invoke-static {v2, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v0
.end method

.method public static o(LZjTIAZ/ZptgnD;)Z
    .locals 4

    iget-object v0, p0, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_3

    :cond_1
    :goto_0
    sget v0, LZjTIAZ/ZptgnD;->G:I

    const/16 v3, 0xaba

    if-gt v0, v3, :cond_4

    :goto_1
    sget p0, LZjTIAZ/ZptgnD;->G:I

    add-int/lit8 v0, p0, 0x27

    const/16 v1, 0x62

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, p0, 0x54

    xor-int/lit16 v0, v0, 0x9d6

    add-int/2addr v0, p0

    sput v0, LZjTIAZ/ZptgnD;->G:I

    goto :goto_1

    :cond_3
    :goto_2
    sget p0, LZjTIAZ/ZptgnD;->G:I

    mul-int/lit8 p0, p0, 0x48

    shr-int/lit8 p0, p0, 0x73

    sput p0, LZjTIAZ/ZptgnD;->G:I

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_3
    iget-object v3, p0, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->b()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    move p0, v2

    goto :goto_8

    :cond_6
    :goto_4
    sget p0, LZjTIAZ/ZptgnD;->G:I

    xor-int/lit16 p0, p0, 0xabb

    if-eqz p0, :cond_9

    :goto_5
    sget p0, LZjTIAZ/ZptgnD;->G:I

    add-int/lit8 p0, p0, 0x4e

    const/16 v0, 0x63

    if-eq p0, v0, :cond_8

    const/16 v0, 0x76

    if-eq p0, v0, :cond_7

    goto :goto_5

    :cond_7
    :goto_6
    sget p0, LZjTIAZ/ZptgnD;->G:I

    rem-int/lit8 p0, p0, 0x47

    mul-int/lit8 p0, p0, 0x65

    sput p0, LZjTIAZ/ZptgnD;->G:I

    goto :goto_6

    :cond_8
    :goto_7
    sget p0, LZjTIAZ/ZptgnD;->G:I

    shr-int/lit8 p0, p0, 0x31

    rem-int/lit8 p0, p0, 0x31

    mul-int/lit8 p0, p0, 0x3c

    sput p0, LZjTIAZ/ZptgnD;->G:I

    goto :goto_7

    :cond_9
    move p0, v1

    :goto_8
    if-eqz v0, :cond_c

    if-eqz p0, :cond_c

    sget p0, LZjTIAZ/ZptgnD;->H:I

    const/16 v0, 0xf3f

    if-gt p0, v0, :cond_b

    :goto_9
    sget p0, LZjTIAZ/ZptgnD;->H:I

    add-int/lit8 p0, p0, 0x68

    const/16 v0, 0x29

    if-eq p0, v0, :cond_a

    goto :goto_9

    :cond_a
    :goto_a
    sget p0, LZjTIAZ/ZptgnD;->H:I

    rem-int/lit8 p0, p0, 0x5d

    shr-int/lit8 p0, p0, 0x3f

    shr-int/lit8 p0, p0, 0x6

    sput p0, LZjTIAZ/ZptgnD;->H:I

    goto :goto_a

    :cond_b
    return v1

    :cond_c
    return v2
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, LZjTIAZ/ZptgnD;->B(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    const-string p2, "MuG\u0013@[HNp]\u0015ZT_[]M\nBBYKHBHVZ\u0004FNBKS"

    invoke-static {p2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Throwable;

    invoke-static {p1, p2, v1}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->z()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, LZjTIAZ/ZptgnD;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v1, p0, LZjTIAZ/ZptgnD;->h:Ljava/lang/String;

    sget-object v2, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {v2, v1}, LZjTIAZ/RXtEM;->p(Ljava/lang/String;)V

    :cond_3
    invoke-static {p1}, LZjTIAZ/ZptgnD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object p1, p0, LZjTIAZ/ZptgnD;->f:Ljava/lang/String;

    iput-object v1, p0, LZjTIAZ/ZptgnD;->g:Ljava/lang/String;

    iput-object p2, p0, LZjTIAZ/ZptgnD;->j:Ljava/lang/String;

    sget-object p1, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {p1, p2, v1}, LZjTIAZ/RXtEM;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->e()V

    return-void

    :cond_4
    :goto_0
    sget-object p1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    const-string p2, "MuG\u0013@[HNp]\u0015UF\u0016YMEF\u0004I@^[I\u0001\u000f\u0003GDHIGL:hyi>kO[w}4b\u007fcpf\u007f\u007f,{ocye\"pmbhfd"

    invoke-static {p2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Throwable;

    invoke-static {p1, p2, v1}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->z()V

    return-void

    :cond_5
    :goto_2
    sget-object p1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    const-string p2, "MuG\u0013G]DE\u007f\u0011\\O\u0015XBTE\u0005NA]ZV\u0010\u000c\u0002@EKHH\\\u0018i~h=mvG^s\u007f4b\u007fcpf\u007f\u007f,{ocye\"wknci"

    invoke-static {p2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Throwable;

    invoke-static {p1, p2, v1}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_3
    sget-object p1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "}@apC@eSBXRRTZ`Q]B\u007fCFKA\u0010DPQKW\u001c\u0007"

    invoke-static {p0, v1, p2}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Throwable;

    invoke-static {p1, p0, p2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final C()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LZjTIAZ/ZptgnD;->a:Landroid/app/Application;

    const-class v2, Lcom/cyberfend/cyfsecurity/CYFWebViewService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "{Wy"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LZjTIAZ/ZptgnD;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "lHe`V@YEcb\\XPe^_GKG"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LZjTIAZ/ZptgnD;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mUgy@g]L"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LZjTIAZ/ZptgnD;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mUgy@f@Kt_"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, LZjTIAZ/ZptgnD;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "}QtAGfFMt"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-wide v1, LZjTIAZ/ZxDSl;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final D()V
    .locals 4

    iget-object v0, p0, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, LZjTIAZ/ASYMBN;->h(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->g()V

    :try_start_1
    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iget v2, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/16 p0, 0xb

    iput p0, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/16 p0, 0xa

    iput p0, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, LZjTIAZ/ZptgnD;->c:Ljava/lang/String;

    if-nez p0, :cond_2

    const/16 p0, 0x9

    iput p0, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    goto :goto_0

    :cond_2
    iput v1, v0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0}, Lcom/cyberfend/cyfsecurity/CYFManager;->C()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object v0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "]@aGZ\\H\u0000S|e\u001cFCT[LYX\u000c^ZNDTQ\u0003AWTHZ\u0002:"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :catch_2
    :goto_0
    return-void
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, LZjTIAZ/ZptgnD;->C:Ljava/lang/String;

    invoke-static {v0, p1}, LZjTIAZ/ZptgnD;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, LZjTIAZ/ZptgnD;->D:Ljava/lang/String;

    invoke-static {p1, p2}, LZjTIAZ/ZptgnD;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, LZjTIAZ/ZptgnD;->E:Ljava/lang/String;

    invoke-static {p1, p3}, LZjTIAZ/ZptgnD;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, LZjTIAZ/ZptgnD;->F:Ljava/lang/String;

    invoke-static {p0, p4}, LZjTIAZ/ZptgnD;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget p0, LZjTIAZ/ZptgnD;->H:I

    xor-int/lit16 p0, p0, 0xf40

    if-eqz p0, :cond_7

    :cond_0
    :goto_0
    sget p0, LZjTIAZ/ZptgnD;->H:I

    add-int/lit8 p1, p0, 0x1a

    const/16 p2, 0x17

    if-eq p1, p2, :cond_2

    const/16 p2, 0x64

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    add-int p1, p0, p0

    rem-int/lit8 p1, p1, 0x4

    sput p1, LZjTIAZ/ZptgnD;->H:I

    :cond_2
    sget p1, LZjTIAZ/ZptgnD;->H:I

    mul-int/lit8 p1, p1, 0x79

    add-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x2c

    sput p1, LZjTIAZ/ZptgnD;->H:I

    sget p0, LZjTIAZ/ZptgnD;->G:I

    const/16 p1, 0xaba

    if-gt p0, p1, :cond_0

    :goto_1
    sget p0, LZjTIAZ/ZptgnD;->G:I

    add-int/lit8 p1, p0, 0x27

    const/16 p2, 0x2b

    if-eq p1, p2, :cond_5

    const/16 p2, 0x47

    if-eq p1, p2, :cond_4

    const/16 p2, 0xdf

    if-eq p1, p2, :cond_6

    const/16 p2, 0x169

    if-eq p1, p2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    sget p1, LZjTIAZ/ZptgnD;->G:I

    xor-int/lit16 p1, p1, 0x1041

    add-int/2addr p1, p0

    sput p1, LZjTIAZ/ZptgnD;->G:I

    goto :goto_2

    :cond_4
    :goto_3
    sget p0, LZjTIAZ/ZptgnD;->G:I

    shr-int/lit8 p0, p0, 0x5f

    xor-int/lit16 p0, p0, 0xf63

    sput p0, LZjTIAZ/ZptgnD;->G:I

    goto :goto_3

    :cond_5
    shr-int/lit8 p1, p0, 0x2f

    xor-int/lit16 p1, p1, 0x1399

    rem-int/lit8 p1, p1, 0x7a

    :goto_4
    sput p1, LZjTIAZ/ZptgnD;->G:I

    :cond_6
    sget p1, LZjTIAZ/ZptgnD;->G:I

    mul-int/lit8 p1, p1, 0x77

    add-int/2addr p1, p0

    goto :goto_4

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final F(Z)V
    .locals 5

    iget-object v0, p0, LZjTIAZ/ZptgnD;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->d()V

    iget-object v0, p0, LZjTIAZ/ZptgnD;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :try_start_0
    iget-object v0, p0, LZjTIAZ/ZptgnD;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LZjTIAZ/ZptgnD;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LZjTIAZ/ZptgnD;->a:Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->C()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HD|_VV\u000fSe^EL\\XP\u0018ZOYZDMJ\u0010EWQMKA\u0007LQh~\u007fi>yA\\~quv}-8"

    invoke-static {v0, v4, v3}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Throwable;

    invoke-static {v2, v0, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->n()Z

    move-result p1

    const/16 v0, 0xf

    const/16 v2, 0x10

    if-eqz p1, :cond_2

    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iget v3, p1, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    if-eq v3, v0, :cond_2

    if-eq v3, v2, :cond_2

    iput v2, p1, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iget v3, p1, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I

    if-eq v3, v0, :cond_3

    if-eq v3, v2, :cond_3

    iput v2, p1, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    sget-object v0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "]@aGZ\\H\u0000bTGJ\\UR\u0018Z^J^Y\u000eIQHNF@\u0005USILoh<xlmOB(3"

    invoke-static {p1, v3, v2}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p1, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    :try_start_2
    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->d()V

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->h()V

    iget-object p1, p0, LZjTIAZ/ZptgnD;->a:Landroid/app/Application;

    if-eqz p1, :cond_7

    iget-object p1, p0, LZjTIAZ/ZptgnD;->b:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object p1, p0, LZjTIAZ/ZptgnD;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    iget-object p1, p0, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->j()V

    new-instance p1, LZjTIAZ/ZptgnD$ZptgnD;

    invoke-direct {p1, p0}, LZjTIAZ/ZptgnD$ZptgnD;-><init>(LZjTIAZ/ZptgnD;)V

    iget-object v0, p0, LZjTIAZ/ZptgnD;->z:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p0, p0, LZjTIAZ/ZptgnD;->x:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :catch_2
    move-exception p0

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_6

    :cond_7
    :goto_4
    sget-object p0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    const-string p1, "MD{]\\F\u000fSePGH\u0015R^JLI_\u000czKMfHGT\u001f\u0005KN[Ksu{=}pNDwk`5ye8kkxiX|c"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Throwable;

    invoke-static {p0, p1, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :goto_5
    sget-object p1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "}QtAGeJBgXPKq_E]J^GU\rK]BNP\u0019\u0004"

    invoke-static {p0, v2, v0}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Throwable;

    invoke-static {p1, p0, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, LZjTIAZ/ZptgnD;->i:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, LZjTIAZ/ZptgnD;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    sget v0, LZjTIAZ/ZptgnD;->H:I

    xor-int/lit16 v0, v0, 0xf40

    const/16 v1, 0xaba

    if-eqz v0, :cond_7

    :goto_0
    sget v0, LZjTIAZ/ZptgnD;->H:I

    add-int/lit8 p0, v0, 0x27

    const/4 v2, 0x4

    if-eq p0, v2, :cond_3

    const/16 v2, 0x7a

    if-eq p0, v2, :cond_0

    const/16 v2, 0xa7

    if-eq p0, v2, :cond_4

    goto :goto_0

    :cond_0
    mul-int/lit8 p0, v0, 0xe

    sget v2, LZjTIAZ/ZptgnD;->G:I

    if-gt v2, v1, :cond_2

    :goto_1
    sget p0, LZjTIAZ/ZptgnD;->G:I

    add-int/lit16 v0, p0, 0x82

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    rem-int/lit8 p0, p0, 0x45

    shr-int/lit8 p0, p0, 0x19

    sput p0, LZjTIAZ/ZptgnD;->G:I

    goto :goto_1

    :cond_2
    rem-int/lit8 p0, p0, 0x2c

    shr-int/lit8 p0, p0, 0x75

    sput p0, LZjTIAZ/ZptgnD;->H:I

    if-gt v2, v1, :cond_4

    goto :goto_2

    :cond_3
    add-int p0, v0, v0

    xor-int/lit16 p0, p0, 0xfd9

    sput p0, LZjTIAZ/ZptgnD;->H:I

    :cond_4
    sget p0, LZjTIAZ/ZptgnD;->H:I

    mul-int/lit8 p0, p0, 0xc

    add-int/2addr p0, v0

    sput p0, LZjTIAZ/ZptgnD;->H:I

    sget p0, LZjTIAZ/ZptgnD;->G:I

    if-gt p0, v1, :cond_4

    :goto_2
    sget p0, LZjTIAZ/ZptgnD;->G:I

    add-int/lit8 v0, p0, 0x75

    const/16 v1, 0x27

    if-eq v0, v1, :cond_5

    const/16 v1, 0x87

    if-eq v0, v1, :cond_6

    goto :goto_2

    :cond_5
    :goto_3
    sget v0, LZjTIAZ/ZptgnD;->G:I

    mul-int/lit8 v0, v0, 0x31

    add-int/2addr v0, p0

    sput v0, LZjTIAZ/ZptgnD;->G:I

    :cond_6
    sget v0, LZjTIAZ/ZptgnD;->G:I

    add-int/2addr v0, p0

    rem-int/lit8 v0, v0, 0x13

    sput v0, LZjTIAZ/ZptgnD;->G:I

    goto :goto_3

    :cond_7
    iget-object v0, p0, LZjTIAZ/ZptgnD;->k:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object p0, p0, LZjTIAZ/ZptgnD;->k:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    sget v0, LZjTIAZ/ZptgnD;->G:I

    if-gt v0, v1, :cond_9

    :goto_4
    sget p0, LZjTIAZ/ZptgnD;->G:I

    add-int/lit16 v0, p0, 0x9c

    const/16 v1, 0x17

    if-eq v0, v1, :cond_8

    goto :goto_4

    :cond_8
    xor-int/lit16 p0, p0, 0x2e5

    sput p0, LZjTIAZ/ZptgnD;->G:I

    goto :goto_4

    :cond_9
    if-nez p0, :cond_c

    sget p0, LZjTIAZ/ZptgnD;->H:I

    const/16 v0, 0xf3f

    const/4 v1, 0x1

    if-gt p0, v0, :cond_b

    :goto_5
    sget p0, LZjTIAZ/ZptgnD;->H:I

    add-int/lit8 v0, p0, 0x1a

    const/4 v2, 0x6

    if-eq v0, v2, :cond_a

    goto :goto_5

    :cond_a
    rem-int/lit8 p0, p0, 0x57

    rem-int/lit8 p0, p0, 0x2

    sput p0, LZjTIAZ/ZptgnD;->H:I

    :cond_b
    return v1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, LZjTIAZ/ASYMBN;->h(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->g()V

    :try_start_1
    invoke-static {}, LZjTIAZ/XBnaCg;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iget v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x7

    iput v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    iput v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    const/4 v0, 0x6

    iput v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->n:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object v0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "]@aGZ\\H\u0000S|e\u001cPDEW[\nXXLZZC\u0001GQVJT\u001d\u0008"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LZjTIAZ/ZptgnD;->y:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, LZjTIAZ/ZptgnD;->x:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, LZjTIAZ/ZptgnD;->y:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mD{PV^|EcG\\_Pb^ULE^X\rK]BNP\u0019\u0004"

    invoke-static {p0, v1, v0}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    sget-object v1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    invoke-static {v1, p0, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object p0, p0, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, LZjTIAZ/ASYMBN;->b(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iput v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/CYFManager;->C()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object v0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "]@aGZ\\H\u0000Rag\u001cFCT[LYX\u000c^ZNDTQ\u0003AWTHZ\u0002:"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, LZjTIAZ/ZptgnD;->c:Ljava/lang/String;

    iput-object v0, p0, LZjTIAZ/ZptgnD;->d:Ljava/lang/String;

    iget-object v0, p0, LZjTIAZ/ZptgnD;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, LZjTIAZ/ZptgnD;->c:Ljava/lang/String;

    invoke-static {p0}, LZjTIAZ/DeHqqG;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {v0, p0}, LZjTIAZ/RXtEM;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    sget-object v0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|@sAVAGb|AfYG@RJzCLBLB\u000fUSPLV\u001f\u0006"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final h()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LZjTIAZ/ZptgnD;->z:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object p0, p0, LZjTIAZ/ZptgnD;->x:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mD{PV^\u007fE\u007fU\\RRr^JLI_{HLyYDUqQKHFJT\u007f;yolpR\n2"

    invoke-static {p0, v1, v0}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    sget-object v1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    invoke-static {v1, p0, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, LZjTIAZ/ZptgnD;->B:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, LZjTIAZ/ZptgnD;->A:LZjTIAZ/USrWvK;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LZjTIAZ/USrWvK;->i()V

    const/4 v1, 0x0

    iput-object v1, p0, LZjTIAZ/ZptgnD;->A:LZjTIAZ/USrWvK;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIpR]G_cdCGY[B`]K|BIZ|Z^OGQ\u0004@TUGJ ;"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LZjTIAZ/ZptgnD;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, LZjTIAZ/ZptgnD;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->n()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iget-object v4, p0, LZjTIAZ/ZptgnD;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v5, p0, LZjTIAZ/ZptgnD;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v4, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->b()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v0

    :cond_3
    :goto_2
    if-eqz v1, :cond_8

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->n()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, LZjTIAZ/ZptgnD;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, v0}, LZjTIAZ/ZptgnD;->F(Z)V

    return-void

    :cond_7
    invoke-static {}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->d()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    :goto_3
    return-void

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oQaV^B[p~BAoPDAQJOmMABMQBI\u0003AWTHZ\u0002:"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Throwable;

    sget-object v1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    invoke-static {v1, p0, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final n()Z
    .locals 3

    iget-object v0, p0, LZjTIAZ/ZptgnD;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, LZjTIAZ/ZptgnD;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, LZjTIAZ/ZptgnD;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object p0, p0, LZjTIAZ/ZptgnD;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    sget p0, LZjTIAZ/ZptgnD;->G:I

    xor-int/lit16 p0, p0, 0xabb

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    :goto_0
    sget p0, LZjTIAZ/ZptgnD;->G:I

    add-int/lit8 v1, p0, 0x1a

    const/16 v2, 0x13

    if-eq v1, v2, :cond_3

    const/16 v2, 0x41

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int v1, p0, p0

    add-int/2addr v1, p0

    xor-int/lit16 p0, v1, 0xdd8

    :goto_1
    sput p0, LZjTIAZ/ZptgnD;->G:I

    return v0

    :cond_1
    :goto_2
    sget p0, LZjTIAZ/ZptgnD;->G:I

    rem-int/lit8 p0, p0, 0x27

    xor-int/lit16 p0, p0, 0xb1c

    sput p0, LZjTIAZ/ZptgnD;->G:I

    goto :goto_2

    :cond_2
    :goto_3
    sget v0, LZjTIAZ/ZptgnD;->G:I

    add-int/2addr v0, p0

    add-int/2addr v0, p0

    sput v0, LZjTIAZ/ZptgnD;->G:I

    goto :goto_3

    :cond_3
    rem-int/lit8 p0, p0, 0x6e

    mul-int/lit8 p0, p0, 0x3f

    goto :goto_1

    :cond_4
    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final p()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/cyberfend/cyfsecurity/CYFMonitor;->d:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, LZjTIAZ/ZptgnD;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, LZjTIAZ/ZptgnD;->a:Landroid/app/Application;

    if-nez v2, :cond_2

    sget-object v2, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    const-string v3, "OUe_ZQNTx^[\u001cVYYLLR_\u000cC[C\\\u001a\u0002@EKHH\\\u0018io}oj?SU`e}vs"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0, v0}, LZjTIAZ/ZptgnD;->F(Z)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_2
    iget-object v2, p0, LZjTIAZ/ZptgnD;->b:Ljava/lang/String;

    invoke-static {v2}, LZjTIAZ/ZptgnD;->l(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    const-string v3, "LDfV\u0013g}l1X[JTZ^\\\u0012\nHMC@@D\u0001QWEWR\u0007[]hmu~{"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, LZjTIAZ/ZptgnD;->a:Landroid/app/Application;

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->C()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->d()V

    new-instance v2, LZjTIAZ/ZptgnD$ClaEac;

    invoke-direct {v2, p0}, LZjTIAZ/ZptgnD$ClaEac;-><init>(LZjTIAZ/ZptgnD;)V

    iput-object v2, p0, LZjTIAZ/ZptgnD;->y:Ljava/lang/Runnable;

    iget-object v3, p0, LZjTIAZ/ZptgnD;->x:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFWebViewService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :goto_2
    sget-object v3, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "}QtAGeJBGXPKfSEN@IN\u000cHVLUQVJKK\u001c\u0007"

    invoke-static {v2, v5, v4}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v3, v4, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v2}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, LZjTIAZ/ZptgnD;->F(Z)V

    return-void
.end method

.method public final q(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    const-string p1, "OUe_ZQNTx^[\u001c[C[T\tCE\u000cNAAVHEVV@"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Throwable;

    invoke-static {p0, p1, p2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p2}, LZjTIAZ/ZptgnD;->l(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    const-string p1, "LDfV\u0013g}l1X[JTZ^\\\tCE\u000cNAAVHEVV@"

    invoke-static {p1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Throwable;

    invoke-static {p0, p1, p2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object v1, p0, LZjTIAZ/ZptgnD;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0, p2, p3, p4, p5}, LZjTIAZ/ZptgnD;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, LZjTIAZ/ZptgnD;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, LZjTIAZ/ZptgnD;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p1, p0, LZjTIAZ/ZptgnD;->a:Landroid/app/Application;

    iput-object p2, p0, LZjTIAZ/ZptgnD;->b:Ljava/lang/String;

    iput-object p3, p0, LZjTIAZ/ZptgnD;->c:Ljava/lang/String;

    iput-object p4, p0, LZjTIAZ/ZptgnD;->i:Ljava/lang/String;

    iput-object p5, p0, LZjTIAZ/ZptgnD;->k:Ljava/lang/String;

    iput-object p2, p0, LZjTIAZ/ZptgnD;->C:Ljava/lang/String;

    iput-object p3, p0, LZjTIAZ/ZptgnD;->D:Ljava/lang/String;

    iput-object p4, p0, LZjTIAZ/ZptgnD;->E:Ljava/lang/String;

    iput-object p5, p0, LZjTIAZ/ZptgnD;->F:Ljava/lang/String;

    iget-object p1, p0, LZjTIAZ/ZptgnD;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LZjTIAZ/ZptgnD;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LZjTIAZ/ZptgnD;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LZjTIAZ/ZptgnD;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    sget-object p1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mJ{UZUZRt\u0011PDVSGL@EE\u0016\r"

    invoke-static {p0, p3, p2}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Throwable;

    invoke-static {p1, p2, p3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final r()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LZjTIAZ/ZptgnD;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->d()V

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->h()V

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->j()V

    iget-object v1, p0, LZjTIAZ/ZptgnD;->x:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, LZjTIAZ/ZptgnD;->f:Ljava/lang/String;

    iput-object v2, p0, LZjTIAZ/ZptgnD;->j:Ljava/lang/String;

    iput-object v2, p0, LZjTIAZ/ZptgnD;->k:Ljava/lang/String;

    iget-object v1, p0, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, LZjTIAZ/ZptgnD;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, LZjTIAZ/ZptgnD;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, LZjTIAZ/ZptgnD;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIpR]G_\u0000tCGSG\u000c\u0017"

    invoke-static {p0, v3, v2}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-static {v1, p0, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, LZjTIAZ/ZptgnD;->m:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, LZjTIAZ/ZptgnD;->e:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LZjTIAZ/ZptgnD;->g:Ljava/lang/String;

    const-string v1, "0"

    if-eqz v0, :cond_0

    iget-object v0, p0, LZjTIAZ/ZptgnD;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LZjTIAZ/ZptgnD;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, LZjTIAZ/ZptgnD;->g:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {p0}, LZjTIAZ/RXtEM;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    return-object v1
.end method

.method public final u()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LZjTIAZ/ZptgnD;->j:Ljava/lang/String;

    const-string v1, "0"

    if-eqz v0, :cond_0

    iget-object v0, p0, LZjTIAZ/ZptgnD;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LZjTIAZ/ZptgnD;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, LZjTIAZ/ZptgnD;->j:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, LZjTIAZ/RXtEM;->j:LZjTIAZ/RXtEM;

    invoke-virtual {p0}, LZjTIAZ/RXtEM;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    return-object v1
.end method

.method public final v()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LZjTIAZ/ZptgnD;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->s()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    sget-object v1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gVW^CaFG\u007fPY}CW^THHGI\rK]BNP\u0019\u0004"

    invoke-static {p0, v3, v2}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-static {v1, p0, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final w()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LZjTIAZ/ZptgnD;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "`JaZUK|EcG\\_PeCY[^NH\rK]BNP\u0019\u0004"

    invoke-static {p0, v1, v0}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    sget-object v1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    invoke-static {v1, p0, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final x()V
    .locals 3

    iget-object p0, p0, LZjTIAZ/ZptgnD;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    invoke-static {}, LZjTIAZ/ASYMBN;->j()LZjTIAZ/ASYMBN;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, LZjTIAZ/ASYMBN;->b(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-static {}, LZjTIAZ/XBnaCg;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    const/16 v0, 0x8

    iput v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    const/4 v0, 0x6

    iput v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object v0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "]@aGZ\\H\u0000Rag\u001cPDEW[\nXXLZZC\u0001GQVJT\u001d\u0008"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, LZjTIAZ/ZptgnD;->B(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :try_start_1
    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, LZjTIAZ/ZptgnD;->e:Ljava/lang/String;

    iput-object v0, p0, LZjTIAZ/ZptgnD;->l:[Ljava/lang/String;

    iput p1, p0, LZjTIAZ/ZptgnD;->n:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "}@aq^BeSWTA_]pVQEOO\u000cH\\]_S\u0018\u0003"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, LZjTIAZ/ZptgnD;->e:Ljava/lang/String;

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->D()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    sget-object p1, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "}@aq^BeSBXRRTZ\u0017][XD^\u0017\u000e"

    invoke-static {p0, v1, v0}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-static {p1, p0, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final z()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->x()V

    const/4 v0, 0x0

    iput-object v0, p0, LZjTIAZ/ZptgnD;->f:Ljava/lang/String;

    iput-object v0, p0, LZjTIAZ/ZptgnD;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, LZjTIAZ/ZptgnD;->I:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "}@apC@eSWTA_]pVQEOO\u000cH\\]_S\u0018\u0003"

    invoke-static {p0, v2, v1}, Ld21;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method
