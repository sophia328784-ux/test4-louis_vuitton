.class Lcom/sightcall/universal/internal/ui/CallActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/CallActivity;->onForwardInbandDataChannel(Lcom/sightcall/common/DataChannelAction;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/CallActivity;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity$4;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity$4;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->Y(Lcom/sightcall/universal/internal/ui/CallActivity;)Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(Z)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity$4;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->Y(Lcom/sightcall/universal/internal/ui/CallActivity;)Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity$4;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->Y(Lcom/sightcall/universal/internal/ui/CallActivity;)Lnet/rtccloud/sdk/Call;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ConferenceModule;->myself()Lnet/rtccloud/sdk/Participant;

    move-result-object p0

    invoke-virtual {p0, v1}, Lnet/rtccloud/sdk/Participant;->mute(Z)V

    :cond_0
    return-void
.end method

.method public onDeny()V
    .locals 0

    return-void
.end method
