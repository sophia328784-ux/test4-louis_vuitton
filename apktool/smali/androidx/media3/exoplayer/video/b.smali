.class public final synthetic Landroidx/media3/exoplayer/video/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/video/b;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/video/b;->c:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/video/b;->b:I

    iget-object p0, p0, Landroidx/media3/exoplayer/video/b;->c:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->b:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->h:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->d()V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->b:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->h:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
