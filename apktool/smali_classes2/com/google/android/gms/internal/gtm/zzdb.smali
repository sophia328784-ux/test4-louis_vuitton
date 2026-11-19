.class abstract Lcom/google/android/gms/internal/gtm/zzdb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/google/android/gms/internal/gtm/zzas;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;
    .locals 11

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzdb;->a:Lcom/google/android/gms/internal/gtm/zzas;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/gtm/zzdb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzdb;->a:Lcom/google/android/gms/internal/gtm/zzas;

    if-nez v0, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzas;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzda;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/gtm/zzas;-><init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzdb;->a:Lcom/google/android/gms/internal/gtm/zzas;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzdb;->a:Lcom/google/android/gms/internal/gtm/zzas;

    return-object p0
.end method
