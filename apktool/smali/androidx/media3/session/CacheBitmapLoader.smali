.class public final Landroidx/media3/session/CacheBitmapLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/BitmapLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/BitmapLoader;

.field public b:Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/BitmapLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/CacheBitmapLoader;->a:Landroidx/media3/common/util/BitmapLoader;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/CacheBitmapLoader;->b:Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;->b:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v2, p1, Landroidx/media3/common/MediaMetadata;->n:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, v0, Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;->a:[B

    if-eqz v0, :cond_2

    iget-object v1, p1, Landroidx/media3/common/MediaMetadata;->k:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Landroidx/media3/session/CacheBitmapLoader;->b:Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;

    iget-object p0, p0, Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_2
    iget-object v0, p0, Landroidx/media3/session/CacheBitmapLoader;->a:Landroidx/media3/common/util/BitmapLoader;

    invoke-interface {v0, p1}, Landroidx/media3/common/util/BitmapLoader;->a(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance v1, Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;

    invoke-direct {v1, p1, v0}, Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;-><init>(Landroidx/media3/common/MediaMetadata;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iput-object v1, p0, Landroidx/media3/session/CacheBitmapLoader;->b:Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;

    return-object v0
.end method

.method public final b(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/CacheBitmapLoader;->b:Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/session/CacheBitmapLoader;->b:Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;

    iget-object p0, p0, Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/CacheBitmapLoader;->a:Landroidx/media3/common/util/BitmapLoader;

    invoke-interface {v0, p1}, Landroidx/media3/common/util/BitmapLoader;->b(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;

    invoke-direct {v1, p1, v0}, Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;-><init>(Landroid/net/Uri;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iput-object v1, p0, Landroidx/media3/session/CacheBitmapLoader;->b:Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;

    return-object v0
.end method

.method public final c([B)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/CacheBitmapLoader;->b:Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;->a:[B

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/session/CacheBitmapLoader;->b:Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;

    iget-object p0, p0, Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/CacheBitmapLoader;->a:Landroidx/media3/common/util/BitmapLoader;

    invoke-interface {v0, p1}, Landroidx/media3/common/util/BitmapLoader;->c([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;

    invoke-direct {v1, p1, v0}, Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;-><init>([BLcom/google/common/util/concurrent/ListenableFuture;)V

    iput-object v1, p0, Landroidx/media3/session/CacheBitmapLoader;->b:Landroidx/media3/session/CacheBitmapLoader$BitmapLoadRequest;

    return-object v0
.end method
