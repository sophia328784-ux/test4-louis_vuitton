.class public final synthetic Lvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic d:Landroidx/media3/exoplayer/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;I)V
    .locals 0

    iput p3, p0, Lvb;->b:I

    iput-object p1, p0, Lvb;->c:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lvb;->d:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lvb;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lvb;->c:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lvb;->d:Landroidx/media3/exoplayer/DecoderCounters;

    monitor-enter p0

    monitor-exit p0

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->t(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lvb;->c:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object p0, p0, Lvb;->d:Landroidx/media3/exoplayer/DecoderCounters;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->j(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
