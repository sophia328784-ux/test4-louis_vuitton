.class public Lcom/networkbench/agent/impl/util/af;
.super Lcom/networkbench/agent/impl/harvest/HarvestAdapter;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SavedState"

.field private static final b:Lcom/networkbench/agent/impl/c/e;

.field private static final c:Ljava/lang/String; = "isNewPageCalcAlgoEnabled"

.field private static final e:Ljava/lang/String; = "_main"


# instance fields
.field private final d:Landroid/content/Context;

.field private f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

.field private g:Ljava/lang/Float;

.field private final h:Landroid/content/SharedPreferences;

.field private final i:Landroid/content/SharedPreferences$Editor;

.field private final j:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/af;->b:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/HarvestAdapter;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    return-void
.end method

.method private R()I
    .locals 1

    const-string v0, "harvestIntervalOnIdleInSeconds"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Lcom/networkbench/agent/impl/plugin/c/b;)V
    .locals 3

    .line 177
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/c/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SavedState"

    if-eqz v0, :cond_0

    .line 178
    const-string p0, "logTrackConfig is empty, not save"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "save log config:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/c/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "logTrackConfig"

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/c/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;)V
    .locals 3

    .line 164
    sget-object v0, Lcom/networkbench/agent/impl/util/af;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saving sessionConfig: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 165
    const-string v0, "replayThreshold"

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->getReplayThreshold()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    .line 166
    const-string v0, "replayQuality"

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->getReplayQuality()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    .line 167
    const-string v0, "replayUploadType"

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->getReplayUploadType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    .line 168
    const-string v0, "replayCacheSize"

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->getReplayCacheSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    .line 169
    const-string v0, "maskInputEnabled"

    iget-boolean v1, p1, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskInputEnabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Z)V

    .line 170
    const-string v0, "maskTextEnabled"

    iget-boolean v1, p1, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskTextEnabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Z)V

    .line 171
    const-string v0, "maskImageEnabled"

    iget-boolean v1, p1, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskImageEnabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Z)V

    .line 172
    const-string v0, "maskPageBlacklist"

    iget-object v1, p1, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskPageBlacklist:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "maskViewIdBlacklist"

    iget-object p1, p1, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->maskViewIdBlacklist:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 186
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/networkbench/agent/impl/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 187
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 188
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "saveFeatureWithProcess path:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    .line 190
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 320
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 321
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private b(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V
    .locals 3

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getTingyunId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getInterval()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->b(J)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getIntervalOnIdle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->m(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getActions()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->f(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getActionAge()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->e(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getCrashTrails()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->l(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isEnableErrTrace()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->a(Z)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getStackDepth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->g(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getErrRspSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->h(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getErrs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->j(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUiTraceThreshold()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->a(F)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getControllerInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->k(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getHotStartThreshold()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->c(J)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowStartThreshold()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->d(J)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlFilterMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->i(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlRulesToString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->w(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getIgnoredErrorRulestoString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getEnabled()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->d(I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getFeature()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->a(I)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->B()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->b(I)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->anrThresholdName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getAnrThreshold()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->betaOn:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getBetaonFlag()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    const-string v0, "uiPages"

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUiPages()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getBrsAgent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->s(Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->enableNdk:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isEnableNdk()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Z)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->tyId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getTyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->tyIdNew:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getTyIdNew()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->apmsIssue:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getApmsIssue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->tyPlatform:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getTyPlatformValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    const-string v0, "deviceId"

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->q(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getNbsSessionConfig()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->a(Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getLogTrackConfig()Lcom/networkbench/agent/impl/plugin/c/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->a(Lcom/networkbench/agent/impl/plugin/c/b;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->stackInterval:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getStackInterval()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->httpBodyMaxSize:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getHttpBodyMaxSize()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;J)V

    const-string v0, "propagators"

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getPropagators()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cpuConfig"

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getCpuConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->viewClassWhitelist:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getViewClassWhitelist()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->aK()Z

    move-result p1

    const-string v0, "isNewPageCalcAlgoEnabled"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private l(I)V
    .locals 1

    const-string v0, "crashTrails"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private m(I)V
    .locals 1

    .line 7
    const-string v0, "harvestIntervalOnIdleInSeconds"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private r(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private s(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->brsAgent:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->brsAgentMD5:Ljava/lang/String;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ah;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private t(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private u(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->processName:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    return v2
.end method

.method private v(Ljava/lang/String;)V
    .locals 1

    .line 7
    const-string v0, "ignoreErrRules"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private w(Ljava/lang/String;)V
    .locals 1

    .line 7
    const-string v0, "urlRules"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    const-string v0, "responseBodyLimit"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public B()I
    .locals 1

    const-string v0, "errorLimit"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public C()I
    .locals 1

    const-string v0, "urlFilterMode"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public D()F
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->g:Ljava/lang/Float;

    if-nez v0, :cond_0

    const-string v0, "activityTraceThreshold"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->h(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/af;->g:Ljava/lang/Float;

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->g:Ljava/lang/Float;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public E()J
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public F()I
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->x()I

    move-result p0

    return p0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    const-string v0, "userName"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public H()I
    .locals 1

    const-string v0, "controllerInterval"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public I()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->k(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public J()J
    .locals 3

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    const-string v0, "hotStartThreshold"

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->HOT_START_THRESHOLD:I

    int-to-long v1, v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public K()J
    .locals 3

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    const-string v0, "slowStartThreshold"

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public L()I
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->anrThresholdName:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    const-string v0, "urlRules"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    const-string v0, "ignoreErrRules"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public O()I
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->features:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_main"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->features:Ljava/lang/String;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->processName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public P()I
    .locals 1

    const-string v0, "uiPages"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public Q()J
    .locals 2

    const-string v0, "disableTimeout"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 12

    const-string v0, "replayQuality"

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/networkbench/agent/impl/util/af;->b(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0xb4

    goto :goto_0

    :goto_1
    const-string v0, "replayUploadType"

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    const-string v0, "replayCacheSize"

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result v0

    :goto_3
    move v6, v0

    goto :goto_4

    :cond_2
    const/16 v0, 0xa

    goto :goto_3

    :goto_4
    const-string v0, "maskInputEnabled"

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    :cond_3
    const/4 v0, 0x1

    :goto_5
    const-string v1, "maskImageEnabled"

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/util/af;->d(Ljava/lang/String;)Z

    move-result v1

    goto :goto_6

    :cond_4
    move v1, v2

    :goto_6
    const-string v3, "maskTextEnabled"

    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, v3}, Lcom/networkbench/agent/impl/util/af;->d(Ljava/lang/String;)Z

    move-result v2

    :cond_5
    const-string v3, "maskPageBlacklist"

    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_6

    invoke-virtual {p0, v3}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_7

    :cond_6
    move-object v10, v8

    :goto_7
    const-string v3, "maskViewIdBlacklist"

    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0, v3}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_7
    move-object v11, v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v3, 0x0

    invoke-static/range {v3 .. v11}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->initInstance(IIIILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sessionConfig: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SavedState"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(F)V
    .locals 1

    .line 225
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/af;->g:Ljava/lang/Float;

    .line 226
    const-string v0, "activityTraceThreshold"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;F)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->features:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_main"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 185
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->features:Ljava/lang/String;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->processName:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 224
    const-string v0, "serverTimestamp"

    invoke-virtual {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getFeature()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/af;->a(I)V

    return-void

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/util/af;->b(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V

    return-void
.end method

.method public a(Ljava/lang/String;F)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 218
    :try_start_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 220
    iget-object p1, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 222
    throw p1
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 206
    :try_start_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 208
    iget-object p1, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 210
    throw p1
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 212
    :try_start_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 214
    iget-object p1, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 216
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    :try_start_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-static {p2}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 195
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    iget-object p1, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 198
    throw p1
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 200
    :try_start_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 202
    iget-object p1, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 204
    throw p1
.end method

.method public a(Z)V
    .locals 1

    .line 223
    const-string v0, "collectNetworkErrors"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;I)I
    .locals 0

    .line 317
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 318
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public b()Lcom/networkbench/agent/impl/plugin/c/b;
    .locals 3

    .line 309
    const-string v0, "logTrackConfig"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get log config from sp is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SavedState"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/networkbench/agent/impl/plugin/c/b;->a()Lcom/networkbench/agent/impl/plugin/c/b;

    move-result-object v0

    .line 312
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    const-string p0, "logTrack string is empty"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 314
    :cond_0
    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/plugin/c/b;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 315
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b(J)V
    .locals 1

    .line 319
    const-string v0, "harvestIntervalInSeconds"

    invoke-virtual {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 316
    const-string v0, "crashUUID"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 323
    const-string v0, "initSwitchLog"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public c()I
    .locals 2

    .line 26
    const-string v0, "crashTrails"

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    const/16 v1, 0x14

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c(I)V
    .locals 1

    .line 25
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->appVersionOfPrivacy:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public c(J)V
    .locals 1

    .line 28
    const-string v0, "hotStartThreshold"

    invoke-virtual {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 29
    const-string v0, "uploadSwitch"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public d()I
    .locals 2

    .line 45
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->stackInterval:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public d(I)V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->sdkEnabled:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_main"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->sdkEnabled:Ljava/lang/String;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->processName:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public d(J)V
    .locals 1

    .line 49
    const-string v0, "slowStartThreshold"

    invoke-virtual {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 47
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, "oaid"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e(I)V
    .locals 1

    .line 13
    const-string v0, "maxActionAgeInSeconds"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public e(J)V
    .locals 1

    .line 14
    const-string v0, "disableTimeout"

    invoke-virtual {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public f(Ljava/lang/String;)J
    .locals 2

    .line 49
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public f(I)V
    .locals 1

    .line 51
    const-string v0, "maxActionCount"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_main"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->features:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public g()I
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->appVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public g(Ljava/lang/String;)I
    .locals 1

    .line 14
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public g(I)V
    .locals 1

    .line 16
    const-string v0, "stackTraceLimit"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public h()I
    .locals 2

    .line 35
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->appVersionOfPrivacy:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->h:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public h(I)V
    .locals 1

    .line 36
    const-string v0, "responseBodyLimit"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public i()I
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->sdkEnabled:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/util/af;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_main"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->sdkEnabled:Ljava/lang/String;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->processName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/util/af;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public i(I)V
    .locals 1

    .line 48
    const-string v0, "urlFilterMode"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 47
    const-string v0, "NBSNewLensAgentDisabledVersion"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j()I
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->betaOn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public j(I)V
    .locals 1

    .line 8
    const-string v0, "errorLimit"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 7
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 9

    const-string v0, "cpuConfig"

    const-string v1, "batteryConfig"

    const-string v2, "uploadSwitch"

    const-string v3, "initSwitchLog"

    const-string v4, "propagators"

    const-string v5, "deviceId"

    const-string v6, "Loaded configuration: "

    :try_start_0
    const-string v7, "SavedState loadHarvestConfiguration method called"

    invoke-static {v7}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->r(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v7

    invoke-virtual {p0, v5}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/networkbench/agent/impl/util/r;->l(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setTingyunId(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/util/r;->l(Ljava/lang/String;)V

    :cond_1
    const-string v5, "harvestIntervalInSeconds"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->E()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setInterval(J)V

    :cond_2
    const-string v5, "maxActionAgeInSeconds"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->F()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setActionAge(I)V

    :cond_3
    const-string v5, "maxActionCount"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->y()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setActions(I)V

    :cond_4
    const-string v5, "stackTraceLimit"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->z()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setStackDepth(I)V

    :cond_5
    const-string v5, "responseBodyLimit"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->A()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setErrRspSize(I)V

    :cond_6
    const-string v5, "collectNetworkErrors"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->u()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setEnableErrTrace(Z)V

    :cond_7
    const-string v5, "errorLimit"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->B()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setErrs(I)V

    :cond_8
    const-string v5, "urlFilterMode"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->C()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setUrlFilterMode(I)V

    :cond_9
    const-string v5, "activityTraceThreshold"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->D()F

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setUiTraceThreshold(F)V

    :cond_a
    const-string v5, "harvestIntervalOnIdleInSeconds"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/af;->R()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setIntervalOnIdle(I)V

    :cond_b
    const-string v5, "controllerInterval"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->H()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setControllerInterval(I)V

    :cond_c
    const-string v5, "hotStartThreshold"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->J()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setHotStartThreshold(J)V

    :cond_d
    const-string v5, "slowStartThreshold"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->K()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setSlowStartThreshold(J)V

    :cond_e
    const-string v5, "urlRules"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->M()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setUrlRules(Ljava/lang/String;)V

    :cond_f
    const-string v5, "ignoreErrRules"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->N()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setIgnoreErrRules(Ljava/lang/String;)V

    :cond_10
    const-string v5, "uiPages"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->P()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setUiPages(I)V

    :cond_11
    sget-object v5, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->features:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->u(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->O()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/util/r;->c(I)V

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->O()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setFeature(I)V

    :cond_12
    sget-object v5, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->sdkEnabled:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->u(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->i()I

    move-result v7

    if-nez v7, :cond_13

    const/4 v7, 0x0

    goto :goto_0

    :cond_13
    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/util/r;->d(Z)V

    :cond_14
    sget-object v5, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->anrThresholdName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->L()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setAnrThreshold(I)V

    :cond_15
    sget-object v5, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->betaOn:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    sget-object v7, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->betaOn:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/util/r;->e(I)V

    :cond_16
    sget-object v5, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->brsAgent:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    sget-object v5, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->brsAgent:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->setJSAgent(Ljava/lang/String;)V

    goto :goto_1

    :cond_17
    const-string v5, ""

    invoke-static {v5}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->setJSAgent(Ljava/lang/String;)V

    :goto_1
    sget-object v5, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->enableNdk:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    sget-object v7, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->enableNdk:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/networkbench/agent/impl/util/af;->d(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/util/r;->a(Z)V

    :cond_18
    sget-object v5, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->tyId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    sget-object v7, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->tyId:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/util/r;->m(Ljava/lang/String;)V

    :cond_19
    sget-object v5, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->tyIdNew:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    sget-object v7, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->tyIdNew:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/util/r;->n(Ljava/lang/String;)V

    :cond_1a
    sget-object v5, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->tyPlatform:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    sget-object v7, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->tyPlatform:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/networkbench/agent/impl/util/r;->g(I)V

    :cond_1b
    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/util/r;->aH()Lcom/networkbench/agent/impl/k/a;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/networkbench/agent/impl/k/a;->a(Ljava/lang/String;)V

    :cond_1c
    sget-object v4, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->apmsIssue:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v4, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->apmsIssue:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/networkbench/agent/impl/util/r;->a(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->a()V

    const-string v4, "logTrackConfig"

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->b()Lcom/networkbench/agent/impl/plugin/c/b;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setLogTrackConfig(Lcom/networkbench/agent/impl/plugin/c/b;)V

    :cond_1e
    sget-object v4, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->stackInterval:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    sget-object v4, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->stackInterval:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/b/h;->b(I)V

    goto :goto_2

    :cond_1f
    const/4 v4, -0x1

    invoke-static {v4}, Lcom/networkbench/agent/impl/b/h;->b(I)V

    :goto_2
    sget-object v4, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->httpBodyMaxSize:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    sget-object v5, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->httpBodyMaxSize:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/networkbench/agent/impl/util/af;->f(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setHttpBodyMaxSize(J)V

    :cond_20
    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/networkbench/agent/impl/util/af;->d(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/networkbench/agent/impl/util/r;->q(Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    goto :goto_3

    :cond_21
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    :goto_3
    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/networkbench/agent/impl/util/af;->d(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/networkbench/agent/impl/util/r;->p(Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->aB()Z

    goto :goto_4

    :cond_22
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->aB()Z

    :goto_4
    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/networkbench/agent/impl/util/r;->r(Ljava/lang/String;)V

    :cond_23
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aI()Lcom/networkbench/agent/impl/performance/a/a/b;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/performance/a/a/b;->a(Ljava/lang/String;)V

    :cond_24
    sget-object v0, Lcom/networkbench/agent/impl/util/af;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const-string v0, "SavedState loadHarvestConfiguration method completed"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public k(I)V
    .locals 1

    .line 772
    const-string v0, "controllerInterval"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    .line 771
    const-string v0, "token"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 0

    .line 6
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .line 7
    const-string v0, "agentVersion"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/af;->f:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    return-object p0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "crossProcessId"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const-string v0, "crashUUID"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    .line 7
    const-string v0, "androidIdBugWorkAround"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    const-string v0, "NBSNewLensAgentDisabledVersion"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    .line 7
    const-string v0, "userName"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHarvestComplete()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->a(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V

    return-void
.end method

.method public onHarvestConnected()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;->b(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V

    return-void
.end method

.method public onHarvestDeviceIdError()V
    .locals 1

    sget-object p0, Lcom/networkbench/agent/impl/util/af;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "onHarvestError  \u521d\u59cb\u5316\u51fa\u73b0\u9519\u8bef \u6e05\u9664\u6389 \u7f13\u5b58\u7684feature\u72b6\u6001!"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onHarvestDisabled()V
    .locals 0

    return-void
.end method

.method public onHarvestDisconnected()V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/util/af;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "Clearing harvest configuration."

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->I()V

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const-string v0, "token"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    .line 7
    const-string v0, "oaid"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 7
    const-string v0, "agentVersion"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "crossProcessId"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 11
    const-string v0, "androidIdBugWorkAround"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Z
    .locals 1

    .line 61
    const-string v0, "collectNetworkErrors"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public v()J
    .locals 2

    const-string v0, "serverTimestamp"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()J
    .locals 2

    const-string v0, "harvestIntervalInSeconds"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public x()I
    .locals 1

    const-string v0, "maxActionAgeInSeconds"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public y()I
    .locals 1

    const-string v0, "maxActionCount"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public z()I
    .locals 1

    const-string v0, "stackTraceLimit"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->g(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
