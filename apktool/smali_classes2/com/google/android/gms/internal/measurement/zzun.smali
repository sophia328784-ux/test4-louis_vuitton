.class final synthetic Lcom/google/android/gms/internal/measurement/zzun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzut;

.field public final synthetic b:Lcom/google/common/util/concurrent/AbstractFuture;

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzwy;

.field public final synthetic d:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzut;Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/android/gms/internal/measurement/zzwy;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzun;->a:Lcom/google/android/gms/internal/measurement/zzut;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzun;->b:Lcom/google/common/util/concurrent/AbstractFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzun;->c:Lcom/google/android/gms/internal/measurement/zzwy;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzun;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzup;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzun;->c:Lcom/google/android/gms/internal/measurement/zzwy;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzun;->d:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzun;->a:Lcom/google/android/gms/internal/measurement/zzut;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzup;-><init>(Lcom/google/android/gms/internal/measurement/zzut;Lcom/google/android/gms/internal/measurement/zzwy;Ljava/util/concurrent/Executor;)V

    sget v1, Lcom/google/android/gms/internal/measurement/zzxa;->a:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->a()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzwy;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/zzwy;-><init>(Lcom/google/android/gms/internal/measurement/zzws;Lcom/google/common/util/concurrent/AsyncFunction;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzun;->b:Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-static {p0, v2, v0}, Lcom/google/common/util/concurrent/Futures;->m(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
