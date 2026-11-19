.class public final synthetic Landroidx/media3/exoplayer/hls/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field public final synthetic c:Landroidx/media3/exoplayer/hls/HlsMediaChunk;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;Landroidx/media3/exoplayer/hls/HlsMediaChunk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/c;->b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/c;->c:Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/c;->b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->d:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/c;->c:Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->m:Landroid/net/Uri;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;->n(Landroid/net/Uri;)V

    return-void
.end method
