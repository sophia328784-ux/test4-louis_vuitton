.class Lnet/rtccloud/sdk/AudioModule$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/AudioModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/AudioModule;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/AudioModule;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/AudioModule$1;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule$1;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-static {p1}, Lnet/rtccloud/sdk/AudioModule;->i(Lnet/rtccloud/sdk/AudioModule;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule$1;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-static {p1}, Lnet/rtccloud/sdk/AudioModule;->j(Lnet/rtccloud/sdk/AudioModule;)Z

    move-result p1

    iget-object v0, p0, Lnet/rtccloud/sdk/AudioModule$1;->this$0:Lnet/rtccloud/sdk/AudioModule;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lnet/rtccloud/sdk/AudioModule;->o(Lnet/rtccloud/sdk/AudioModule;)V

    return-void

    :cond_0
    invoke-static {v0}, Lnet/rtccloud/sdk/AudioModule;->n(Lnet/rtccloud/sdk/AudioModule;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule$1;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-static {p1}, Lnet/rtccloud/sdk/AudioModule;->k(Lnet/rtccloud/sdk/AudioModule;)Lnet/rtccloud/sdk/AudioModule$Native;

    move-result-object v0

    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule$1;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-static {p1}, Lnet/rtccloud/sdk/AudioModule;->h(Lnet/rtccloud/sdk/AudioModule;)I

    move-result v1

    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule$1;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-static {p1}, Lnet/rtccloud/sdk/AudioModule;->g(Lnet/rtccloud/sdk/AudioModule;)I

    move-result v2

    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule$1;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-static {p1}, Lnet/rtccloud/sdk/AudioModule;->m(Lnet/rtccloud/sdk/AudioModule;)I

    move-result v3

    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule$1;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-static {p1}, Lnet/rtccloud/sdk/AudioModule;->l(Lnet/rtccloud/sdk/AudioModule;)I

    move-result v4

    invoke-static {}, Lnet/rtccloud/sdk/util/AudioWorkaroundKt;->isEchoCancelerEnabled()Z

    move-result v5

    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule$1;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/AudioModule;->rtcc()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result v6

    invoke-interface/range {v0 .. v6}, Lnet/rtccloud/sdk/AudioModule$Native;->start(IIIIZZ)V

    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule$1;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-static {p1}, Lnet/rtccloud/sdk/AudioModule;->e(Lnet/rtccloud/sdk/AudioModule;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-static {p1}, Lnet/rtccloud/sdk/util/AudioWorkaroundKt;->setModeInCommunication(Landroid/media/AudioManager;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule$1;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-static {p1}, Lnet/rtccloud/sdk/AudioModule;->f(Lnet/rtccloud/sdk/AudioModule;)Lnet/rtccloud/sdk/Call;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call$Parameters;->audio()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule$1;->this$0:Lnet/rtccloud/sdk/AudioModule;

    invoke-virtual {p0, p2}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(Z)V

    :cond_1
    return-void
.end method
