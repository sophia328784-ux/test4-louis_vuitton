.class public final Lcom/google/android/gms/internal/gtm/zzja;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/gtm/zzjm;

.field public final c:Lcom/google/android/gms/common/util/DefaultClock;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzjm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/gtm/zzjm;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzja;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzja;->a:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/common/util/DefaultClock;->a:Lcom/google/android/gms/common/util/DefaultClock;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzja;->c:Lcom/google/android/gms/common/util/DefaultClock;

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzja;->b:Lcom/google/android/gms/internal/gtm/zzjm;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzja;->e:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/gtm/zzjf;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzix;Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 13

    const/4 v8, 0x0

    const/4 v0, 0x2

    if-nez p3, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    move v5, v8

    goto :goto_0

    :cond_0
    move/from16 v5, p3

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt v5, v1, :cond_1

    iget-object p0, p1, Lcom/google/android/gms/internal/gtm/zzjf;->a:Lcom/google/android/gms/internal/gtm/zzit;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzit;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "There is no valid resource for the container: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzjh;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/google/android/gms/internal/gtm/zzjh;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzjg;Lcom/google/android/gms/internal/gtm/zzkd;)V

    move-object/from16 v6, p4

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/gtm/zzix;->zza(Lcom/google/android/gms/internal/gtm/zzjh;)V

    return-void

    :cond_1
    move-object/from16 v6, p4

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    if-ne v1, v0, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzjf;->a:Lcom/google/android/gms/internal/gtm/zzit;

    iget-object v2, v1, Lcom/google/android/gms/internal/gtm/zzit;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v8, p0, Lcom/google/android/gms/internal/gtm/zzja;->b:Lcom/google/android/gms/internal/gtm/zzjm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzit;->a()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/internal/gtm/zzit;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zziy;

    const/4 v2, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/gtm/zziy;-><init>(Lcom/google/android/gms/internal/gtm/zzja;ILcom/google/android/gms/internal/gtm/zzjf;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzix;Lcom/google/android/gms/internal/gtm/zzam;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzjk;

    invoke-direct {p0, v8, v9, v10, v0}, Lcom/google/android/gms/internal/gtm/zzjk;-><init>(Lcom/google/android/gms/internal/gtm/zzjm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zziw;)V

    iget-object v0, v8, Lcom/google/android/gms/internal/gtm/zzjm;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const-string p0, "Unknown fetching source: "

    invoke-static {v5, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/internal/gtm/zzjf;->a:Lcom/google/android/gms/internal/gtm/zzit;

    iget-object v4, v2, Lcom/google/android/gms/internal/gtm/zzit;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v8, p0, Lcom/google/android/gms/internal/gtm/zzja;->b:Lcom/google/android/gms/internal/gtm/zzjm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzit;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/google/android/gms/internal/gtm/zziy;

    const/4 v2, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/gtm/zziy;-><init>(Lcom/google/android/gms/internal/gtm/zzja;ILcom/google/android/gms/internal/gtm/zzjf;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzix;Lcom/google/android/gms/internal/gtm/zzam;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzjj;

    invoke-direct {p0, v8, v9, v0}, Lcom/google/android/gms/internal/gtm/zzjj;-><init>(Lcom/google/android/gms/internal/gtm/zzjm;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zziw;)V

    iget-object v0, v8, Lcom/google/android/gms/internal/gtm/zzjm;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v4, p1, Lcom/google/android/gms/internal/gtm/zzjf;->a:Lcom/google/android/gms/internal/gtm/zzit;

    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzja;->d:Ljava/util/HashMap;

    iget-object v7, v4, Lcom/google/android/gms/internal/gtm/zzit;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/gtm/zziz;

    iget-object v7, p1, Lcom/google/android/gms/internal/gtm/zzjf;->a:Lcom/google/android/gms/internal/gtm/zzit;

    iget-boolean v7, v7, Lcom/google/android/gms/internal/gtm/zzit;->d:Z

    const-wide/16 v9, 0x0

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    iget-wide v6, v6, Lcom/google/android/gms/internal/gtm/zziz;->a:J

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzja;->b:Lcom/google/android/gms/internal/gtm/zzjm;

    iget-object v4, v4, Lcom/google/android/gms/internal/gtm/zzit;->a:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/gtm/zzjm;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    goto :goto_1

    :cond_7
    move-wide v6, v9

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzja;->c:Lcom/google/android/gms/common/util/DefaultClock;

    const-wide/32 v11, 0xdbba0

    add-long/2addr v6, v11

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v4, v6, v11

    if-ltz v4, :cond_8

    add-int/2addr v5, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move v3, v5

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzja;->a(Lcom/google/android/gms/internal/gtm/zzjf;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzix;Lcom/google/android/gms/internal/gtm/zzam;)V

    return-void

    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzja;->e:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/google/android/gms/internal/gtm/zzjf;->a:Lcom/google/android/gms/internal/gtm/zzit;

    if-nez v4, :cond_9

    const-string v4, ""

    goto :goto_3

    :cond_9
    iget-object v4, v4, Lcom/google/android/gms/internal/gtm/zzit;->a:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzjr;

    if-nez v4, :cond_b

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzjr;

    invoke-direct {v4}, Lcom/google/android/gms/internal/gtm/zzjr;-><init>()V

    iget-object v6, p1, Lcom/google/android/gms/internal/gtm/zzjf;->a:Lcom/google/android/gms/internal/gtm/zzit;

    if-nez v6, :cond_a

    const-string v6, ""

    goto :goto_4

    :cond_a
    iget-object v6, v6, Lcom/google/android/gms/internal/gtm/zzit;->a:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    move-object v11, v4

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v12, p0, Lcom/google/android/gms/internal/gtm/zzja;->a:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zziy;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/gtm/zziy;-><init>(Lcom/google/android/gms/internal/gtm/zzja;ILcom/google/android/gms/internal/gtm/zzjf;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzix;Lcom/google/android/gms/internal/gtm/zzam;)V

    monitor-enter v11

    :try_start_0
    iget-object p0, v11, Lcom/google/android/gms/internal/gtm/zzjr;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_c

    invoke-interface {p0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_c
    :goto_5
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzjq;

    invoke-direct {p0, v12, p1, v0}, Lcom/google/android/gms/internal/gtm/zzjq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzjf;Lcom/google/android/gms/internal/gtm/zziw;)V

    iget-object v0, v11, Lcom/google/android/gms/internal/gtm/zzjr;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v9, v10, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    iput-object p0, v11, Lcom/google/android/gms/internal/gtm/zzjr;->b:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v11

    return-void

    :goto_6
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/internal/gtm/zzix;Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 9

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    move-object v3, p1

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzjf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzjf;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzit;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbn;->a()Lcom/google/android/gms/internal/gtm/zzbn;

    move-result-object v0

    iget v4, v0, Lcom/google/android/gms/internal/gtm/zzbn;->c:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzbn;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v6, v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbn;->a()Lcom/google/android/gms/internal/gtm/zzbn;

    move-result-object v0

    iget-object v7, v0, Lcom/google/android/gms/internal/gtm/zzbn;->b:Ljava/lang/String;

    const-string v8, ""

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/gtm/zzit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p1, Lcom/google/android/gms/internal/gtm/zzjf;->a:Lcom/google/android/gms/internal/gtm/zzit;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    move-object p4, p5

    move-object p5, p6

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/internal/gtm/zzja;->a(Lcom/google/android/gms/internal/gtm/zzjf;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzix;Lcom/google/android/gms/internal/gtm/zzam;)V

    return-void
.end method
