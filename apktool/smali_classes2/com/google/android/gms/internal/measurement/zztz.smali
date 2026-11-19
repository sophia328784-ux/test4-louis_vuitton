.class final synthetic Lcom/google/android/gms/internal/measurement/zztz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzui;

.field public final synthetic b:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzwy;

.field public final synthetic d:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/measurement/zzwy;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zztz;->a:Lcom/google/android/gms/internal/measurement/zzui;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zztz;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zztz;->c:Lcom/google/android/gms/internal/measurement/zzwy;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zztz;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzua;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zztz;->a:Lcom/google/android/gms/internal/measurement/zzui;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzua;-><init>(Lcom/google/android/gms/internal/measurement/zzui;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zztz;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3, v0, v2}, Lcom/google/common/util/concurrent/Futures;->m(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zztz;->c:Lcom/google/android/gms/internal/measurement/zzwy;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zztz;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2, p0}, Lcom/google/common/util/concurrent/Futures;->m(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzuc;

    invoke-direct {v2, v1, v0, p0}, Lcom/google/android/gms/internal/measurement/zzuc;-><init>(Lcom/google/android/gms/internal/measurement/zzui;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    sget v0, Lcom/google/android/gms/internal/measurement/zzxa;->a:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->a()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzwy;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzwy;-><init>(Lcom/google/android/gms/internal/measurement/zzws;Lcom/google/common/util/concurrent/AsyncFunction;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/google/common/util/concurrent/Futures;->m(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
