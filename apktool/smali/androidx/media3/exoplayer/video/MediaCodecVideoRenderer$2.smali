.class Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->c:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->a:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iput p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->b:I

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->a:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->b:I

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->l(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->c:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i1(II)V

    return-void
.end method

.method public final f(J)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->a:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->b:I

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->c:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->e1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    return-void
.end method
