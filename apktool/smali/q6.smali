.class public final synthetic Lq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lq6;->b:I

    iput-object p1, p0, Lq6;->d:Ljava/lang/Object;

    iput p2, p0, Lq6;->c:I

    iput-object p3, p0, Lq6;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 12
    iput p4, p0, Lq6;->b:I

    iput-object p1, p0, Lq6;->d:Ljava/lang/Object;

    iput-object p2, p0, Lq6;->e:Ljava/lang/Object;

    iput p3, p0, Lq6;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lq6;->b:I

    iget v1, p0, Lq6;->c:I

    iget-object v2, p0, Lq6;->e:Ljava/lang/Object;

    iget-object p0, p0, Lq6;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast v2, Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-interface {v2, p0, v1}, Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;->progress(II)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    check-cast v2, Lcom/lightup/sdk/animation/CreatorProject;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$Companion;

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->n0(Lcom/lightup/sdk/animation/CreatorProject;)V

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    check-cast v2, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    iget v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->a:I

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v2, v0, p0, v1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->V(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object p0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->c:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {p0, v1, v2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->a(ILjava/lang/Object;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    check-cast v2, Landroid/content/IntentSender$SendIntentException;

    sget v0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->j:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroidx/activity/result/ActivityResultRegistry;->b(IILandroid/content/Intent;)Z

    return-void

    :pswitch_4
    check-cast p0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    check-cast v2, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    sget v0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->j:I

    iget-object v0, v2, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroidx/activity/result/ActivityResultRegistry;->a(ILjava/lang/Object;)V

    return-void

    :pswitch_5
    check-cast p0, Landroidx/camera/core/impl/CameraCaptureCallback;

    check-cast v2, Landroidx/camera/core/impl/CameraCaptureResult;

    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureCallback;->b(ILandroidx/camera/core/impl/CameraCaptureResult;)V

    return-void

    :pswitch_6
    check-cast p0, Landroidx/camera/core/impl/CameraCaptureCallback;

    check-cast v2, Landroidx/camera/core/impl/CameraCaptureFailure;

    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureCallback;->c(ILandroidx/camera/core/impl/CameraCaptureFailure;)V

    return-void

    :pswitch_7
    check-cast p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v1, v2}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->b(Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;ILkotlin/jvm/functions/Function0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
