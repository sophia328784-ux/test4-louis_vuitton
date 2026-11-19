.class public Lcom/sightcall/universal/scenario/steps/DirectCallStep;
.super Lcom/sightcall/universal/scenario/steps/CallStep;
.source "SourceFile"


# static fields
.field private static final PREFIX_DIRECT_ACCEPT:[B

.field private static final PREFIX_DIRECT_DECLINE:[B

.field private static final PREFIX_DIRECT_REQUEST:Ljava/lang/String; = "@DIRECT_REQUEST@"


# instance fields
.field private final uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "@DIRECT_ACCEPT@"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/scenario/steps/DirectCallStep;->PREFIX_DIRECT_ACCEPT:[B

    const-string v0, "@DIRECT_DECLINE@"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/scenario/steps/DirectCallStep;->PREFIX_DIRECT_DECLINE:[B

    return-void
.end method

.method private constructor <init>(Lcom/sightcall/universal/model/Session;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;-><init>(Lcom/sightcall/universal/model/Session;)V

    iput-object p2, p0, Lcom/sightcall/universal/scenario/steps/DirectCallStep;->uid:Ljava/lang/String;

    return-void
.end method

.method public static with(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/steps/DirectCallStep;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->calleeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->uid()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v1, Lcom/sightcall/universal/scenario/steps/DirectCallStep;

    invoke-direct {v1, p0, v0}, Lcom/sightcall/universal/scenario/steps/DirectCallStep;-><init>(Lcom/sightcall/universal/model/Session;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public execute()V
    .locals 4

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "execute() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/DirectCallStep;->uid:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@DIRECT_REQUEST@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;-><init>(Landroid/content/Context;Lcom/sightcall/universal/model/Session;)V

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->sendDataChannel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V

    sget-object v0, Lcom/sightcall/universal/scenario/steps/DirectCallStep$1;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/StatusEvent;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->accept(Lnet/rtccloud/sdk/Call;)V

    return-void
.end method

.method public onDataChannelMessage(Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->onDataChannelMessage(Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;)V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->payload()[B

    move-result-object p1

    sget-object v0, Lcom/sightcall/universal/scenario/steps/DirectCallStep;->PREFIX_DIRECT_ACCEPT:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sightcall/universal/scenario/steps/DirectCallStep;->PREFIX_DIRECT_DECLINE:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string v0, "Remote user declined direct call"

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->interrupt()V

    :cond_1
    :goto_0
    return-void
.end method
