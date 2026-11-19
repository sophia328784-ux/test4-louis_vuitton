.class public final synthetic Lko0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/exoplayer/video/VideoSink$Listener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoSink$Listener;I)V
    .locals 0

    iput p2, p0, Lko0;->b:I

    iput-object p1, p0, Lko0;->c:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lko0;->b:I

    iget-object p0, p0, Lko0;->c:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->c()V

    return-void

    :pswitch_0
    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
