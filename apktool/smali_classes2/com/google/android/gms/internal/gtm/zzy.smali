.class final Lcom/google/android/gms/internal/gtm/zzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzaa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzy;->zza:Lcom/google/android/gms/internal/gtm/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzy;->zza:Lcom/google/android/gms/internal/gtm/zzaa;

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->i:Lcom/google/android/gms/internal/gtm/zzz;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzx;

    const/4 v2, 0x5

    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/gtm/zzx;->a:Lcom/google/android/gms/internal/gtm/zzaa;

    iget-object v3, v3, Lcom/google/android/gms/internal/gtm/zzaa;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    goto :goto_1

    :catch_1
    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzx;->a:Lcom/google/android/gms/internal/gtm/zzaa;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/gms/internal/gtm/zzaa;->a:Z

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    goto :goto_1

    :catch_2
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    goto :goto_1

    :catch_3
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    goto :goto_1

    :catch_4
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :cond_0
    :goto_1
    const/4 v0, 0x4

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzaa;->b:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzaa;->f:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzaa;->d:J

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :cond_1
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzaa;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5

    const-wide/32 v2, 0xdbba0

    :try_start_3
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method
