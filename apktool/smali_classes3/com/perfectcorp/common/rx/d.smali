.class public final synthetic Lcom/perfectcorp/common/rx/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/g;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/common/rx/d;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Lcom/perfectcorp/common/rx/d;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final e(Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/common/rx/h;

    invoke-direct {v0, p1}, Lcom/perfectcorp/common/rx/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;)V

    iget-object p1, p0, Lcom/perfectcorp/common/rx/d;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Lcom/perfectcorp/common/rx/d;->c:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
