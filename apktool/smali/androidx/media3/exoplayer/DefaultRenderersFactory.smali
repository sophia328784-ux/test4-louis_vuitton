.class public Landroidx/media3/exoplayer/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/DefaultRenderersFactory$ExtensionRendererMode;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

.field public final c:J

.field public final d:Llc0;

.field public final e:Z

.field public final f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->a:Landroid/content/Context;

    new-instance v0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->b:Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->c:J

    sget-object p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->f0:Llc0;

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->d:Llc0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->e:Z

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->f:J

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->b:Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    iput-object v3, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->d:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    iget-object v7, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->d:Llc0;

    iput-object v7, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->c:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-wide v3, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->c:J

    iput-wide v3, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->e:J

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->f:Z

    iput-object p1, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->g:Landroid/os/Handler;

    iput-object p2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->h:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    const/16 p2, 0x32

    iput p2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->i:I

    iget-boolean p2, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->e:Z

    iput-boolean p2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->l:Z

    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->f:J

    iput-wide v4, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->m:J

    iget-boolean p2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->b:Z

    const/4 v4, 0x1

    xor-int/2addr p2, v4

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object p2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->g:Landroid/os/Handler;

    if-nez p2, :cond_0

    iget-object v5, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->h:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    if-eqz v5, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->h:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    if-eqz p2, :cond_2

    :cond_1
    move p2, v4

    goto :goto_0

    :cond_2
    move p2, v3

    :goto_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean v4, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->b:Z

    new-instance p2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-direct {p2, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    invoke-direct {p2, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->a()Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    move-result-object v11

    new-instance v4, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object v6, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->b:Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    iget-object v5, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->a:Landroid/content/Context;

    const/4 v8, 0x0

    move-object v9, p1

    move-object v10, p3

    invoke-direct/range {v4 .. v11}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/AudioSink;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance p2, Landroidx/media3/exoplayer/text/TextRenderer;

    move-object/from16 v1, p4

    invoke-direct {p2, v1, p0}, Landroidx/media3/exoplayer/text/TextRenderer;-><init>(Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    move p1, v3

    :goto_1
    const/4 p2, 0x4

    if-ge p1, p2, :cond_3

    new-instance p2, Landroidx/media3/exoplayer/metadata/MetadataRenderer;

    move-object/from16 v1, p5

    invoke-direct {p2, v1, p0}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;-><init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/media3/exoplayer/image/ImageRenderer;

    new-instance p1, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;

    invoke-direct {p1, v2}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/image/ImageRenderer;-><init>(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;Landroidx/media3/exoplayer/image/ImageOutput;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p0, v3, [Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/media3/exoplayer/Renderer;

    return-object p0
.end method

.method public final b(Landroidx/media3/exoplayer/Renderer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
