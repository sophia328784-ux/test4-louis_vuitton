.class Lcom/sightcall/universal/internal/ui/CallActivity$3;
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

.field final synthetic val$myself:Lnet/rtccloud/sdk/Participant;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallActivity;Lnet/rtccloud/sdk/Participant;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity$3;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity$3;->val$myself:Lnet/rtccloud/sdk/Participant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity$3;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->Y(Lcom/sightcall/universal/internal/ui/CallActivity;)Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(Z)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity$3;->val$myself:Lnet/rtccloud/sdk/Participant;

    invoke-virtual {p0, v1}, Lnet/rtccloud/sdk/Participant;->mute(Z)V

    return-void
.end method

.method public onDeny()V
    .locals 0

    return-void
.end method
