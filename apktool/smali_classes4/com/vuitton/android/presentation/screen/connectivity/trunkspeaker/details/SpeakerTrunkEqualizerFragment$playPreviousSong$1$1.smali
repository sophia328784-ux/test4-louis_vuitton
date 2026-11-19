.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$playPreviousSong$1$1;
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
        "com/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$playPreviousSong$1$1",
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


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$playPreviousSong$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$playPreviousSong$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Li01;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Li01;-><init>(ILcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->M:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$playPreviousSong$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->S()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->T()V

    return-void
.end method
