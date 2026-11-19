.class public final Lcom/google/android/gms/internal/gtm/zzgz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzdi;


# instance fields
.field public final a:Lcom/google/android/gms/internal/gtm/zzaa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzaa;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzaa;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgz;->a:Lcom/google/android/gms/internal/gtm/zzaa;

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 5

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    array-length p2, p2

    if-nez p2, :cond_1

    move p1, v0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgz;->a:Lcom/google/android/gms/internal/gtm/zzaa;

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkl;

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzaa;->b:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez p2, :cond_2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzaa;->b()V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzaa;->b()V

    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzaa;->f:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzaa;->d:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long p2, v1, v3

    if-lez p2, :cond_3

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzaa;->b:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzaa;->b:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez p2, :cond_4

    move p0, v0

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->b:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    iget-boolean p0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->b:Z

    :goto_4
    xor-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V

    return-object p1
.end method
