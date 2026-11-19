.class final synthetic Lcom/google/android/gms/internal/measurement/zzpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzqt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzqt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpf;->a:Lcom/google/android/gms/internal/measurement/zzqt;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzqv;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzpf;->a:Lcom/google/android/gms/internal/measurement/zzqt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzqq;-><init>(Lcom/google/android/gms/internal/measurement/zzqt;Lcom/google/android/gms/internal/measurement/zzqv;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqt;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/Futures;->j(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
