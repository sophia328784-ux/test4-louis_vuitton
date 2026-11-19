.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field private b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback<",
            "-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures$a;->a:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures$a;->a:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-class v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
