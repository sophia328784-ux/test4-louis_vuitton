.class final synthetic Lcom/google/android/gms/internal/measurement/zzov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzpg;

.field private final synthetic zzb:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzpg;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzov;->zza:Lcom/google/android/gms/internal/measurement/zzpg;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzov;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzov;->zza:Lcom/google/android/gms/internal/measurement/zzpg;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzov;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzqv;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqr;

    const/4 v2, 0x6

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzqs;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/zzqs;-><init>(Lcom/google/android/gms/internal/measurement/zzqv;Lcom/google/android/gms/internal/measurement/zzqr;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzpg;->e:Z

    if-nez v1, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lcom/google/android/gms/internal/measurement/zzqs;

    if-nez v3, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    :try_start_1
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lcom/google/android/gms/internal/measurement/zzqs;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    iget-object v1, v3, Lcom/google/android/gms/internal/measurement/zzqs;->d:Lcom/google/common/collect/ImmutableMap;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzqs;->d:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzlk;->e:Lcom/google/common/base/Supplier;

    invoke-interface {p0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzqm;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzqm;->d0()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_3
    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lcom/google/android/gms/internal/measurement/zzqs;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzpg;->g:Lcom/google/android/gms/internal/measurement/zzps;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzps;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzpg;->e:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzlk;->d:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzqv;->A()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/measurement/zzmj;->b(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    const-class v2, Ljava/lang/Throwable;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzow;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzow;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v1

    invoke-static {p0, v2, v3, v1}, Lcom/google/common/util/concurrent/Futures;->b(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/SecurityException;

    if-nez p0, :cond_5

    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzpg;->c:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x40

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_5
    return-void
.end method
