.class Lcom/sightcall/universal/internal/ui/CallActivity$5;
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

.field final synthetic val$switchExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity$5;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity$5;->val$switchExtra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    invoke-static {}, Lcom/sightcall/capabilities/SwitchRequest;->getInstance()Lcom/sightcall/capabilities/SwitchRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity$5;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-static {v1}, Lcom/sightcall/universal/internal/ui/CallActivity;->Y(Lcom/sightcall/universal/internal/ui/CallActivity;)Lnet/rtccloud/sdk/Call;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->rtcc()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User;->uidLocal()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity$5;->val$switchExtra:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/sightcall/capabilities/SwitchRequest;->accept(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDeny()V
    .locals 1

    invoke-static {}, Lcom/sightcall/capabilities/SwitchRequest;->getInstance()Lcom/sightcall/capabilities/SwitchRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity$5;->val$switchExtra:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sightcall/capabilities/SwitchRequest;->deny(Ljava/lang/String;)V

    return-void
.end method
