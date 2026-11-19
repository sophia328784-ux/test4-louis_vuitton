.class public Lcom/sightcall/universal/scenario/steps/ConsentStep;
.super Lcom/sightcall/universal/scenario/Step;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/scenario/Step$WithSession;


# instance fields
.field private final consent:Lcom/sightcall/session/Reference$UseCase$Consent;

.field private final session:Lcom/sightcall/universal/model/Session;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/model/Session;Lcom/sightcall/session/Reference$UseCase$Consent;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/Step;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/ConsentStep;->session:Lcom/sightcall/universal/model/Session;

    iput-object p2, p0, Lcom/sightcall/universal/scenario/steps/ConsentStep;->consent:Lcom/sightcall/session/Reference$UseCase$Consent;

    return-void
.end method

.method public static nextStep(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/Step;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object v1, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v1

    sget-object v2, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/DisplayNameStep;->nextStep(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/Step;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->guest()Lcom/sightcall/universal/agent/Usecase$Guest;

    move-result-object v0

    iget-object v0, v0, Lcom/sightcall/universal/agent/Usecase$User;->consent:Lcom/sightcall/session/Reference$UseCase$Consent;

    iget-object v1, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->ignoreConsent()Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    new-instance v1, Lcom/sightcall/universal/scenario/steps/ConsentStep;

    invoke-direct {v1, p0, v0}, Lcom/sightcall/universal/scenario/steps/ConsentStep;-><init>(Lcom/sightcall/universal/model/Session;Lcom/sightcall/session/Reference$UseCase$Consent;)V

    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/DisplayNameStep;->nextStep(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/Step;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBind(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onConsentResultEvent(Lcom/sightcall/universal/consent/ConsentResultEvent;)V
    .locals 3
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/ConsentStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v2, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-eq v0, v2, :cond_4

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/Usecase;->guest()Lcom/sightcall/universal/agent/Usecase$Guest;

    move-result-object v0

    iget-object v0, v0, Lcom/sightcall/universal/agent/Usecase$User;->consent:Lcom/sightcall/session/Reference$UseCase$Consent;

    invoke-virtual {p1}, Lcom/sightcall/universal/consent/ConsentResultEvent;->consent()Lcom/sightcall/session/Reference$UseCase$Consent;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/ConsentStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {v0, v1, p1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onConsentAction(Lcom/sightcall/universal/model/Session;Lcom/sightcall/session/Reference$UseCase$Consent;)V

    iget-object p1, p1, Lcom/sightcall/session/Reference$UseCase$Consent;->status:Lcom/sightcall/session/Reference$UseCase$Consent$Status;

    sget-object v0, Lcom/sightcall/session/Reference$UseCase$Consent$Status$Accepted;->INSTANCE:Lcom/sightcall/session/Reference$UseCase$Consent$Status$Accepted;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string v0, "Consent accepted"

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/ConsentStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-static {p1}, Lcom/sightcall/universal/scenario/steps/DisplayNameStep;->nextStep(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/Step;

    move-result-object p1

    filled-new-array {p1}, [Lcom/sightcall/universal/scenario/Step;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->success([Lcom/sightcall/universal/scenario/Step;)V

    return-void

    :cond_1
    sget-object v0, Lcom/sightcall/session/Reference$UseCase$Consent$Status$Refused;->INSTANCE:Lcom/sightcall/session/Reference$UseCase$Consent$Status$Refused;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->unbindService()V

    const-string p1, "Consent refused"

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->failure(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "Consent not matching with current configuration"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "Agent Consent Result"

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onUnbind()V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 2

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->bindService()V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/consent/ConsentRequestEvent;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/ConsentStep;->consent:Lcom/sightcall/session/Reference$UseCase$Consent;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/consent/ConsentRequestEvent;-><init>(Lcom/sightcall/session/Reference$UseCase$Consent;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public session()Lcom/sightcall/universal/model/Session;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/ConsentStep;->session:Lcom/sightcall/universal/model/Session;

    return-object p0
.end method
