.class public Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;
.super Lcom/sightcall/universal/scenario/steps/AcdCallStep;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;
.implements Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;


# static fields
.field private static final PREFIX_INCOMING_REQUEST:Ljava/lang/String; = "@INCOMING_REQUEST@"


# instance fields
.field private httpAcdRequest:Lcom/sightcall/universal/guest/HttpAcdRequest;

.field private final partner:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/model/Session;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/AcdCallStep;-><init>(Lcom/sightcall/universal/model/Session;)V

    iput-object p2, p0, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;->partner:Ljava/lang/String;

    return-void
.end method

.method private handleHttpAgentRequestResponse(Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;)V
    .locals 4

    new-instance v0, Lcom/sightcall/universal/guest/HttpAcdRequest;

    iget-object v1, p1, Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;->partner:Ljava/lang/String;

    iget v3, p1, Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;->estimatedTime:I

    iget-object p1, p1, Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;->status:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sightcall/universal/guest/HttpAcdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;->httpAcdRequest:Lcom/sightcall/universal/guest/HttpAcdRequest;

    invoke-virtual {v0}, Lcom/sightcall/universal/guest/HttpAcdRequest;->isPending()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;->interrupt()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;->httpAcdRequest:Lcom/sightcall/universal/guest/HttpAcdRequest;

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public agentRequest()Lcom/sightcall/universal/guest/HttpAcdRequest;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;->httpAcdRequest:Lcom/sightcall/universal/guest/HttpAcdRequest;

    return-object p0
.end method

.method public cancelAcd()V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;->interrupt()V

    return-void
.end method

.method public execute()V
    .locals 3

    invoke-super {p0}, Lcom/sightcall/universal/scenario/steps/AcdCallStep;->execute()V

    invoke-static {}, Lcom/sightcall/universal/Universal;->guest()Lcom/sightcall/universal/guest/UniversalGuest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;->partner:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/sightcall/universal/guest/UniversalGuest;->requestAgent(Lcom/sightcall/universal/model/Session;Ljava/lang/String;Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;)V

    return-void
.end method

.method public interrupt()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;->httpAcdRequest:Lcom/sightcall/universal/guest/HttpAcdRequest;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->guest()Lcom/sightcall/universal/guest/UniversalGuest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p0}, Lcom/sightcall/universal/guest/UniversalGuest;->cancelAgent(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/guest/HttpAcdRequest;Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;->httpAcdRequest:Lcom/sightcall/universal/guest/HttpAcdRequest;

    :cond_0
    invoke-super {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->interrupt()V

    return-void
.end method

.method public onBind(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->onBind(Lcom/sightcall/universal/scenario/Scenario;)V

    return-void
.end method

.method public onCancelAgentError()V
    .locals 0

    return-void
.end method

.method public onCancelAgentSuccess()V
    .locals 0

    return-void
.end method

.method public onDataChannelMessage(Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/steps/AcdCallStep;->onDataChannelMessage(Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;)V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->payload()[B

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "@INCOMING_REQUEST@"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x12

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;

    invoke-static {v0, p1}, Lcom/sightcall/universal/model/Moshi;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;->handleHttpAgentRequestResponse(Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestAgentError()V
    .locals 2

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    const-string v1, "onRequestAgentError"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;->interrupt()V

    return-void
.end method

.method public onRequestAgentSuccess(Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;->handleHttpAgentRequestResponse(Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;)V

    return-void
.end method
