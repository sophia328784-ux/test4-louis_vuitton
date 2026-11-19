.class public LZjTIAZ/QYXNEc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZjTIAZ/QYXNEc$QYXNEc;
    }
.end annotation


# static fields
.field public static k:I = 0x2185

.field public static l:I = 0x51f

.field public static final m:LwcQZwr/MrfBl;


# instance fields
.field public final a:LZjTIAZ/ClWSUN;

.field public b:Z

.field public c:J

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/LinkedHashSet;

.field public f:Ljava/util/concurrent/Future;

.field public final g:Ljava/util/concurrent/ExecutorService;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public i:Z

.field public final j:LZjTIAZ/KgGan;


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

    sput-object v0, LZjTIAZ/QYXNEc;->m:LwcQZwr/MrfBl;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;LZjTIAZ/KgGan;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LZjTIAZ/QYXNEc;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, LZjTIAZ/QYXNEc;->e:Ljava/util/LinkedHashSet;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LZjTIAZ/QYXNEc;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LZjTIAZ/QYXNEc;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "AW|V]FNTx^[qTXV_LX"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GK|GZSCIkX[[\u0015YEQLD_MYG@^\u0001OBJDABZ"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LZjTIAZ/QYXNEc;->c:J

    new-instance v0, LZjTIAZ/ClWSUN;

    invoke-direct {v0, p1, p2}, LZjTIAZ/ClWSUN;-><init>(Landroid/app/Application;LZjTIAZ/KgGan;)V

    iput-object v0, p0, LZjTIAZ/QYXNEc;->a:LZjTIAZ/ClWSUN;

    iput-object p2, p0, LZjTIAZ/QYXNEc;->j:LZjTIAZ/KgGan;

    return-void
.end method


# virtual methods
.method public final a()LwcQZwr/MrfBl;
    .locals 27

    move-object/from16 v1, p0

    iget-object v0, v1, LZjTIAZ/QYXNEc;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v3, v1, LZjTIAZ/QYXNEc;->d:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, v1, LZjTIAZ/QYXNEc;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v3, v1, LZjTIAZ/QYXNEc;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    const/16 v11, 0x9

    new-array v12, v11, [F

    new-array v11, v11, [F

    const/4 v13, 0x3

    new-array v13, v13, [F

    iget-wide v14, v1, LZjTIAZ/QYXNEc;->c:J

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v17, v4

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v19, v2

    if-eqz v18, :cond_6

    :try_start_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v20, v4

    :try_start_3
    move-object/from16 v4, v18

    check-cast v4, LZjTIAZ/QkthEf;

    const/16 v18, 0x0

    iget-object v2, v4, LZjTIAZ/QkthEf;->a:[F

    move-object/from16 v21, v0

    iget-object v0, v4, LZjTIAZ/QkthEf;->b:[F

    invoke-static {v12, v11, v2, v0}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v12, v13}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    aget v0, v13, v20

    move-wide/from16 v22, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v0, v5

    aget v2, v13, v19

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v2, v5

    const/4 v5, 0x2

    aget v5, v13, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v0, v6

    cmpg-float v24, v0, v18

    if-gez v24, :cond_2

    const/high16 v24, 0x43b40000    # 360.0f

    add-float v0, v0, v24

    :cond_2
    mul-float/2addr v2, v6

    aput v0, v7, v17

    aput v2, v8, v17

    aput v5, v9, v17

    iget-wide v5, v4, LZjTIAZ/QkthEf;->c:J

    sub-long/2addr v5, v14

    move-object v2, v11

    move-object v0, v12

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-boolean v11, v4, LZjTIAZ/QkthEf;->d:Z

    if-eqz v11, :cond_3

    if-eqz v17, :cond_3

    iget-wide v5, v4, LZjTIAZ/QkthEf;->e:J

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v11, v1, LZjTIAZ/QYXNEc;->e:Ljava/util/LinkedHashSet;

    new-instance v12, Landroid/util/Pair;

    move-object/from16 v24, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-wide/from16 v25, v5

    iget-wide v5, v4, LZjTIAZ/QkthEf;->c:J

    sub-long/2addr v5, v14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v12, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-wide/from16 v5, v25

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_3
    move-object/from16 v24, v0

    :goto_1
    long-to-float v0, v5

    aput v0, v10, v17

    goto :goto_2

    :cond_4
    move-wide/from16 v22, v5

    move-object v2, v11

    move-object/from16 v24, v12

    aput v18, v7, v17

    aput v18, v8, v17

    aput v18, v9, v17

    aput v18, v10, v17

    :goto_2
    iget-wide v14, v4, LZjTIAZ/QkthEf;->c:J

    add-int/lit8 v0, v17, 0x1

    if-lt v0, v3, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v17, v0

    move-object v11, v2

    move/from16 v2, v19

    move/from16 v4, v20

    move-object/from16 v0, v21

    move-wide/from16 v5, v22

    move-object/from16 v12, v24

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move/from16 v20, v4

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move/from16 v20, v4

    goto/16 :goto_4

    :cond_6
    move-object/from16 v21, v0

    move/from16 v20, v4

    move-wide/from16 v22, v5

    const/16 v18, 0x0

    :goto_3
    const v0, 0x3f19999a    # 0.6f

    invoke-static {v0, v7}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v0, v8}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v4

    invoke-static {v0, v9}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v0

    move/from16 v5, v18

    invoke-static {v5, v10}, LXqjhMb/GrZpLc;->d(F[F)Landroid/util/Pair;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v7, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v5, v8

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v5, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v22

    const-string v0, "AW|V]FNTx^[qTXV_LX"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AW|V]FNTx^[\u001cp@RV]\nhCX@[\n\u0001"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v4, v20

    new-array v10, v4, [Ljava/lang/Throwable;

    invoke-static {v0, v2, v10}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-string v0, "AW|V]FNTx^[qTXV_LX"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AW|V]FNTx^[\u001cfrtYEI\u0006xDCJ\n\u0001"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "cV"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Throwable;

    invoke-static {v0, v2, v8}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    new-instance v0, LwcQZwr/MrfBl;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v7, v2, v3}, LwcQZwr/MrfBl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, v1, LZjTIAZ/QYXNEc;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v0

    :catch_2
    move-exception v0

    move/from16 v19, v2

    :goto_4
    :try_start_4
    const-string v2, "AW|V]FNTx^[qTXV_LX"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "K]vVCFFO\u007f\u0011\\R\u0015QRL]CEK\rA]YDLWEQOHF\u0018\u007fmysjl"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v4, v19

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v1, LZjTIAZ/QYXNEc;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget v0, LZjTIAZ/QYXNEc;->l:I

    const/16 v1, 0x51e

    if-gt v0, v1, :cond_e

    sget v0, LZjTIAZ/QYXNEc;->k:I

    xor-int/lit16 v0, v0, 0x2185

    if-eqz v0, :cond_a

    :goto_5
    sget v0, LZjTIAZ/QYXNEc;->k:I

    add-int/lit16 v1, v0, 0xa9

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_9

    const/16 v2, 0xa4

    if-eq v1, v2, :cond_7

    const/16 v2, 0x150

    if-eq v1, v2, :cond_8

    goto :goto_5

    :cond_7
    :goto_6
    sget v1, LZjTIAZ/QYXNEc;->k:I

    add-int/2addr v1, v0

    xor-int/lit16 v1, v1, 0xc0e

    mul-int/lit8 v1, v1, 0x53

    sput v1, LZjTIAZ/QYXNEc;->k:I

    :cond_8
    sget v1, LZjTIAZ/QYXNEc;->k:I

    invoke-static {v1, v0, v0, v0}, Lpq0;->D(IIII)I

    move-result v1

    sput v1, LZjTIAZ/QYXNEc;->k:I

    goto :goto_6

    :cond_9
    mul-int/lit8 v0, v0, 0x5c

    rem-int/lit8 v0, v0, 0x22

    shr-int/lit8 v0, v0, 0x7a

    sput v0, LZjTIAZ/QYXNEc;->k:I

    goto :goto_5

    :cond_a
    :goto_7
    sget v0, LZjTIAZ/QYXNEc;->l:I

    add-int/lit16 v1, v0, 0x9c

    const/16 v2, 0x31

    if-eq v1, v2, :cond_d

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_c

    const/16 v0, 0x108

    if-eq v1, v0, :cond_b

    goto :goto_7

    :cond_b
    :goto_8
    sget v0, LZjTIAZ/QYXNEc;->l:I

    shr-int/lit8 v0, v0, 0x79

    xor-int/lit16 v0, v0, 0xbc3

    sput v0, LZjTIAZ/QYXNEc;->l:I

    goto :goto_8

    :cond_c
    shr-int/lit8 v0, v0, 0x10

    sput v0, LZjTIAZ/QYXNEc;->l:I

    goto :goto_a

    :cond_d
    :goto_9
    sget v0, LZjTIAZ/QYXNEc;->l:I

    rem-int/lit8 v0, v0, 0x1c

    xor-int/lit16 v0, v0, 0x155a

    sput v0, LZjTIAZ/QYXNEc;->l:I

    goto :goto_9

    :cond_e
    :goto_a
    sget-object v0, LZjTIAZ/QYXNEc;->m:LwcQZwr/MrfBl;

    return-object v0

    :goto_b
    iget-object v1, v1, LZjTIAZ/QYXNEc;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_f
    :goto_c
    sget-object v0, LZjTIAZ/QYXNEc;->m:LwcQZwr/MrfBl;

    return-object v0
.end method

.method public final b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, LZjTIAZ/QYXNEc;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LZjTIAZ/QYXNEc;->f:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, LZjTIAZ/QYXNEc;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LZjTIAZ/QYXNEc$QYXNEc;

    invoke-direct {v1, p0}, LZjTIAZ/QYXNEc$QYXNEc;-><init>(LZjTIAZ/QYXNEc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, LZjTIAZ/QYXNEc;->f:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "AW|V]FNTx^[qTXV_LX"

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

    iget-object p0, p0, LZjTIAZ/QYXNEc;->e:Ljava/util/LinkedHashSet;

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
    const-string v1, "AW|V]FNTx^[qTXV_LX"

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

    const-string v0, "AW|V]FNTx^[qTXV_LX"

    iget-object v1, p0, LZjTIAZ/QYXNEc;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, LZjTIAZ/QYXNEc;->f:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "HD|_VV\u000fT~\u0011RYA\u0016XJ@OEXLZF_O\u0002GEQG\u001d\u0008"

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

    invoke-virtual {p0}, LZjTIAZ/QYXNEc;->a()LwcQZwr/MrfBl;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object p0, p0, LZjTIAZ/QYXNEc;->f:Ljava/util/concurrent/Future;
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

    const-string v4, "K]vVCFFO\u007f\u0011\\R\u0015yEQLD_MYG@^lCMEBCU"

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

    const-string v0, "AW|V]FNTx^[\u001cRSCkLDXC_jND@\u0002QAQSUFQt|<y{yAE~g4p{glp*_~d~cuu\"eeijeizQ"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {p0, v0, v1}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget-object v2, LZjTIAZ/QYXNEc;->m:LwcQZwr/MrfBl;

    :cond_2
    return-object v2
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, LZjTIAZ/QYXNEc;->a:LZjTIAZ/ClWSUN;

    iget-boolean p0, p0, LZjTIAZ/ClWSUN;->m:Z

    return p0
.end method

.method public final f()V
    .locals 5

    const-string v0, "AW|V]FNTx^[qTXV_LX"

    iget-object v1, p0, LZjTIAZ/QYXNEc;->a:LZjTIAZ/ClWSUN;

    iget-object v2, p0, LZjTIAZ/QYXNEc;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x80

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, LZjTIAZ/QYXNEc;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, LZjTIAZ/ClWSUN;->a()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "AW|V]FNTx^[\u001cY_DLLDN^\r\\JWHQWVDRNGV:}}trzD"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-static {p0, v1, v4}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, LZjTIAZ/QYXNEc;->b:Z

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

.method public final g()V
    .locals 5

    iget-object p0, p0, LZjTIAZ/QYXNEc;->a:LZjTIAZ/ClWSUN;

    :try_start_0
    invoke-virtual {p0}, LZjTIAZ/ClWSUN;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AW|V]FNTx^[qTXV_LX"

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
    iget-object v0, p0, LZjTIAZ/QYXNEc;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    sget-object p2, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-virtual {p2}, Lcom/cyberfend/cyfsecurity/CYFManager;->C()V

    invoke-virtual {p0}, LZjTIAZ/QYXNEc;->g()V

    invoke-virtual {p0}, LZjTIAZ/QYXNEc;->b()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, LZjTIAZ/QYXNEc;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, LZjTIAZ/QYXNEc;->i:Z

    if-nez v0, :cond_2

    iput-boolean p1, p0, LZjTIAZ/QYXNEc;->i:Z

    iget-object v0, p0, LZjTIAZ/QYXNEc;->j:LZjTIAZ/KgGan;

    invoke-interface {v0}, LZjTIAZ/KgGan;->b()V

    :cond_2
    check-cast p2, LZjTIAZ/QkthEf;

    iget-object v0, p0, LZjTIAZ/QYXNEc;->d:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, LZjTIAZ/QYXNEc;->d:Ljava/util/ArrayList;

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
    const-string p2, "AW|V]FNTx^[qTXV_LX"

    invoke-static {p2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010NPJAKRF\\Quu<xhzND"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-static {p2, v0, p1}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method
