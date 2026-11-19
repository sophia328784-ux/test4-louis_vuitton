.class public final synthetic Lbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IJJLjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lbc;->b:I

    iput-object p6, p0, Lbc;->f:Ljava/lang/Object;

    iput-object p7, p0, Lbc;->c:Ljava/lang/String;

    iput-wide p2, p0, Lbc;->d:J

    iput-wide p4, p0, Lbc;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lbc;->b:I

    iget-object v1, p0, Lbc;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget-wide v3, p0, Lbc;->d:J

    iget-wide v5, p0, Lbc;->e:J

    iget-object v7, p0, Lbc;->c:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->F(JJLjava/lang/String;)V

    return-void

    :pswitch_0
    check-cast v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget-wide v3, p0, Lbc;->d:J

    iget-wide v5, p0, Lbc;->e:J

    iget-object v7, p0, Lbc;->c:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->u(JJLjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
