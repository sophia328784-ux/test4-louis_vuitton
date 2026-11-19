.class public abstract Lcom/google/android/gms/internal/measurement/zzxz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzyi;
.implements Lcom/google/android/gms/internal/measurement/zzzd;


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/logging/Level;

.field public final b:J

.field public c:Lcom/google/android/gms/internal/measurement/zzxy;

.field public d:Lcom/google/android/gms/internal/measurement/zzyc;

.field public e:Lcom/google/android/gms/internal/measurement/zzyq;

.field public f:Lcom/google/android/gms/internal/measurement/zzaaf;

.field public g:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxz;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaab;->a:Lcom/google/android/gms/internal/measurement/zzaad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lcom/google/android/gms/internal/measurement/zzxy;

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->d:Lcom/google/android/gms/internal/measurement/zzyc;

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->e:Lcom/google/android/gms/internal/measurement/zzyq;

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->f:Lcom/google/android/gms/internal/measurement/zzaaf;

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->g:[Ljava/lang/Object;

    const-string v2, "level"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/measurement/zzabr;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->a:Ljava/util/logging/Level;

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->b:J

    return-void
.end method


# virtual methods
.method public final P()Lcom/google/android/gms/internal/measurement/zzyi;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyc;->a:Lcom/google/android/gms/internal/measurement/zzyc;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzyb;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->d:Lcom/google/android/gms/internal/measurement/zzyc;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->d:Lcom/google/android/gms/internal/measurement/zzyc;

    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzxq;

    return-object p0
.end method

.method public final a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/measurement/zzyi;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->a:Lcom/google/android/gms/internal/measurement/zzyl;

    const-string v1, "metadata key"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzabr;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzxz;->g(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzxq;

    return-object p0
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzxz;->d:Lcom/google/android/gms/internal/measurement/zzyc;

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzaab;->a:Lcom/google/android/gms/internal/measurement/zzaad;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzaad;->a()Lcom/google/android/gms/internal/measurement/zzaac;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaaj$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzyc;->a:Lcom/google/android/gms/internal/measurement/zzyc;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzxz;->d:Lcom/google/android/gms/internal/measurement/zzyc;

    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzxz;->d:Lcom/google/android/gms/internal/measurement/zzyc;

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzyc;->a:Lcom/google/android/gms/internal/measurement/zzyc;

    const/4 v6, 0x0

    if-eq v3, v4, :cond_2

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lcom/google/android/gms/internal/measurement/zzxy;

    if-eqz v4, :cond_3

    iget v7, v4, Lcom/google/android/gms/internal/measurement/zzxy;->b:I

    if-lez v7, :cond_3

    const-string v7, "logSiteKey"

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/measurement/zzabr;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v7, v4, Lcom/google/android/gms/internal/measurement/zzxy;->b:I

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_3

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzxx;->f:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzxy;->b(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzxy;->c(I)Ljava/lang/Object;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/internal/measurement/zzyu;

    invoke-direct {v10, v3, v9}, Lcom/google/android/gms/internal/measurement/zzyu;-><init>(Lcom/google/android/gms/internal/measurement/zzyd;Ljava/lang/Object;)V

    move-object v3, v10

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :cond_3
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzxo;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzxz;->f()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzzj;->a()I

    move-result v8

    move v9, v6

    :goto_1
    if-ge v9, v8, :cond_5

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/measurement/zzzj;->b(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzyl;->a:Ljava/lang/String;

    const-string v11, "eye3tag"

    if-ne v10, v11, :cond_4

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzxx;->a:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzzj;->d(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzxx;->i:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzzj;->d(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzyv;->zza:Lcom/google/android/gms/internal/measurement/zzyv;

    invoke-virtual {v4, v8, v7}, Lcom/google/android/gms/internal/measurement/zzxz;->g(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lcom/google/android/gms/internal/measurement/zzxy;

    const/4 v8, -0x1

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzyq;->a:Lcom/google/android/gms/internal/measurement/zzyq;

    const/4 v10, 0x1

    if-eqz v7, :cond_19

    if-eqz v3, :cond_13

    sget v11, Lcom/google/android/gms/internal/measurement/zzxn;->d:I

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzxx;->d:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzxy;->d(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_12

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lcom/google/android/gms/internal/measurement/zzxy;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzxk;->d:Lcom/google/android/gms/internal/measurement/zzyf;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzxx;->b:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzxy;->d(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-nez v11, :cond_6

    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    sget-object v12, Lcom/google/android/gms/internal/measurement/zzxk;->d:Lcom/google/android/gms/internal/measurement/zzyf;

    invoke-virtual {v12, v3, v7}, Lcom/google/android/gms/internal/measurement/zzyf;->b(Lcom/google/android/gms/internal/measurement/zzyd;Lcom/google/android/gms/internal/measurement/zzzj;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzxk;

    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzxk;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v13, v11

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v11

    cmp-long v11, v11, v13

    if-ltz v11, :cond_7

    goto :goto_3

    :cond_7
    move-object v7, v9

    :goto_3
    iget-object v11, v4, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lcom/google/android/gms/internal/measurement/zzxy;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzyt;->d:Lcom/google/android/gms/internal/measurement/zzyf;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzxx;->c:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzxy;->d(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-gtz v13, :cond_8

    goto :goto_5

    :cond_8
    sget-object v13, Lcom/google/android/gms/internal/measurement/zzyt;->d:Lcom/google/android/gms/internal/measurement/zzyf;

    invoke-virtual {v13, v3, v11}, Lcom/google/android/gms/internal/measurement/zzyf;->b(Lcom/google/android/gms/internal/measurement/zzyd;Lcom/google/android/gms/internal/measurement/zzzj;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzyt;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget-object v13, Lcom/google/android/gms/internal/measurement/zzyt;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Random;

    invoke-virtual {v13, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/zzyt;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v12, :cond_9

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v12

    goto :goto_4

    :cond_9
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    :goto_4
    if-lez v12, :cond_a

    goto :goto_6

    :cond_a
    move-object v11, v9

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v11, 0x0

    :goto_6
    if-nez v7, :cond_d

    :cond_c
    :goto_7
    move-object v7, v11

    goto :goto_8

    :cond_d
    if-nez v11, :cond_e

    goto :goto_8

    :cond_e
    if-eq v7, v9, :cond_11

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzyq;->b:Lcom/google/android/gms/internal/measurement/zzyq;

    if-ne v11, v12, :cond_f

    goto :goto_8

    :cond_f
    if-eq v11, v9, :cond_c

    if-ne v7, v12, :cond_10

    goto :goto_7

    :cond_10
    new-instance v12, Lcom/google/android/gms/internal/measurement/zzyn;

    invoke-direct {v12, v7, v11}, Lcom/google/android/gms/internal/measurement/zzyn;-><init>(Lcom/google/android/gms/internal/measurement/zzyq;Lcom/google/android/gms/internal/measurement/zzyq;)V

    move-object v7, v12

    :cond_11
    :goto_8
    iput-object v7, v4, Lcom/google/android/gms/internal/measurement/zzxz;->e:Lcom/google/android/gms/internal/measurement/zzyq;

    if-ne v7, v9, :cond_13

    move v4, v6

    goto/16 :goto_c

    :cond_12
    invoke-static {}, Lr81;->h()V

    return-void

    :cond_13
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lcom/google/android/gms/internal/measurement/zzxy;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzxx;->i:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzxy;->d(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzyv;

    if-eqz v7, :cond_19

    iget-object v12, v4, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lcom/google/android/gms/internal/measurement/zzxy;

    if-eqz v12, :cond_16

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/measurement/zzxy;->f(Lcom/google/android/gms/internal/measurement/zzyl;)I

    move-result v13

    if-ltz v13, :cond_16

    add-int/2addr v13, v13

    add-int/lit8 v14, v13, 0x2

    :goto_9
    iget v15, v12, Lcom/google/android/gms/internal/measurement/zzxy;->b:I

    const/16 v16, 0x0

    add-int v5, v15, v15

    if-ge v14, v5, :cond_15

    iget-object v5, v12, Lcom/google/android/gms/internal/measurement/zzxy;->a:[Ljava/lang/Object;

    aget-object v5, v5, v14

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    iget-object v15, v12, Lcom/google/android/gms/internal/measurement/zzxy;->a:[Ljava/lang/Object;

    aput-object v5, v15, v13

    add-int/lit8 v5, v13, 0x1

    add-int/lit8 v17, v14, 0x1

    aget-object v17, v15, v17

    aput-object v17, v15, v5

    add-int/lit8 v13, v13, 0x2

    :cond_14
    add-int/lit8 v14, v14, 0x2

    goto :goto_9

    :cond_15
    sub-int v5, v14, v13

    shr-int/2addr v5, v10

    sub-int/2addr v15, v5

    iput v15, v12, Lcom/google/android/gms/internal/measurement/zzxy;->b:I

    :goto_a
    if-ge v13, v14, :cond_16

    iget-object v5, v12, Lcom/google/android/gms/internal/measurement/zzxy;->a:[Ljava/lang/Object;

    add-int/lit8 v11, v13, 0x1

    aput-object v16, v5, v13

    move v13, v11

    goto :goto_a

    :cond_16
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzyg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzxz;->f()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzxx;->a:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzzj;->d(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Throwable;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzyv;->d0()I

    move-result v13

    sget-object v14, Lcom/google/android/gms/internal/measurement/zzabq;->a:[Ljava/lang/String;

    if-gtz v13, :cond_18

    if-ne v13, v8, :cond_17

    goto :goto_b

    :cond_17
    const-string v0, "invalid maximum depth: 0"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_18
    :goto_b
    sget-object v14, Lcom/google/android/gms/internal/measurement/zzabq;->b:Lcom/google/android/gms/internal/measurement/zzabu;

    invoke-interface {v14, v13}, Lcom/google/android/gms/internal/measurement/zzabu;->g(I)[Ljava/lang/StackTraceElement;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v13}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-virtual {v4, v12, v5}, Lcom/google/android/gms/internal/measurement/zzxz;->g(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    :cond_19
    move v4, v10

    :goto_c
    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzxz;->e:Lcom/google/android/gms/internal/measurement/zzyq;

    if-eqz v5, :cond_1e

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lcom/google/android/gms/internal/measurement/zzxy;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzyp;->c:Lcom/google/android/gms/internal/measurement/zzyf;

    invoke-virtual {v11, v3, v7}, Lcom/google/android/gms/internal/measurement/zzyf;->b(Lcom/google/android/gms/internal/measurement/zzyd;Lcom/google/android/gms/internal/measurement/zzzj;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzyp;

    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzyp;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzyp;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v11

    if-eq v5, v9, :cond_1b

    invoke-virtual {v3, v6, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v9

    if-nez v9, :cond_1a

    goto :goto_d

    :cond_1a
    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzyq;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    neg-int v3, v11

    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    add-int/2addr v8, v11

    goto :goto_d

    :catchall_0
    move-exception v0

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_1b
    :goto_d
    if-eqz v4, :cond_1c

    if-lez v8, :cond_1c

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lcom/google/android/gms/internal/measurement/zzxy;

    if-eqz v3, :cond_1c

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzxx;->e:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/internal/measurement/zzxy;->e(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    :cond_1c
    if-ltz v8, :cond_1d

    move v3, v10

    goto :goto_e

    :cond_1d
    move v3, v6

    :goto_e
    and-int/2addr v4, v3

    :cond_1e
    if-eqz v4, :cond_27

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzxz;->g:[Ljava/lang/Object;

    :goto_f
    array-length v3, v2

    if-ge v6, v3, :cond_20

    aget-object v3, v2, v6

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzxu;

    if-eqz v4, :cond_1f

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzxu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzxu;->d0()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_20
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzxz;->h:Ljava/lang/String;

    if-eq v0, v2, :cond_21

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzaaf;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzabl;->b:Lcom/google/android/gms/internal/measurement/zzabl;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzaaf;-><init>(Lcom/google/android/gms/internal/measurement/zzabn;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzxz;->f:Lcom/google/android/gms/internal/measurement/zzaaf;

    :cond_21
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaab;->a:Lcom/google/android/gms/internal/measurement/zzaad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaad;->c()Lcom/google/android/gms/internal/measurement/zzaat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaat;->b()Lcom/google/android/gms/internal/measurement/zzabe;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzabe;->a:Lcom/google/android/gms/internal/measurement/zzabc;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzxz;->f()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzxx;->h:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->d(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzabe;

    if-eqz v2, :cond_23

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzabe;->a:Lcom/google/android/gms/internal/measurement/zzabc;

    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzabe;->a:Lcom/google/android/gms/internal/measurement/zzabc;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_22

    :goto_10
    move-object v0, v2

    goto :goto_11

    :cond_22
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzabe;

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzabc;

    invoke-direct {v5, v0, v4}, Lcom/google/android/gms/internal/measurement/zzabc;-><init>(Lcom/google/android/gms/internal/measurement/zzabc;Lcom/google/android/gms/internal/measurement/zzabc;)V

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/measurement/zzabe;-><init>(Lcom/google/android/gms/internal/measurement/zzabc;)V

    goto :goto_10

    :cond_23
    :goto_11
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/zzxz;->g(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    :cond_24
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzxq;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzxq;->i:Lcom/google/android/gms/internal/measurement/zzxs;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzxi;->a:Lcom/google/android/gms/internal/measurement/zzzf;

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzabt;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzabt;

    iget v0, v3, Lcom/google/android/gms/internal/measurement/zzabt;->b:I

    add-int/2addr v0, v10

    iput v0, v3, Lcom/google/android/gms/internal/measurement/zzabt;->b:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_26

    const/16 v4, 0x64

    if-gt v0, v4, :cond_25

    :try_start_2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzf;->c(Lcom/google/android/gms/internal/measurement/zzxz;)V

    goto :goto_12

    :catchall_1
    move-exception v0

    move-object v4, v0

    goto :goto_13

    :cond_25
    const-string v0, "unbounded recursion in log statement"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzxi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxz;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_12
    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzabt;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_15

    :goto_13
    :try_start_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzabt;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_14

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw v4

    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    const-string v3, "Overflow of RecursionDepth (possible error in core library)"

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_15
    :try_start_6
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzf;->d(Ljava/lang/RuntimeException;Lcom/google/android/gms/internal/measurement/zzxz;)V
    :try_end_6
    .catch Lcom/google/android/gms/internal/measurement/zzzg; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_16

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzxi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxz;)V

    :try_start_7
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_16

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    :cond_27
    :goto_16
    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/zzyc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->d:Lcom/google/android/gms/internal/measurement/zzyc;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "cannot request log site information prior to postProcess()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->f:Lcom/google/android/gms/internal/measurement/zzaaf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->g:[Ljava/lang/Object;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "cannot get arguments before calling log()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string p0, "cannot get arguments unless a template context exists"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1
.end method

.method public final e()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->f:Lcom/google/android/gms/internal/measurement/zzaaf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->g:[Ljava/lang/Object;

    if-eqz p0, :cond_1

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    const-string p0, "cannot get literal argument before calling log()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_2
    const-string p0, "cannot get literal argument if a template context exists"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2
.end method

.method public final f()Lcom/google/android/gms/internal/measurement/zzzj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lcom/google/android/gms/internal/measurement/zzxy;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzzi;->a:Lcom/google/android/gms/internal/measurement/zzzi;

    return-object p0
.end method

.method public final g(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lcom/google/android/gms/internal/measurement/zzxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzzj;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzxy;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzxy;->b:I

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lcom/google/android/gms/internal/measurement/zzxy;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lcom/google/android/gms/internal/measurement/zzxy;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzxy;->e(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    return-void
.end method
