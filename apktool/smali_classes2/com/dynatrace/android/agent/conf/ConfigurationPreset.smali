.class public Lcom/dynatrace/android/agent/conf/ConfigurationPreset;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/common/InstrumentationFlavor;->PLAIN:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/dynatrace/android/agent/conf/Configuration;
    .locals 25

    new-instance v0, Lcom/dynatrace/android/agent/conf/ConfigurationPreset;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPreset;-><init>()V

    new-instance v1, Lcom/dynatrace/android/agent/conf/Configuration;

    sget-object v5, Lcom/dynatrace/android/agent/conf/AgentMode;->SAAS:Lcom/dynatrace/android/agent/conf/AgentMode;

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    sget-object v22, Lcom/dynatrace/agent/common/InstrumentationFlavor;->PLAIN:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    const/16 v23, 0x1

    const/16 v24, 0x3e8

    move-object/from16 v16, v2

    const-string v2, ""

    move-object/from16 v17, v3

    const-string v3, ""

    const-string v4, ""

    const/4 v6, 0x1

    const/16 v7, 0x1f4

    const v8, 0xea60

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v1 .. v24}, Lcom/dynatrace/android/agent/conf/Configuration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/conf/AgentMode;ZIIZZZZZZZ[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZZLcom/dynatrace/agent/common/InstrumentationFlavor;ZI)V

    return-object v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "ConfigurationPreset{, graceTime=500, waitTime=60000, applicationMonitoring=true, activityMonitoring=true, certificateValidation=true, sendEmptyActions=true, namePrivacy=false, crashReporting=true, nativeCrashReporting=true, anrReporting=true, webRequestTiming=true, monitoredDomains="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", monitoredHttpsDomains="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", urlFilters="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hybridApp=false, fileDomainCookies=true, debugLogLevel=false, autoStart=false, userOptIn=false, startupLoadBalancing=false, startupWithGrailEnabled=false, instrumentationFlavor="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/dynatrace/agent/common/InstrumentationFlavor;->PLAIN:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sessionReplayComponentProvider=null, isRageTapDetectionEnabled=true, eventThrottlingLimit=1000, replaySyncSizeThresholdKb=100, enableOfflineRecovery=false}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
