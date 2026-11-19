.class public abstract Lcom/google/android/gms/internal/measurement/zzvy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final b:Ljava/util/WeakHashMap;

.field public static final c:Lcom/google/android/gms/internal/measurement/zzvx;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    const-string v1, "androidx.fragment.app.FragmentViewLifecycleOwner.handleLifecycleEvent"

    const-string v2, "com.google.android.libraries.logging.logger.transmitters.clearcut"

    const-string v3, "com.google.android.libraries.performance.primes.transmitter.clearcut"

    const-string v4, "com.google.android.libraries.performance.primes.metrics.crash.CrashMetricServiceImpl"

    const-string v5, "com.google.android.libraries.performance.primes.metrics.crash.applicationexit.ApplicationExitMetricServiceImpl"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->r(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->v()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrg;

    const-string v1, "tiktok_systrace"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzrg;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->b:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvx;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->c:Lcom/google/android/gms/internal/measurement/zzvx;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/zzws;
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->c()Lcom/google/android/gms/internal/measurement/zzwq;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzwq;->b:Lcom/google/android/gms/internal/measurement/zzws;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzwg;->h:Lcom/google/android/gms/internal/measurement/zzwg;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzwd;->h:Lcom/google/android/gms/internal/measurement/zzvr;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzvz;->c:Lcom/google/android/gms/internal/measurement/zzvz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzvz;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzvn;->c(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzvy;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzwc;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzwd;

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzwd;->h:Lcom/google/android/gms/internal/measurement/zzvr;

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/google/android/gms/internal/measurement/zzwd;-><init>(Ljava/util/UUID;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzvr;Lcom/google/android/gms/internal/measurement/zzwq;)V

    return-object v3
.end method

.method public static b(Lcom/google/android/gms/internal/measurement/zzwq;Lcom/google/android/gms/internal/measurement/zzws;)Lcom/google/android/gms/internal/measurement/zzws;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwq;->b:Lcom/google/android/gms/internal/measurement/zzws;

    if-ne v0, p1, :cond_0

    goto :goto_3

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzwq;->a:Z

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzwq;->a:Z

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzws;->e0()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v1

    if-ne v1, p1, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzws;->d0()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzws;->e0()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzws;->d0()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzwr;->c(Lcom/google/android/gms/internal/measurement/zzws;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwr;->b(Lcom/google/android/gms/internal/measurement/zzws;)V

    :cond_6
    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzwr;->a(Lcom/google/android/gms/internal/measurement/zzws;)V

    :cond_7
    :goto_2
    if-eq v0, p1, :cond_8

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwq;->b:Lcom/google/android/gms/internal/measurement/zzws;

    return-object v0

    :cond_8
    :goto_3
    return-object p1
.end method

.method public static c()Lcom/google/android/gms/internal/measurement/zzwq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->c:Lcom/google/android/gms/internal/measurement/zzvx;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwq;

    return-object v0
.end method
