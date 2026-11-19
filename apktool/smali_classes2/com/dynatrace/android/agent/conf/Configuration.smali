.class public Lcom/dynatrace/android/agent/conf/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/dynatrace/android/agent/conf/AgentMode;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:[Ljava/lang/String;

.field public final p:[Ljava/lang/String;

.field public final q:[Ljava/lang/String;

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Lcom/dynatrace/agent/common/InstrumentationFlavor;

.field public final v:Z

.field public final w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/conf/AgentMode;ZIIZZZZZZZ[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZZLcom/dynatrace/agent/common/InstrumentationFlavor;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynatrace/android/agent/conf/Configuration;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dynatrace/android/agent/conf/Configuration;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dynatrace/android/agent/conf/Configuration;->d:Lcom/dynatrace/android/agent/conf/AgentMode;

    iput-boolean p5, p0, Lcom/dynatrace/android/agent/conf/Configuration;->e:Z

    iput p6, p0, Lcom/dynatrace/android/agent/conf/Configuration;->f:I

    iput p7, p0, Lcom/dynatrace/android/agent/conf/Configuration;->g:I

    iput-boolean p8, p0, Lcom/dynatrace/android/agent/conf/Configuration;->h:Z

    iput-boolean p9, p0, Lcom/dynatrace/android/agent/conf/Configuration;->i:Z

    iput-boolean p10, p0, Lcom/dynatrace/android/agent/conf/Configuration;->j:Z

    iput-boolean p11, p0, Lcom/dynatrace/android/agent/conf/Configuration;->k:Z

    iput-boolean p12, p0, Lcom/dynatrace/android/agent/conf/Configuration;->l:Z

    iput-boolean p13, p0, Lcom/dynatrace/android/agent/conf/Configuration;->m:Z

    iput-boolean p14, p0, Lcom/dynatrace/android/agent/conf/Configuration;->n:Z

    iput-object p15, p0, Lcom/dynatrace/android/agent/conf/Configuration;->o:[Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->p:[Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->q:[Ljava/lang/String;

    move/from16 p1, p18

    iput-boolean p1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->r:Z

    move/from16 p1, p19

    iput-boolean p1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->s:Z

    move/from16 p1, p20

    iput-boolean p1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->t:Z

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->u:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    move/from16 p1, p22

    iput-boolean p1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->v:Z

    move/from16 p1, p23

    iput p1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->w:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/agent/OneAgentConfiguration;
    .locals 10

    new-instance v0, Lcom/dynatrace/agent/OneAgentConfiguration;

    iget v8, p0, Lcom/dynatrace/android/agent/conf/Configuration;->w:I

    iget-object v9, p0, Lcom/dynatrace/android/agent/conf/Configuration;->u:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    const-string v1, "8.343.1.1038"

    iget-object v2, p0, Lcom/dynatrace/android/agent/conf/Configuration;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/dynatrace/android/agent/conf/Configuration;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/dynatrace/android/agent/conf/Configuration;->i:Z

    iget-boolean v5, p0, Lcom/dynatrace/android/agent/conf/Configuration;->j:Z

    iget-boolean v6, p0, Lcom/dynatrace/android/agent/conf/Configuration;->l:Z

    iget-boolean v7, p0, Lcom/dynatrace/android/agent/conf/Configuration;->m:Z

    invoke-direct/range {v0 .. v9}, Lcom/dynatrace/agent/OneAgentConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZILcom/dynatrace/agent/common/InstrumentationFlavor;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Configuration{applicationId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', appIdEncoded=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', beaconUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->d:Lcom/dynatrace/android/agent/conf/AgentMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", certificateValidation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyStore=null, keyManagers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", graceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", waitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sendEmptyAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", namePrivacy=false, applicationMonitoring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", activityMonitoring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", crashReporting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nativeCrashReporting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", anrReporting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", webRequestTiming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", monitoredDomains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->o:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", monitoredHttpsDomains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->p:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", urlFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->q:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hybridApp=false, fileDomainCookies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", debugLogLevel=false, autoStart=false, communicationProblemListener=null, userOptIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startupLoadBalancing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startupWithGrailEnabled=false, instrumentationFlavor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->u:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionReplayComponentProvider=null, isRageTapDetectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/Configuration;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoUserActionModifier=null, httpFactory=null, eventThrottlingLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/dynatrace/android/agent/conf/Configuration;->w:I

    const-string v1, ", enableOfflineRecovery=false}"

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
