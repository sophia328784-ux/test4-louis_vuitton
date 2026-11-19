.class public final synthetic Lt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lt6;->b:I

    iput-object p1, p0, Lt6;->d:Ljava/lang/Object;

    iput p2, p0, Lt6;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lt6;->b:I

    const/4 v1, 0x0

    iget v2, p0, Lt6;->c:I

    iget-object p0, p0, Lt6;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->z(Landroid/view/View;IZ)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {p0, v2}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->b(I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    invoke-interface {p0, v1, v2}, Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;->progress(II)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    invoke-static {p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->Q(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-virtual {p0, v2}, Landroidx/camera/core/impl/CameraCaptureCallback;->a(I)V

    return-void

    :pswitch_4
    check-cast p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;

    iget v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->l:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->h:I

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    iput v2, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->l:I

    const-string p0, "BufferedAudioStream"

    const/4 v0, 0x3

    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :goto_0
    return-void

    :pswitch_5
    check-cast p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->f(I)V

    return-void

    :pswitch_6
    check-cast p0, Ljava/util/function/IntConsumer;

    invoke-interface {p0, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
