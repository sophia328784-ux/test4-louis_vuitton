.class final Lcom/perfectcorp/common/guava/MoreFutures$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/guava/MoreFutures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/common/guava/b;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/guava/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/common/guava/MoreFutures$a;->a:Lcom/perfectcorp/common/guava/b;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/guava/MoreFutures$a;->a:Lcom/perfectcorp/common/guava/b;

    :try_start_0
    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lcom/perfectcorp/common/guava/b;->a()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lcom/perfectcorp/common/guava/b;->a()V

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/guava/MoreFutures$a;->a:Lcom/perfectcorp/common/guava/b;

    :try_start_0
    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lcom/perfectcorp/common/guava/b;->a()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lcom/perfectcorp/common/guava/b;->a()V

    throw p1
.end method
