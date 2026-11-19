.class public final synthetic Lqr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lqr;->b:I

    iput-object p1, p0, Lqr;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p0, Lqr;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object p0, p0, Lqr;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->M:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x0

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_0

    goto :goto_3

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Li01;

    invoke-direct {v1, p1, v0}, Li01;-><init>(ILcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->T()V

    goto :goto_3

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->S()V

    monitor-enter v0

    :try_start_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v1, Li01;

    invoke-direct {v1, v2, v0}, Li01;-><init>(ILcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_2
    monitor-exit v0

    :goto_3
    return p1

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_0
    check-cast p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;

    sget v0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->n:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v0, "handle delay message"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, v2, v3}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->w(Lcom/kakao/sdk/common/model/ClientError;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
