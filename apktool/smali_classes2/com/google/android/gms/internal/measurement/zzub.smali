.class final synthetic Lcom/google/android/gms/internal/measurement/zzub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzui;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzub;->a:Lcom/google/android/gms/internal/measurement/zzui;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzub;->a:Lcom/google/android/gms/internal/measurement/zzui;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzui;->b(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzty;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzty;-><init>(Lcom/google/android/gms/internal/measurement/zzui;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzui;->f:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->c()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->f(Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    goto :goto_1

    :cond_0
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/zzsg;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/measurement/zzsg;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zztf;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zztf;->a(Ljava/io/IOException;Lcom/google/android/gms/internal/measurement/zztg;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzue;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzue;-><init>(Lcom/google/android/gms/internal/measurement/zzui;)V

    sget v2, Lcom/google/android/gms/internal/measurement/zzxa;->a:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->a()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzwy;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzwy;-><init>(Lcom/google/android/gms/internal/measurement/zzws;Lcom/google/common/util/concurrent/AsyncFunction;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzui;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v3, p0}, Lcom/google/common/util/concurrent/Futures;->m(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->f(Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    :goto_1
    return-object p0
.end method
