.class public final Landroidx/media3/session/SizeLimitedBitmapLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/BitmapLoader;


# instance fields
.field public final a:Landroidx/media3/common/util/BitmapLoader;

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/BitmapLoader;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/SizeLimitedBitmapLoader;->a:Landroidx/media3/common/util/BitmapLoader;

    iput p2, p0, Landroidx/media3/session/SizeLimitedBitmapLoader;->b:I

    iput-boolean p3, p0, Landroidx/media3/session/SizeLimitedBitmapLoader;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/SizeLimitedBitmapLoader;->a:Landroidx/media3/common/util/BitmapLoader;

    invoke-interface {v0, p1}, Landroidx/media3/common/util/BitmapLoader;->a(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lmw;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lmw;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/google/common/util/concurrent/Futures;->l(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/SizeLimitedBitmapLoader;->a:Landroidx/media3/common/util/BitmapLoader;

    invoke-interface {v0, p1}, Landroidx/media3/common/util/BitmapLoader;->b(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lmw;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lmw;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/google/common/util/concurrent/Futures;->l(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final c([B)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/SizeLimitedBitmapLoader;->a:Landroidx/media3/common/util/BitmapLoader;

    invoke-interface {v0, p1}, Landroidx/media3/common/util/BitmapLoader;->c([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lmw;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lmw;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/google/common/util/concurrent/Futures;->l(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
