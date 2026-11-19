.class final Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/DefaultVideoSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameRendererImpl"
.end annotation


# instance fields
.field public a:Landroidx/media3/common/Format;

.field public final synthetic b:Landroidx/media3/exoplayer/video/DefaultVideoSink;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/DefaultVideoSink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->b:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->b:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iget-object v1, v0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/media3/exoplayer/video/b;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/media3/exoplayer/video/b;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;->e()V

    return-void
.end method

.method public final b(Landroidx/media3/common/VideoSize;)V
    .locals 2

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget v1, p1, Landroidx/media3/common/VideoSize;->a:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->u:I

    iget v1, p1, Landroidx/media3/common/VideoSize;->b:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->v:I

    const-string v1, "video/raw"

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->a:Landroidx/media3/common/Format;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->b:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media3/exoplayer/video/c;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/c;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;Landroidx/media3/common/VideoSize;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(JJZ)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->b:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    if-eqz p5, :cond_0

    iget-object p5, v0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->e:Landroid/view/Surface;

    if-eqz p5, :cond_0

    iget-object p5, v0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media3/exoplayer/video/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/video/b;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;I)V

    invoke-interface {p5, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->a:Landroidx/media3/common/Format;

    if-nez p0, :cond_1

    new-instance p0, Landroidx/media3/common/Format$Builder;

    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    new-instance p5, Landroidx/media3/common/Format;

    invoke-direct {p5, p0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object v6, p5

    goto :goto_0

    :cond_1
    move-object v6, p0

    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->j:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    const/4 v7, 0x0

    move-wide v4, p1

    move-wide v2, p3

    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->d(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    iget-object p0, v0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;

    invoke-interface {p0, v4, v5}, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;->f(J)V

    return-void
.end method
