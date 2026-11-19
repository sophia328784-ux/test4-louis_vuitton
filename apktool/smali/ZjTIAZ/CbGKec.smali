.class public LZjTIAZ/CbGKec;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZjTIAZ/CbGKec$XkvjdW;,
        LZjTIAZ/CbGKec$zMeEGO;
    }
.end annotation


# static fields
.field public static i:I = 0x229a

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;


# instance fields
.field public final a:LZjTIAZ/CbGKec$XkvjdW;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Ljava/util/concurrent/Future;

.field public f:I

.field public final g:Ljava/util/HashMap;

.field public h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Z@mGpZNNvTx][WP]["

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/CbGKec;->j:Ljava/lang/String;

    const-string v0, "\"\u0005^VJ\u0012|TcX[[\u0015"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/CbGKec;->k:Ljava/lang/String;

    const-string v0, "BLfGV\\FNv\u0011ZR\u0015SSQ]\n_IUZ\u0015\u0010"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/CbGKec;->l:Ljava/lang/String;

    const-string v0, "K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010UG[P\u0005CQMVn"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/CbGKec;->m:Ljava/lang/String;

    const-string v0, "HD|_VV\u000fT~\u0011RYA\u0016c]Q^\u000bHLZN\n\u0001"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/CbGKec;->n:Ljava/lang/String;

    const-string v0, "K]vVCFFO\u007f\u0011VPPWYMY\u0010\u000b"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/CbGKec;->o:Ljava/lang/String;

    const-string v0, "\"\u0005aZ^W\u0007Mb\u0018\u000f\u001c"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/CbGKec;->p:Ljava/lang/String;

    const-string v0, "c`cV]F\u000fc~D[H\u000f\u0016"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/CbGKec;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LZjTIAZ/CbGKec;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LZjTIAZ/CbGKec;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LZjTIAZ/CbGKec;->g:Ljava/util/HashMap;

    iput-object p1, p0, LZjTIAZ/CbGKec;->b:Landroid/content/Context;

    new-instance p1, LZjTIAZ/CbGKec$XkvjdW;

    invoke-direct {p1, p0}, LZjTIAZ/CbGKec$XkvjdW;-><init>(LZjTIAZ/CbGKec;)V

    iput-object p1, p0, LZjTIAZ/CbGKec;->a:LZjTIAZ/CbGKec$XkvjdW;

    invoke-virtual {p0}, LZjTIAZ/CbGKec;->d()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/util/Pair;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, LZjTIAZ/CbGKec;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    const-string v5, ""

    if-nez v2, :cond_0

    new-instance v0, Landroid/util/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 v2, 0x1

    iget-object v0, v0, LZjTIAZ/CbGKec;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide v7, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LZjTIAZ/DmNgem;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v9, LZjTIAZ/DmNgem;->b:Ljava/lang/String;

    iget v12, v9, LZjTIAZ/DmNgem;->d:I

    iget v13, v9, LZjTIAZ/DmNgem;->c:I

    iget-wide v14, v9, LZjTIAZ/DmNgem;->a:J

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, LZjTIAZ/DmNgem;->e:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-eq v12, v4, :cond_2

    invoke-static {v12, v3, v11}, Lcj;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v9, LZjTIAZ/DmNgem;->b:Ljava/lang/String;

    sget-object v9, LZjTIAZ/DeHqqG;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/16 v9, 0x0

    :goto_1
    add-long/2addr v9, v14

    int-to-long v11, v13

    add-long/2addr v9, v11

    add-long/2addr v7, v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sget-wide v11, LZjTIAZ/ZxDSl;->b:J

    sub-long/2addr v9, v11

    sub-long/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v9, LZjTIAZ/CbGKec;->j:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, LZjTIAZ/CbGKec;->q:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v11, LZjTIAZ/CbGKec;->k:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, LZjTIAZ/CbGKec;->p:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-static {v9, v3, v4}, LwcQZwr/GpYFMu;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget v3, LZjTIAZ/CbGKec;->i:I

    const/16 v4, 0x2299

    if-gt v3, v4, :cond_6

    :goto_2
    sget v3, LZjTIAZ/CbGKec;->i:I

    add-int/lit8 v4, v3, 0x41

    const/4 v9, 0x2

    if-eq v4, v9, :cond_5

    const/16 v9, 0x6d

    if-eq v4, v9, :cond_4

    const/16 v9, 0xa1

    if-eq v4, v9, :cond_3

    goto :goto_2

    :cond_3
    const/16 v4, 0x39

    invoke-static {v3, v4, v3, v3}, Lcj;->a(IIII)I

    move-result v3

    sput v3, LZjTIAZ/CbGKec;->i:I

    :cond_4
    sget v3, LZjTIAZ/CbGKec;->i:I

    rem-int/lit8 v3, v3, 0x1e

    rem-int/lit8 v3, v3, 0x5a

    sput v3, LZjTIAZ/CbGKec;->i:I

    goto :goto_3

    :cond_5
    rem-int/lit8 v4, v3, 0x27

    xor-int/lit16 v4, v4, 0x69e

    add-int/2addr v4, v3

    sput v4, LZjTIAZ/CbGKec;->i:I

    goto :goto_2

    :cond_6
    :goto_3
    const-wide/16 v3, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Landroid/util/Pair;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b()Landroid/util/Pair;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, LZjTIAZ/CbGKec;->e:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1

    :goto_0
    :try_start_2
    sget-object v3, LZjTIAZ/CbGKec;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LZjTIAZ/CbGKec;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Throwable;

    invoke-static {v3, v2, v4}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object v3, LZjTIAZ/CbGKec;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LZjTIAZ/CbGKec;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Throwable;

    invoke-static {v3, v2, v4}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    if-nez v1, :cond_1

    invoke-virtual {p0}, LZjTIAZ/CbGKec;->a()Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, LZjTIAZ/CbGKec;->e:Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, p0

    goto :goto_6

    :catch_3
    move-exception p0

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_4

    :goto_3
    :try_start_4
    sget-object v2, LZjTIAZ/CbGKec;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LZjTIAZ/CbGKec;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v3, v0, [Ljava/lang/Throwable;

    invoke-static {v2, p0, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_4
    sget-object v2, LZjTIAZ/CbGKec;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LZjTIAZ/CbGKec;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v3, v0, [Ljava/lang/Throwable;

    invoke-static {v2, p0, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :goto_5
    sget-object v2, LZjTIAZ/CbGKec;->j:Ljava/lang/String;

    sget-object v3, LZjTIAZ/CbGKec;->m:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object p0, v4, v0

    invoke-static {v2, v3, v4}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_1
    :goto_6
    return-object v1
.end method

.method public final c(Landroid/widget/EditText;)V
    .locals 6

    sget-object v0, LZjTIAZ/CbGKec;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LZjTIAZ/CbGKec;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, LZjTIAZ/DeHqqG;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LZjTIAZ/DeHqqG;->e(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, LZjTIAZ/DeHqqG;->b(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    const/16 v4, 0x81

    and-int/2addr v3, v4

    iget-object v5, p0, LZjTIAZ/CbGKec;->b:Landroid/content/Context;

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    const/16 v4, 0x12

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    const/16 v4, 0x91

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    const/16 v4, 0xe1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, LZjTIAZ/CHrESI;

    invoke-direct {v3, v5, v0, v1, v2}, LZjTIAZ/CHrESI;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v3, LZjTIAZ/CHrESI;

    const/4 v2, 0x1

    invoke-direct {v3, v5, v0, v1, v2}, LZjTIAZ/CHrESI;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, LZjTIAZ/CbGKec;->a:LZjTIAZ/CbGKec$XkvjdW;

    invoke-virtual {v3, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    iget-object p0, p0, LZjTIAZ/CbGKec;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, LZjTIAZ/CbGKec;->a:LZjTIAZ/CbGKec$XkvjdW;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, LZjTIAZ/CbGKec$XkvjdW;->a:J

    const/4 v0, 0x0

    iput v0, p0, LZjTIAZ/CbGKec;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LZjTIAZ/CbGKec;->h:J

    iget-object v0, p0, LZjTIAZ/CbGKec;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, LZjTIAZ/CbGKec;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, LZjTIAZ/CbGKec;->e:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    sget v1, LZjTIAZ/CbGKec;->i:I

    const/16 v2, 0x2299

    if-gt v1, v2, :cond_4

    :goto_0
    sget v1, LZjTIAZ/CbGKec;->i:I

    add-int/lit8 v2, v1, 0x27

    const/16 v3, 0x43

    if-eq v2, v3, :cond_3

    const/16 v3, 0xb6

    if-eq v2, v3, :cond_2

    const/16 v3, 0xf1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x18f

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x7d

    xor-int/lit16 v1, v1, 0xea0

    :goto_1
    sput v1, LZjTIAZ/CbGKec;->i:I

    goto :goto_2

    :cond_1
    xor-int/lit16 v1, v1, 0x13f6

    mul-int/lit16 v1, v1, 0x14d

    goto :goto_1

    :cond_2
    :goto_2
    sget v1, LZjTIAZ/CbGKec;->i:I

    rem-int/lit8 v1, v1, 0x53

    mul-int/lit8 v1, v1, 0x6f

    xor-int/lit16 v1, v1, 0x8db

    sput v1, LZjTIAZ/CbGKec;->i:I

    goto :goto_4

    :cond_3
    :goto_3
    sget p0, LZjTIAZ/CbGKec;->i:I

    mul-int/lit8 p0, p0, 0x79

    shr-int/lit8 p0, p0, 0x3

    sput p0, LZjTIAZ/CbGKec;->i:I

    goto :goto_3

    :cond_4
    :goto_4
    if-nez v0, :cond_5

    iget-object v0, p0, LZjTIAZ/CbGKec;->e:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, LZjTIAZ/CbGKec;->e:Ljava/util/concurrent/Future;

    :cond_6
    return-void
.end method
