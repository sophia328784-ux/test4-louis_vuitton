.class public LZjTIAZ/Gvcplk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZjTIAZ/Gvcplk$Gvcplk;
    }
.end annotation


# static fields
.field public static k:I = 0x151b

.field public static final l:LwcQZwr/MrfBl;


# instance fields
.field public final a:LZjTIAZ/DkQluC;

.field public b:Z

.field public c:J

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/util/concurrent/Future;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/LinkedHashSet;

.field public h:Z

.field public final i:LZjTIAZ/KgGan;

.field public final j:Ljava/util/concurrent/ExecutorService;


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

    sput-object v0, LZjTIAZ/Gvcplk;->l:LwcQZwr/MrfBl;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;LZjTIAZ/KgGan;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LZjTIAZ/Gvcplk;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LZjTIAZ/Gvcplk;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, LZjTIAZ/Gvcplk;->g:Ljava/util/LinkedHashSet;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LZjTIAZ/Gvcplk;->j:Ljava/util/concurrent/ExecutorService;

    const-string v0, "CJaZ\\\\bA\u007fPRYG"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GK|GZSCIkX[[\u0015[XL@EE\u000c@OAQFGQ"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LZjTIAZ/Gvcplk;->c:J

    new-instance v0, LZjTIAZ/DkQluC;

    invoke-direct {v0, p1, p2}, LZjTIAZ/DkQluC;-><init>(Landroid/app/Application;LZjTIAZ/KgGan;)V

    iput-object v0, p0, LZjTIAZ/Gvcplk;->a:LZjTIAZ/DkQluC;

    iput-object p2, p0, LZjTIAZ/Gvcplk;->i:LZjTIAZ/KgGan;

    return-void
.end method


# virtual methods
.method public final a()LwcQZwr/MrfBl;
    .locals 27

    move-object/from16 v1, p0

    iget-object v0, v1, LZjTIAZ/Gvcplk;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, v1, LZjTIAZ/Gvcplk;->d:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, v1, LZjTIAZ/Gvcplk;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, v1, LZjTIAZ/Gvcplk;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, LXqjhMb/DMsjta;->a(J)J

    move-result-wide v7

    long-to-int v3, v7

    new-array v7, v3, [F

    new-array v8, v3, [F

    new-array v9, v3, [F

    new-array v10, v3, [F

    new-array v11, v3, [F

    new-array v12, v3, [F

    new-array v13, v3, [F

    new-array v14, v3, [F

    new-array v15, v3, [F

    new-array v2, v3, [F

    move-wide/from16 v16, v5

    iget-wide v4, v1, LZjTIAZ/Gvcplk;->c:J

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v18, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    check-cast v0, LZjTIAZ/QwtCVJ;

    move-wide/from16 v21, v4

    iget v4, v0, LZjTIAZ/QwtCVJ;->d:F

    aput v4, v7, v18

    iget v4, v0, LZjTIAZ/QwtCVJ;->e:F

    aput v4, v8, v18

    iget v4, v0, LZjTIAZ/QwtCVJ;->f:F

    aput v4, v9, v18

    iget v4, v0, LZjTIAZ/QwtCVJ;->a:F

    aput v4, v10, v18

    iget v4, v0, LZjTIAZ/QwtCVJ;->b:F

    aput v4, v11, v18

    iget v4, v0, LZjTIAZ/QwtCVJ;->c:F

    aput v4, v12, v18

    iget v4, v0, LZjTIAZ/QwtCVJ;->g:F

    aput v4, v13, v18

    iget v4, v0, LZjTIAZ/QwtCVJ;->h:F

    aput v4, v14, v18

    iget v4, v0, LZjTIAZ/QwtCVJ;->i:F

    aput v4, v15, v18

    iget-wide v4, v0, LZjTIAZ/QwtCVJ;->j:J

    sub-long v4, v4, v21

    move-object/from16 v19, v14

    move-object/from16 v23, v15

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-boolean v14, v0, LZjTIAZ/QwtCVJ;->k:Z

    if-eqz v14, :cond_2

    if-eqz v18, :cond_2

    iget-wide v4, v0, LZjTIAZ/QwtCVJ;->l:J

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object v14, v1, LZjTIAZ/Gvcplk;->g:Ljava/util/LinkedHashSet;

    new-instance v15, Landroid/util/Pair;

    move-wide/from16 v24, v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v26, v6

    iget-wide v5, v0, LZjTIAZ/QwtCVJ;->j:J

    sub-long v5, v5, v21

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v15, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v24

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    move-object/from16 v26, v6

    :goto_1
    long-to-float v4, v4

    aput v4, v2, v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-wide v4, v0, LZjTIAZ/QwtCVJ;->j:J

    add-int/lit8 v0, v18, 0x1

    if-lt v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v18, v0

    move-object/from16 v14, v19

    move-object/from16 v0, v20

    move-object/from16 v15, v23

    move-object/from16 v6, v26

    goto/16 :goto_0

    :cond_4
    move-object/from16 v20, v0

    move-object/from16 v19, v14

    move-object/from16 v23, v15

    :goto_2
    const v0, 0x3f19999a    # 0.6f

    invoke-static {v0, v7}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v4

    invoke-static {v0, v8}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v5

    invoke-static {v0, v9}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v6

    invoke-static {v0, v10}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v7

    invoke-static {v0, v11}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v0, v12}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v9

    invoke-static {v0, v13}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v10

    move-object/from16 v11, v19

    invoke-static {v0, v11}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v11

    move-object/from16 v12, v23

    invoke-static {v0, v12}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v0

    const/4 v12, 0x0

    invoke-static {v12, v2}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v13, v12, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v14, v4

    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v14, v4

    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v14, v4

    iget-object v2, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v14, v4

    iget-object v2, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v14, v4

    iget-object v2, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v14, v4

    iget-object v2, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v14, v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v14, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    const-string v0, "CJaZ\\\\bA\u007fPRYG"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CJaZ\\\\\u000fegT[H\u0015uXMG^\u0011\u000c"

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Throwable;

    invoke-static {v0, v2, v7}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-string v0, "CJaZ\\\\bA\u007fPRYG"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CJaZ\\\\\u000fsUrTPV\u001bcQDO\u0011\u000c"

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "cV"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-static {v0, v2, v4}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    new-instance v0, LwcQZwr/MrfBl;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v13, v2, v3}, LwcQZwr/MrfBl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v1, LZjTIAZ/Gvcplk;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v0

    :goto_3
    :try_start_2
    const-string v2, "CJaZ\\\\bA\u007fPRYG"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "K]vVCFFO\u007f\u0011\\R\u0015QRL]CEK\rC@DHMM\u0004@PBFLi"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, LZjTIAZ/Gvcplk;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, LZjTIAZ/Gvcplk;->l:LwcQZwr/MrfBl;

    return-object v0

    :goto_4
    iget-object v1, v1, LZjTIAZ/Gvcplk;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    :goto_5
    sget-object v0, LZjTIAZ/Gvcplk;->l:LwcQZwr/MrfBl;

    return-object v0
.end method

.method public final b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, LZjTIAZ/Gvcplk;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LZjTIAZ/Gvcplk;->e:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, LZjTIAZ/Gvcplk;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LZjTIAZ/Gvcplk$Gvcplk;

    invoke-direct {v1, p0}, LZjTIAZ/Gvcplk$Gvcplk;-><init>(LZjTIAZ/Gvcplk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, LZjTIAZ/Gvcplk;->e:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "CJaZ\\\\bA\u007fPRYG"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "}QtAGtZTdCP\u001cPDEW["

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, LZjTIAZ/Gvcplk;->g:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    const-string v1, "CJaZ\\\\bA\u007fPRYG"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "K]vVCFFO\u007f\u0011\\R\u0015QRLkKHGJ\\@EOFfR@HS"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    invoke-static {v1, v2, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    const-string p0, ""

    return-object p0
.end method

.method public final d()LwcQZwr/MrfBl;
    .locals 8

    const-string v0, "CJaZ\\\\bA\u007fPRYG"

    iget-object v1, p0, LZjTIAZ/Gvcplk;->g:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, LZjTIAZ/Gvcplk;->e:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "HD|_VV\u000fT~\u0011RYA\u0016ZW]CDB\rJND@\u0018\u0003"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LwcQZwr/MrfBl;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_2
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-static {v5, v3, v6}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, LZjTIAZ/Gvcplk;->a()LwcQZwr/MrfBl;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object p0, p0, LZjTIAZ/Gvcplk;->e:Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LwcQZwr/MrfBl;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, p0

    goto :goto_2

    :catch_2
    move-exception p0

    :try_start_4
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-static {v3, p0, v4}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "K]vVCFFO\u007f\u0011\\R\u0015{XL@EEaL@NWDP"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p0, v5, v1

    invoke-static {v3, v4, v5}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_1
    :goto_2
    if-nez v2, :cond_2

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CJaZ\\\\\u000fGtEfY[EXJmK_M\r\\JDTPMMKA\u0007L]|ziqj?E]bgm5Beqyfnx-hn|m`bgn"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {p0, v0, v1}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-object v2, LZjTIAZ/Gvcplk;->l:LwcQZwr/MrfBl;

    :cond_2
    return-object v2
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, LZjTIAZ/Gvcplk;->a:LZjTIAZ/DkQluC;

    iget-boolean p0, p0, LZjTIAZ/DkQluC;->l:Z

    return p0
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LZjTIAZ/Gvcplk;->c:J

    iget-object v0, p0, LZjTIAZ/Gvcplk;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, LZjTIAZ/Gvcplk;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_9

    sget v1, LZjTIAZ/Gvcplk;->k:I

    const/16 v2, 0x151a

    if-gt v1, v2, :cond_3

    :goto_0
    sget v1, LZjTIAZ/Gvcplk;->k:I

    add-int/lit8 v2, v1, 0x1a

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x9d

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    sget p0, LZjTIAZ/Gvcplk;->k:I

    rem-int/lit8 p0, p0, 0x18

    add-int/2addr p0, v1

    sput p0, LZjTIAZ/Gvcplk;->k:I

    goto :goto_1

    :cond_1
    xor-int/lit16 v1, v1, 0x4f1

    rem-int/lit8 v1, v1, 0x2f

    sput v1, LZjTIAZ/Gvcplk;->k:I

    :cond_2
    sget v1, LZjTIAZ/Gvcplk;->k:I

    shr-int/lit8 v1, v1, 0x1c

    xor-int/lit16 v1, v1, 0xfcc

    shr-int/lit8 v1, v1, 0x61

    sput v1, LZjTIAZ/Gvcplk;->k:I

    :cond_3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, LZjTIAZ/Gvcplk;->e:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    sget v1, LZjTIAZ/Gvcplk;->k:I

    xor-int/lit16 v1, v1, 0x151b

    if-eqz v1, :cond_7

    :goto_2
    sget v1, LZjTIAZ/Gvcplk;->k:I

    add-int/lit8 v2, v1, 0x34

    const/16 v3, 0x10

    if-eq v2, v3, :cond_5

    const/16 v3, 0x97

    if-eq v2, v3, :cond_6

    const/16 v3, 0x100

    if-eq v2, v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr v1, v1

    xor-int/lit16 v1, v1, 0x7d5

    mul-int/lit8 v1, v1, 0x69

    sput v1, LZjTIAZ/Gvcplk;->k:I

    goto :goto_4

    :cond_5
    xor-int/lit16 p0, v1, 0xd01

    :goto_3
    add-int/2addr p0, v1

    sput p0, LZjTIAZ/Gvcplk;->k:I

    :cond_6
    sget p0, LZjTIAZ/Gvcplk;->k:I

    xor-int/lit16 p0, p0, 0x580

    goto :goto_3

    :cond_7
    :goto_4
    if-nez v0, :cond_8

    iget-object v0, p0, LZjTIAZ/Gvcplk;->e:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, LZjTIAZ/Gvcplk;->e:Ljava/util/concurrent/Future;

    :cond_9
    iget-object p0, p0, LZjTIAZ/Gvcplk;->g:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final g()V
    .locals 5

    const-string v0, "CJaZ\\\\bA\u007fPRYG"

    iget-object v1, p0, LZjTIAZ/Gvcplk;->a:LZjTIAZ/DkQluC;

    iget-object v2, p0, LZjTIAZ/Gvcplk;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x80

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, LZjTIAZ/Gvcplk;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, LZjTIAZ/DkQluC;->b()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "CJaZ\\\\\u000fLxBAY[SE\u0018[OLE^Z]QUKLJ\u0005@FAT\u007f\u007f"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-static {p0, v1, v4}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, LZjTIAZ/Gvcplk;->b:Z

    invoke-virtual {v1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BLfGV\\JR1CP[\\EC][\n_D_KX\u0010DZ@AURNGV"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final h()V
    .locals 5

    iget-object p0, p0, LZjTIAZ/Gvcplk;->a:LZjTIAZ/DkQluC;

    :try_start_0
    invoke-virtual {p0}, LZjTIAZ/DkQluC;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CJaZ\\\\bA\u007fPRYG"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BLfGV\\JR1D[NPQ^K]OY\u000cKOF\\DF"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/Observable;->deleteObservers()V

    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, LZjTIAZ/Gvcplk;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    sget-object p2, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {p2}, Lcom/cyberfend/cyfsecurity/CYFManager;->C()V

    invoke-virtual {p0}, LZjTIAZ/Gvcplk;->h()V

    invoke-virtual {p0}, LZjTIAZ/Gvcplk;->b()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, LZjTIAZ/Gvcplk;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, LZjTIAZ/Gvcplk;->h:Z

    if-nez v0, :cond_2

    iput-boolean p1, p0, LZjTIAZ/Gvcplk;->h:Z

    iget-object v0, p0, LZjTIAZ/Gvcplk;->i:LZjTIAZ/KgGan;

    invoke-interface {v0}, LZjTIAZ/KgGan;->b()V

    :cond_2
    check-cast p2, LZjTIAZ/QwtCVJ;

    iget-object v0, p0, LZjTIAZ/Gvcplk;->d:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, LZjTIAZ/Gvcplk;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    const-string p2, "CJaZ\\\\bA\u007fPRYG"

    invoke-static {p2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010LMWMJH\u0007MN\u007fuh"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-static {p2, v0, p1}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method
