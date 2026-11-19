.class public final synthetic Lxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    iput p4, p0, Lxb;->b:I

    iput-object p1, p0, Lxb;->d:Ljava/lang/Object;

    iput-wide p2, p0, Lxb;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lxb;->b:I

    iget-wide v1, p0, Lxb;->c:J

    iget-object p0, p0, Lxb;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/batch/android/v0/l;

    invoke-static {p0, v1, v2}, Lcom/batch/android/v0/l;->k(Lcom/batch/android/v0/l;J)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCam$VideoCallback;

    invoke-interface {p0, v1, v2}, Lcom/perfectcorp/perfectlib/MakeupCam$VideoCallback;->onFrameEncoded(J)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->o(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
