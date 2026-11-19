.class public final Lcom/google/android/gms/internal/measurement/zzpg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Lcom/google/android/gms/internal/measurement/zzpe;

.field public static final j:Lcom/google/android/gms/internal/measurement/zzon;


# instance fields
.field public volatile a:Lcom/google/android/gms/internal/measurement/zzqs;

.field public final b:Lcom/google/android/gms/internal/measurement/zzlk;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lcom/google/common/collect/ImmutableSet;

.field public final g:Lcom/google/android/gms/internal/measurement/zzps;

.field public final h:Lcom/google/android/gms/internal/measurement/zzqt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzpe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->i:Lcom/google/android/gms/internal/measurement/zzpe;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzon;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->v()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzox;->b:Lcom/google/android/gms/internal/measurement/zzox;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzon;-><init>(Lcom/google/common/base/Function;ZLcom/google/common/collect/ImmutableSet;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->j:Lcom/google/android/gms/internal/measurement/zzon;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzon;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzlk;->b:Landroid/content/Context;

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzon;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzon;->a:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, p2, Lcom/google/android/gms/internal/measurement/zzon;->d:Ljava/lang/String;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzpg;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->d:Ljava/lang/String;

    iget-boolean v2, p2, Lcom/google/android/gms/internal/measurement/zzon;->b:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->e:Z

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzon;->c:Lcom/google/common/collect/ImmutableSet;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->f:Lcom/google/common/collect/ImmutableSet;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lcom/google/android/gms/internal/measurement/zzqs;

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzps;

    invoke-direct {p2}, Lcom/google/android/gms/internal/measurement/zzps;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->g:Lcom/google/android/gms/internal/measurement/zzps;

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzqt;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzqt;-><init>(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->h:Lcom/google/android/gms/internal/measurement/zzqt;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/zzqs;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lcom/google/android/gms/internal/measurement/zzqs;

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lcom/google/android/gms/internal/measurement/zzqs;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzpg;->h:Lcom/google/android/gms/internal/measurement/zzqt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqt;->a()Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzqs;->e:Lcom/google/android/gms/internal/measurement/zzqr;

    iget v0, v0, Lcom/google/android/gms/internal/measurement/zzqr;->b:I

    add-int/lit8 v0, v0, -0x2

    const/16 v2, 0xf

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzlk;->g:Lcom/google/android/gms/internal/measurement/zzrf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzrf;->a()V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->e:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->h:Lcom/google/android/gms/internal/measurement/zzqt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzqt;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzqs;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzop;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/zzop;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->H()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzqs;->e:Lcom/google/android/gms/internal/measurement/zzqr;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzqs;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzqs;-><init>(Lcom/google/android/gms/internal/measurement/zzqv;Lcom/google/android/gms/internal/measurement/zzqr;)V

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzoy;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/measurement/zzoy;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzlk;->a:Lcom/google/android/gms/internal/measurement/zzol;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzqs;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzpg;->f:Lcom/google/common/collect/ImmutableSet;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzpg;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->a(Lcom/google/android/gms/internal/measurement/zzacr;Ljava/util/Set;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzoq;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/measurement/zzoq;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->h:Lcom/google/android/gms/internal/measurement/zzqt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzqt;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzor;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/zzor;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    move-object v0, v1

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzpg;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzqs;->e:Lcom/google/android/gms/internal/measurement/zzqr;

    iget v1, v1, Lcom/google/android/gms/internal/measurement/zzqr;->b:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lcom/google/android/gms/internal/measurement/zzqs;

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    return-object v0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->h:Lcom/google/android/gms/internal/measurement/zzqt;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzqt;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzlk;->d:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmj;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzqt;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zzmj;->a(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzqp;->b:Lcom/google/android/gms/internal/measurement/zzqp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/google/common/util/concurrent/Futures;->l(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzpf;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzpf;-><init>(Lcom/google/android/gms/internal/measurement/zzqt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/common/util/concurrent/Futures;->m(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzov;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/measurement/zzov;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object p0

    invoke-interface {v2, v3, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
