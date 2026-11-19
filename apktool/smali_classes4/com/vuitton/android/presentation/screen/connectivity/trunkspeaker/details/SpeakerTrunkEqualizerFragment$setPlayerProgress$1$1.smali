.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$setPlayerProgress$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/core/listener/LPDevicePlayerListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$setPlayerProgress$1$1",
        "Lcom/linkplay/core/listener/LPDevicePlayerListener;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$setPlayerProgress$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$setPlayerProgress$1$1;->b:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$setPlayerProgress$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->register(Lcom/linkplay/lpmdpkit/observer/LPDeviceBaseObservable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$setPlayerProgress$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Laa0;

    const/16 v2, 0x19

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$setPlayerProgress$1$1;->b:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1, p1, p0, v2}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
