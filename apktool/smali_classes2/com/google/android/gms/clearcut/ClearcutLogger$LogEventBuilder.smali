.class public Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/ClearcutLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogEventBuilder"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

.field public final e:Lcom/google/android/gms/internal/clearcut/zzha;

.field public f:Z

.field public final synthetic g:Lcom/google/android/gms/clearcut/ClearcutLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->g:Lcom/google/android/gms/clearcut/ClearcutLogger;

    iget v0, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->e:I

    iput v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->a:I

    iget-object v0, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->g:Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->d:Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzha;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/zzha;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->e:Lcom/google/android/gms/internal/clearcut/zzha;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->f:Z

    iget-object v1, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->c:Ljava/lang/String;

    iget-object p0, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->a:Landroid/content/Context;

    sget-boolean v1, Lcom/google/android/gms/internal/clearcut/zzaa;->b:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzaa;->a:Landroid/os/UserManager;

    if-nez v1, :cond_2

    const-class v3, Lcom/google/android/gms/internal/clearcut/zzaa;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzaa;->a:Landroid/os/UserManager;

    if-nez v1, :cond_1

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    sput-object p0, Lcom/google/android/gms/internal/clearcut/zzaa;->a:Landroid/os/UserManager;

    if-nez p0, :cond_0

    sput-boolean v2, Lcom/google/android/gms/internal/clearcut/zzaa;->b:Z

    monitor-exit v3

    move v1, v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    monitor-exit v3

    goto :goto_1

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    sput-boolean v1, Lcom/google/android/gms/internal/clearcut/zzaa;->b:Z

    if-eqz v1, :cond_3

    const/4 p0, 0x0

    sput-object p0, Lcom/google/android/gms/internal/clearcut/zzaa;->a:Landroid/os/UserManager;

    :cond_3
    :goto_2
    xor-int/lit8 p0, v1, 0x1

    iput-boolean p0, v0, Lcom/google/android/gms/internal/clearcut/zzha;->t:Z

    iget-object p0, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->i:Lcom/google/android/gms/common/util/DefaultClock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/clearcut/zzha;->c:J

    iget-object p0, p1, Lcom/google/android/gms/clearcut/ClearcutLogger;->i:Lcom/google/android/gms/common/util/DefaultClock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/google/android/gms/internal/clearcut/zzha;->d:J

    iget-wide p0, v0, Lcom/google/android/gms/internal/clearcut/zzha;->c:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    int-to-long p0, p0

    iput-wide p0, v0, Lcom/google/android/gms/internal/clearcut/zzha;->o:J

    iput-object p2, v0, Lcom/google/android/gms/internal/clearcut/zzha;->j:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->f:Z

    new-instance v1, Lcom/google/android/gms/clearcut/zze;

    new-instance v2, Lcom/google/android/gms/internal/clearcut/zzr;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->g:Lcom/google/android/gms/clearcut/ClearcutLogger;

    iget-object v3, v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->b:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->c:I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->d:Lcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;

    iget v5, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->a:I

    iget-object v6, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->c:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/clearcut/zzr;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/clearcut/zzge$zzv$zzb;)V

    sget-object v3, Lcom/google/android/gms/clearcut/ClearcutLogger;->k:Lcom/google/android/gms/common/api/Api;

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-object v3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->e:Lcom/google/android/gms/internal/clearcut/zzha;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/clearcut/zze;-><init>(Lcom/google/android/gms/internal/clearcut/zzr;Lcom/google/android/gms/internal/clearcut/zzha;Lcom/google/android/gms/clearcut/ClearcutLogger$zzb;Lcom/google/android/gms/clearcut/ClearcutLogger$zzb;[I[Ljava/lang/String;[I[[B[Lcom/google/android/gms/phenotype/ExperimentTokens;Z)V

    iget-object p0, v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->j:Lcom/google/android/gms/internal/clearcut/zzp;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/clearcut/zzp;->b(Lcom/google/android/gms/clearcut/zze;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->h:Lcom/google/android/gms/internal/clearcut/zze;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/clearcut/zze;->j(Lcom/google/android/gms/clearcut/zze;)Lcom/google/android/gms/common/api/PendingResult;

    return-void

    :cond_0
    sget-object p0, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/StatusPendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_1
    const-string p0, "do not reuse LogEventBuilder"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
