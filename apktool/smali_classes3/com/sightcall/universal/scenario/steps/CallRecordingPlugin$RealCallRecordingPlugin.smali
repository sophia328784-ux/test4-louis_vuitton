.class Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;
.super Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/agent/CreateRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealCallRecordingPlugin"
.end annotation


# instance fields
.field private final autoStart:Z

.field private recording:Lcom/sightcall/universal/agent/recording/RecordingV3Entity;

.field private final step:Lcom/sightcall/universal/scenario/steps/CallStep;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/scenario/steps/CallStep;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;->step:Lcom/sightcall/universal/scenario/steps/CallStep;

    iput-boolean p2, p0, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;->autoStart:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/scenario/steps/CallStep;ZI)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;-><init>(Lcom/sightcall/universal/scenario/steps/CallStep;Z)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$1;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/StatusEvent;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;->recording:Lcom/sightcall/universal/agent/recording/RecordingV3Entity;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;->step:Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/agent/UniversalAgent;->stopRecording(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;->step:Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/sightcall/universal/agent/UniversalAgent;->createRecording(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/agent/CreateRecordingCallback;)V

    return-void
.end method

.method public onCreateRecordingError(Lcom/sightcall/universal/agent/CreateRecordingCallback$Error;)V
    .locals 0

    return-void
.end method

.method public onCreateRecordingSuccess(Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;)V
    .locals 3

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;->step:Lcom/sightcall/universal/scenario/steps/CallStep;

    sget-object v2, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {v1, v2}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;->recording()Lcom/sightcall/universal/agent/recording/RecordingV3Entity;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;->recording:Lcom/sightcall/universal/agent/recording/RecordingV3Entity;

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;->recording()Lcom/sightcall/universal/agent/recording/RecordingV3Entity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/recording/RecordingV3Entity;->getMode()I

    move-result v1

    invoke-static {v1}, Lnet/rtccloud/sdk/RecordingModule$Mode;->getMode(I)Lnet/rtccloud/sdk/RecordingModule$Mode;

    move-result-object v1

    iget-boolean p0, p0, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;->autoStart:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ConferenceModule;->recording()Lnet/rtccloud/sdk/RecordingModule;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;->recording()Lcom/sightcall/universal/agent/recording/RecordingV3Entity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/recording/RecordingV3Entity;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lnet/rtccloud/sdk/RecordingModule;->start(Ljava/lang/String;Lnet/rtccloud/sdk/RecordingModule$Mode;)V

    return-void

    :cond_1
    sput-object p1, Lcom/sightcall/universal/scenario/steps/CallStep;->success:Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;

    sput-object v1, Lcom/sightcall/universal/scenario/steps/CallStep;->mode:Lnet/rtccloud/sdk/RecordingModule$Mode;

    :cond_2
    :goto_0
    return-void
.end method

.method public onRecordingEvent(Lnet/rtccloud/sdk/event/call/RecordingEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;->recording:Lcom/sightcall/universal/agent/recording/RecordingV3Entity;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/RecordingEvent;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;->step:Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/agent/UniversalAgent;->startRecording(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUnbind()V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->unregister(Ljava/lang/Object;)V

    return-void
.end method
