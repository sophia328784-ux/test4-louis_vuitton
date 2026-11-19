.class public Lcom/sightcall/universal/model/Session;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/model/Session$Role;
    }
.end annotation


# instance fields
.field public final config:Lcom/sightcall/universal/model/Config;

.field public final parameters:Lcom/sightcall/universal/model/CallParameters;

.field public final remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

.field public rtccJwt:Ljava/lang/String;

.field public final usecase:Lcom/sightcall/universal/agent/Usecase;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/model/Config;Lcom/sightcall/session/Reference;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/model/Session;->rtccJwt:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sightcall/universal/util/ConfigUtilsKt;->updateFromReference(Lcom/sightcall/universal/model/Config;Lcom/sightcall/session/Reference;)Lcom/sightcall/universal/model/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-static {p2, p1, p3}, Lcom/sightcall/universal/agent/Usecase;->from(Lcom/sightcall/session/Reference;Lcom/sightcall/universal/model/Config;Z)Lcom/sightcall/universal/agent/Usecase;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-static {v0, p1}, Lcom/sightcall/universal/model/Session;->initialRemoteState(Lcom/sightcall/universal/model/Config;Lcom/sightcall/universal/agent/Usecase;)Lcom/sightcall/universal/internal/model/RemoteState;

    move-result-object p3

    iput-object p3, p0, Lcom/sightcall/universal/model/Session;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-static {v0, p1}, Lcom/sightcall/universal/model/Session;->initialCallParameters(Lcom/sightcall/universal/model/Config;Lcom/sightcall/universal/agent/Usecase;)Lcom/sightcall/universal/model/CallParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object p1, p2, Lcom/sightcall/session/Reference;->provider:Lcom/sightcall/session/Reference$Provider;

    iget-object p1, p1, Lcom/sightcall/session/Reference$Provider;->rtccJwtAuth:Ljava/lang/String;

    iput-object p1, p0, Lcom/sightcall/universal/model/Session;->rtccJwt:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sightcall/universal/model/Config;Lcom/sightcall/universal/agent/Usecase;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/sightcall/universal/model/Session;->rtccJwt:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    .line 40
    iput-object p2, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    .line 41
    invoke-static {p1, p2}, Lcom/sightcall/universal/model/Session;->initialRemoteState(Lcom/sightcall/universal/model/Config;Lcom/sightcall/universal/agent/Usecase;)Lcom/sightcall/universal/internal/model/RemoteState;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/model/Session;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    .line 42
    invoke-static {p1, p2}, Lcom/sightcall/universal/model/Session;->initialCallParameters(Lcom/sightcall/universal/model/Config;Lcom/sightcall/universal/agent/Usecase;)Lcom/sightcall/universal/model/CallParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    return-void
.end method

.method public static get()Lcom/sightcall/universal/model/Session;
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/UniversalScenario;->get()Lcom/sightcall/universal/scenario/Scenario;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Scenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/sightcall/universal/scenario/Step$WithSession;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/sightcall/universal/scenario/Step$WithSession;

    invoke-interface {v0}, Lcom/sightcall/universal/scenario/Step$WithSession;->session()Lcom/sightcall/universal/model/Session;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private static initialCallParameters(Lcom/sightcall/universal/model/Config;Lcom/sightcall/universal/agent/Usecase;)Lcom/sightcall/universal/model/CallParameters;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/model/CallParameters;

    invoke-direct {v0}, Lcom/sightcall/universal/model/CallParameters;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/agent/Usecase;->isUsbCameraAllowed(Lcom/sightcall/universal/model/Config;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/sightcall/universal/model/CallParameters;->allowUsbCamera:Z

    return-object v0
.end method

.method private static initialRemoteState(Lcom/sightcall/universal/model/Config;Lcom/sightcall/universal/agent/Usecase;)Lcom/sightcall/universal/internal/model/RemoteState;
    .locals 3

    new-instance v0, Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/model/RemoteState;-><init>()V

    sget-object v1, Lcom/sightcall/universal/model/Session$1;->$SwitchMap$com$sightcall$universal$model$Session$Role:[I

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Usecase;->agent()Lcom/sightcall/universal/agent/Usecase$Agent;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Usecase;->guest()Lcom/sightcall/universal/agent/Usecase$Guest;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$User;->videoCapture:Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_5

    sget-object p1, Lcom/sightcall/universal/model/Session$1;->$SwitchMap$com$sightcall$universal$agent$Usecase$VideoCapture:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    goto :goto_2

    :cond_3
    sget-object p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->BACK:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/model/RemoteState;->cameraSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)V

    return-object v0

    :cond_4
    sget-object p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->FRONT:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/model/RemoteState;->cameraSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)V

    :cond_5
    :goto_2
    return-object v0
.end method


# virtual methods
.method public appId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->appId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public buttonsLocal()[Lcom/sightcall/universal/internal/view/CallButton;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/model/Session$1;->$SwitchMap$com$sightcall$universal$model$Session$Role:[I

    iget-object v1, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->ATTENDEE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/agent/Usecase;->buttons(Lcom/sightcall/universal/agent/Usecase$Bar$Role;)[Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->MOBILE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/agent/Usecase;->buttons(Lcom/sightcall/universal/agent/Usecase$Bar$Role;)[Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->LOCAL:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/agent/Usecase;->buttons(Lcom/sightcall/universal/agent/Usecase$Bar$Role;)[Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object p0

    return-object p0
.end method

.method public buttonsRemote()[Lcom/sightcall/universal/internal/view/CallButton;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/model/Session$1;->$SwitchMap$com$sightcall$universal$model$Session$Role:[I

    iget-object v1, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->REMOTE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/agent/Usecase;->buttons(Lcom/sightcall/universal/agent/Usecase$Bar$Role;)[Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object p0

    return-object p0
.end method

.method public caseReportId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->caseReportId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public config()Lcom/sightcall/universal/model/Config;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    return-object p0
.end method

.method public environment()Lcom/sightcall/universal/api/Environment;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object p0

    return-object p0
.end method

.method public hap()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->hap()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public mute()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/agent/Usecase;->user(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/agent/Usecase$User;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase$User;->muted:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public reference()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->reference()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reportChatContent()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->reportChatContent()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public requiresMvs()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase;->recording()Lcom/sightcall/universal/agent/Usecase$Recording;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public rtccToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->guestReady()Lcom/sightcall/universal/fcm/messages/GuestReady;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/fcm/messages/GuestReady;->rtccToken()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public uid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->GUEST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->callDistribution()Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->ACD:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    if-ne v0, v1, :cond_0

    const-string p0, "acd_external"

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->login()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->uid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public videoCapture()Lcom/sightcall/universal/agent/Usecase$VideoCapture;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/agent/Usecase;->user(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/agent/Usecase$User;

    move-result-object p0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$User;->videoCapture:Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    return-object p0
.end method

.method public videoOutStartup()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/agent/Usecase;->user(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/agent/Usecase$User;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase$User;->camera:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public videoProfile()Lcom/sightcall/universal/agent/Usecase$VideoProfile;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$VideoProfile;->MD:Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    iget-object v1, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1, p0}, Lcom/sightcall/universal/agent/Usecase;->user(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/agent/Usecase$User;

    move-result-object p0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$User;->videoProfile:Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method
