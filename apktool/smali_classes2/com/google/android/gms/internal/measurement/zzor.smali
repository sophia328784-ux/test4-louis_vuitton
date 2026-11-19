.class final synthetic Lcom/google/android/gms/internal/measurement/zzor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzpg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzpg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzor;->zza:Lcom/google/android/gms/internal/measurement/zzpg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzor;->zza:Lcom/google/android/gms/internal/measurement/zzpg;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzlk;->i:Lcom/google/android/gms/internal/measurement/zzqe;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzabz;->zzd:Lcom/google/android/gms/internal/measurement/zzabz;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->e:Z

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzou;->a:Lcom/google/android/gms/internal/measurement/zzou;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzqe;->c:Lcom/google/common/base/Supplier;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzqm;

    if-nez v3, :cond_0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzabz;->d0()I

    move-result v1

    shl-int/2addr p0, v1

    iget v1, v0, Lcom/google/android/gms/internal/measurement/zzqe;->e:I

    and-int/2addr v1, p0

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzqe;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    :try_start_0
    iget v4, v0, Lcom/google/android/gms/internal/measurement/zzqe;->e:I

    and-int v5, v4, p0

    if-nez v5, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p0, v4

    iput p0, v0, Lcom/google/android/gms/internal/measurement/zzqe;->e:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzqe;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez p0, :cond_6

    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzqe;->g:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzqe;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v1, :cond_5

    if-nez v3, :cond_3

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzqb;->a:Lcom/google/android/gms/internal/measurement/zzqb;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzqe;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzky;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzpz;->zza:Lcom/google/android/gms/internal/measurement/zzpz;

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzqe;->b:Lcom/google/common/base/Supplier;

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/measurement/zzky;->a(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/AbstractFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzqa;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/measurement/zzqa;-><init>(Lcom/google/android/gms/internal/measurement/zzqe;Lcom/google/android/gms/internal/measurement/zzqm;)V

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v3}, Lcom/google/common/util/concurrent/Futures;->m(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzqe;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_4

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzqe;->d:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmj;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzqd;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/measurement/zzqd;-><init>(Lcom/google/android/gms/internal/measurement/zzqe;Lcom/google/android/gms/internal/measurement/zzqm;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/measurement/zzmj;->c(Lcom/google/android/gms/internal/measurement/zzpm;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzqe;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_4
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzpy;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/zzpy;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzqe;->b:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_5
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_6
    return-void
.end method
