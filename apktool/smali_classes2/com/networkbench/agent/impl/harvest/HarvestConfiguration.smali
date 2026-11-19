.class public Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;,
        Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;
    }
.end annotation


# static fields
.field public static final ANR_ACTIONS_MAX_COUNT:I = 0x14

.field public static final ANR_THRESHOLD:I = 0x1388

.field private static final FILTER_TYPE_TAG:Ljava/lang/String; = "*"

.field public static HOT_START_THRESHOLD:I = 0x0

.field public static final SLOW_START_THRESHOLD:I = 0xbb8

.field public static final SLOW_USER_ACTION_THRESHOLD:J = 0xbb8L

.field public static final S_DOM_THR:I = 0x834

.field public static final S_FIRSTPAINT_THR:I = 0x578

.field public static final S_FIRSTSCREEN_THR:I = 0xaf0

.field public static final S_PAGE_THR:I = 0x1b58

.field private static TAG:Ljava/lang/String; = "HarvestConfiguration"

.field static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultHarvestConfiguration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

.field private static log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private actionAge:I

.field private actionFailureThreshold:I

.field private actions:I

.field private anrAction:I

.field private anrThreshold:I

.field private apmsIssue:Ljava/lang/String;

.field private batteryConfig:Ljava/lang/String;

.field private betaonFlag:I

.field private brsAgent:Ljava/lang/String;

.field private cdnHeaderName:Ljava/lang/String;

.field private controllerEnable:Z

.field private controllerInterval:I

.field private cpuConfig:Ljava/lang/String;

.field private crashTrails:I

.field private deviceId:Ljava/lang/String;

.field private dnsconn:Z

.field private enableErrTrace:Z

.field private enableNdk:Z

.field private enabled:I

.field private errRspSize:I

.field private errs:I

.field private feature:I

.field private hotStartThreshold:J

.field private httpBodyMaxSize:J

.field private ignoreErrRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/data/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private ignoredErrorRulesToSting:Ljava/lang/String;

.field private interval:J

.field private intervalOnIdle:I

.field private logTrackConfig:Lcom/networkbench/agent/impl/plugin/c/b;

.field private nbsSessionConfig:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

.field private pluginSwitch:Z

.field private propagators:Ljava/lang/String;

.field private slowDomThreshold:I

.field private slowFirstPaintThreshold:I

.field private slowFirstScreenThreshold:I

.field private slowInteractionThreshold:I

.field private slowPageDurationThreshold:I

.field private slowPageLoadThreshold:I

.field private slowPageThreshold:I

.field private slowStartThreshold:J

.field private slowUserActionThreshold:J

.field private stackDepth:I

.field private stackInterval:I

.field private token:Ljava/lang/String;

.field private tyId:Ljava/lang/String;

.field private tyIdNew:Ljava/lang/String;

.field private tyPlatformValue:I

.field private uiPages:I

.field private uiTraceMaxTime:F

.field private uiTraceRetries:I

.field private uiTraceSize:I

.field private uiTraceThreshold:F

.field private uiTraces:I

.field private urlFilterMode:I

.field private urlParamArray:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;",
            "Lcom/networkbench/agent/impl/data/j$c;",
            ">;"
        }
    .end annotation
.end field

.field private urlParamBlackArray:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;",
            "Lcom/networkbench/agent/impl/data/j$c;",
            ">;"
        }
    .end annotation
.end field

.field private urlRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/data/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private urlRulesToString:Ljava/lang/String;

.field private userActions:I

.field private viewClassWhitelist:Ljava/lang/String;

.field private whiteList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->a:Ljava/util/List;

    const/16 v0, 0xb4

    sput v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->HOT_START_THRESHOLD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->interval:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enableNdk:Z

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->httpBodyMaxSize:J

    const/16 v0, 0x1388

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->anrThreshold:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->anrAction:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlParamArray:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlParamBlackArray:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->controllerEnable:Z

    const v1, 0x47c35000    # 100000.0f

    iput v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceMaxTime:F

    const/16 v1, 0x64

    iput v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->userActions:I

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyPlatformValue:I

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyIdNew:Ljava/lang/String;

    const/16 v0, 0x3c

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->controllerInterval:I

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setDefaultValues()V

    return-void
.end method

.method private filterStrParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, ","

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    if-lez p1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getCellInfoConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->a:Ljava/util/List;

    return-object v0
.end method

.method private static getCellInfoType(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    return-object v0

    :goto_1
    sget-object v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cellInfoJsonArray error :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-object v0

    :cond_2
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->defaultHarvestConfiguration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->defaultHarvestConfiguration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    return-object v0
.end method

.method private getUrlParamsItem(Lorg/json/JSONObject;)Lcom/networkbench/agent/impl/data/j$c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/data/j$c;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/j$c;-><init>()V

    const-string v1, "get"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->filterStrParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, v0, Lcom/networkbench/agent/impl/data/j$c;->a:[Ljava/lang/String;

    :cond_1
    const-string v1, "post"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->filterStrParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, v0, Lcom/networkbench/agent/impl/data/j$c;->b:[Ljava/lang/String;

    :cond_2
    const-string v1, "headers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->filterStrParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-object v1, v0, Lcom/networkbench/agent/impl/data/j$c;->c:[Ljava/lang/String;

    :cond_3
    const-string v1, "resHeaders"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->filterStrParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parseHarvestConfigFromResult  resHeaders: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iput-object v1, v0, Lcom/networkbench/agent/impl/data/j$c;->d:[Ljava/lang/String;

    :cond_4
    const-string v1, "reqBodys"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->filterStrParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iput-object v1, v0, Lcom/networkbench/agent/impl/data/j$c;->e:[Ljava/lang/String;

    :cond_5
    const-string v1, "resBodys"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->filterStrParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    iput-object p0, v0, Lcom/networkbench/agent/impl/data/j$c;->f:[Ljava/lang/String;

    :cond_6
    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "add param filer urlparam: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/j$c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setCpuConfig(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->cpuConfig:Ljava/lang/String;

    return-void
.end method

.method private setPropagators(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->propagators:Ljava/lang/String;

    return-void
.end method

.method private setTYIdNew(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyIdNew:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calcState(JJ)I
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowPageDurationThreshold()I

    move-result v0

    int-to-long v0, v0

    cmp-long p3, p3, v0

    if-ltz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowPageLoadThreshold()I

    move-result p0

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p3
.end method

.method public encryptAesToHeader()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->i()Lcom/networkbench/agent/impl/util/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->i()Lcom/networkbench/agent/impl/util/g;

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->i()Lcom/networkbench/agent/impl/util/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/g;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/networkbench/agent/impl/util/d;

    const-string v0, "encryptContent is not init"

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encryptContentAES(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actionAge:I

    iget v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actionAge:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actions:I

    iget v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actions:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->dnsconn:Z

    iget-boolean v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->dnsconn:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-boolean v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enableErrTrace:Z

    iget-boolean v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enableErrTrace:Z

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errRspSize:I

    iget v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errRspSize:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errs:I

    iget v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errs:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoreErrRules:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoreErrRules:Ljava/util/ArrayList;

    if-nez v2, :cond_9

    if-eqz v3, :cond_a

    return v1

    :cond_9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-wide v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->interval:J

    iget-wide v4, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->interval:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    return v1

    :cond_b
    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->intervalOnIdle:I

    iget v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->intervalOnIdle:I

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackDepth:I

    iget v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackDepth:I

    if-eq v2, v3, :cond_d

    return v1

    :cond_d
    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceRetries:I

    iget v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceRetries:I

    if-eq v2, v3, :cond_e

    return v1

    :cond_e
    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceSize:I

    iget v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceSize:I

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceThreshold:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceThreshold:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_10

    return v1

    :cond_10
    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraces:I

    iget v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraces:I

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlFilterMode:I

    iget v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlFilterMode:I

    if-eq v2, v3, :cond_12

    return v1

    :cond_12
    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->controllerInterval:I

    iget v3, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->controllerInterval:I

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlRules:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlRules:Ljava/util/ArrayList;

    if-nez p0, :cond_14

    if-eqz p1, :cond_15

    return v1

    :cond_14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    return v1

    :cond_15
    return v0
.end method

.method public getActionAge()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actionAge:I

    return p0
.end method

.method public getActionFailureThreshold()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actionFailureThreshold:I

    return p0
.end method

.method public getActions()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actions:I

    return p0
.end method

.method public getAnrAction()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->anrAction:I

    return p0
.end method

.method public getAnrThreshold()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->anrThreshold:I

    return p0
.end method

.method public getApmsIssue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->apmsIssue:Ljava/lang/String;

    return-object p0
.end method

.method public getBatteryConfig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->batteryConfig:Ljava/lang/String;

    return-object p0
.end method

.method public getBetaonFlag()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->betaonFlag:I

    return p0
.end method

.method public getBrsAgent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->brsAgent:Ljava/lang/String;

    return-object p0
.end method

.method public getCdnHeaderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->cdnHeaderName:Ljava/lang/String;

    return-object p0
.end method

.method public getControllerEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->controllerEnable:Z

    return p0
.end method

.method public getControllerInterval()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->controllerInterval:I

    return p0
.end method

.method public getCpuConfig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->cpuConfig:Ljava/lang/String;

    return-object p0
.end method

.method public getCrashTrails()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->crashTrails:I

    return p0
.end method

.method public getEnabled()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enabled:I

    return p0
.end method

.method public getErrRspSize()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errRspSize:I

    return p0
.end method

.method public getErrs()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errs:I

    return p0
.end method

.method public getFeature()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->feature:I

    return p0
.end method

.method public getHotStartThreshold()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->hotStartThreshold:J

    return-wide v0
.end method

.method public getHttpBodyMaxSize()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->httpBodyMaxSize:J

    return-wide v0
.end method

.method public getIgnoreErrRules()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/data/j$a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoreErrRules:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getIgnoredErrorRulestoString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoredErrorRulesToSting:Ljava/lang/String;

    return-object p0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->interval:J

    return-wide v0
.end method

.method public getIntervalOnIdle()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->intervalOnIdle:I

    return p0
.end method

.method public getLogTrackConfig()Lcom/networkbench/agent/impl/plugin/c/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->logTrackConfig:Lcom/networkbench/agent/impl/plugin/c/b;

    return-object p0
.end method

.method public getNbsSessionConfig()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->nbsSessionConfig:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    return-object p0
.end method

.method public getPropagators()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->propagators:Ljava/lang/String;

    return-object p0
.end method

.method public getSlowDomThreshold()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowDomThreshold:I

    return p0
.end method

.method public getSlowFirstPaintThreshold()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowFirstPaintThreshold:I

    return p0
.end method

.method public getSlowFirstScreenThreshold()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowFirstScreenThreshold:I

    return p0
.end method

.method public getSlowPageDurationThreshold()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowPageDurationThreshold:I

    return p0
.end method

.method public getSlowPageLoadThreshold()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowPageLoadThreshold:I

    return p0
.end method

.method public getSlowPageThreshold()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowPageThreshold:I

    return p0
.end method

.method public getSlowStartThreshold()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowStartThreshold:J

    return-wide v0
.end method

.method public getSlowUserActionThreshold()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowUserActionThreshold:J

    return-wide v0
.end method

.method public getStackDepth()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackDepth:I

    return p0
.end method

.method public getStackInterval()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackInterval:I

    return p0
.end method

.method public getTingyunId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->token:Ljava/lang/String;

    return-object p0
.end method

.method public getTyId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyId:Ljava/lang/String;

    return-object p0
.end method

.method public getTyIdNew()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyIdNew:Ljava/lang/String;

    return-object p0
.end method

.method public getTyPlatformValue()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyPlatformValue:I

    return p0
.end method

.method public getUiPages()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiPages:I

    return p0
.end method

.method public getUiTraceMaxTime()D
    .locals 2

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceMaxTime:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getUiTraceRetries()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceRetries:I

    return p0
.end method

.method public getUiTraceSize()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceSize:I

    return p0
.end method

.method public getUiTraceThreshold()F
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceThreshold:F

    return p0
.end method

.method public getUiTraces()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraces:I

    return p0
.end method

.method public getUrlFilterKey(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "*"

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlFilterType(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;-><init>(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V

    iput-object v0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->filtertype:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->FIRST_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    const/4 v2, 0x1

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->LAST_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    if-ne v0, p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->url:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->MIDDLE_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    if-ne v0, p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-le p0, v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->url:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->NONE:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->url:Ljava/lang/String;

    :cond_3
    :goto_0
    iget-object p0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->url:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public getUrlFilterMode()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlFilterMode:I

    return p0
.end method

.method public getUrlFilterType(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->NONE:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->FIRST_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->MIDDLE_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;->LAST_FILTER:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$FILTERTYPE;

    :cond_2
    return-object p0
.end method

.method public getUrlParamArray()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;",
            "Lcom/networkbench/agent/impl/data/j$c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlParamArray:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public getUrlParamBlackArray()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;",
            "Lcom/networkbench/agent/impl/data/j$c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlParamBlackArray:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public getUrlRules()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/data/j$b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlRules:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getUrlRulesToString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlRulesToString:Ljava/lang/String;

    return-object p0
.end method

.method public getUserActions()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->userActions:I

    return p0
.end method

.method public getViewClassWhitelist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->viewClassWhitelist:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getWhiteList()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->whiteList:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 8

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actionAge:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actions:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->dnsconn:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enableErrTrace:Z

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errRspSize:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errs:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoreErrRules:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v4, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->interval:J

    const/16 v2, 0x20

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->intervalOnIdle:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackDepth:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceRetries:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceSize:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceThreshold:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraces:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlFilterMode:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlRules:Ljava/util/ArrayList;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    return v2
.end method

.method public isDnsconn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->dnsconn:Z

    return p0
.end method

.method public isEnableErrTrace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enableErrTrace:Z

    return p0
.end method

.method public isEnableNdk()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enableNdk:Z

    return p0
.end method

.method public isPluginSwitch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->pluginSwitch:Z

    return p0
.end method

.method public isUrlBlackListEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlParamBlackArray()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlParamArray()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUrlWhiteListEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlParamArray()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public parseHarvestConfigFromResult(Lorg/json/JSONObject;)Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "taskConfig"

    const-string v4, "batteryConfig"

    const-string v5, "stack_interval"

    const-string v6, "sessionConfig"

    const-string v7, "apms"

    const-string v8, "enableNdk"

    const-string v9, "brsAgent"

    const-string v10, "uiPages"

    const-string v11, "slowPageDurationThreshold"

    const-string v12, "slowPageLoadThreshold"

    const-string v13, "actionFailureThreshold"

    const-string v14, "cdnHeaderName"

    const-string v15, "ignoredErrRules"

    move-object/from16 v16, v3

    const-string v3, "cpuConfig"

    move-object/from16 v17, v4

    const-string v4, "propagators"

    move-object/from16 v18, v5

    const-string v5, "urlParamsBlacklist"

    move-object/from16 v19, v6

    const-string v6, "url"

    move-object/from16 v20, v7

    const-string v7, "urlParams"

    move-object/from16 v21, v8

    const-string v8, "userActions"

    move-object/from16 v22, v9

    const-string v9, "slowUserActionThreshold"

    move-object/from16 v23, v10

    const-string v10, "interval"

    move-object/from16 v24, v11

    const-string v11, ""

    move-object/from16 v25, v12

    const-string v12, "Error while unpacking JSON response during connect"

    move-object/from16 v26, v13

    const-string v13, "parseHarvestConfigFromResult  enableExtension:"

    move-object/from16 v27, v14

    const-string v14, "slowInteractionThreshold:"

    move-object/from16 v28, v15

    const-string v15, "setUserActions : "

    move-object/from16 v29, v3

    const-string v3, "setSlowUserActionThreshold : "

    move-object/from16 v30, v4

    const-string v4, "did:"

    const-string v0, "parseHarvestConfigFromResult   isEncrypt : "

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object/from16 v31, v5

    const-string v5, "cfg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v32, v6

    sget-object v6, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    move-object/from16 v33, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v34, v13

    const-string v13, "cfgObj:"

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :try_start_0
    const-string v6, "did"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1, v6}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setTingyunId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_1
    :try_start_1
    const-string v7, "token"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setToken(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string v7, "enabled"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setEnabled(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    sget-object v7, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/networkbench/agent/impl/util/r;->B:Z

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const-string v0, "tySecretKey"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/networkbench/agent/impl/util/r;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v7

    iget-boolean v7, v7, Lcom/networkbench/agent/impl/util/r;->B:Z

    if-eqz v7, :cond_2

    new-instance v7, Lcom/networkbench/agent/impl/util/g;

    invoke-direct {v7, v0}, Lcom/networkbench/agent/impl/util/g;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/networkbench/agent/impl/util/r;->a(Lcom/networkbench/agent/impl/util/g;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/networkbench/agent/impl/util/r;->c(Ljava/lang/String;)V

    sget-object v7, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v13, "tySecretKey  has an error : "

    invoke-interface {v7, v13, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", token:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->token:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", enabled:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enabled:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :try_start_5
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    const/16 v0, 0x3c

    :cond_3
    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setInterval(J)V

    const-string v0, "intervalOnIdle"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setIntervalOnIdle(I)V

    const-string v0, "actions"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setActions(I)V

    const-string v0, "actionAge"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setActionAge(I)V

    const-string v0, "enableErrTrace"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setEnableErrTrace(Z)V

    const-string v0, "errs"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setErrs(I)V

    const-string v0, "errRspSize"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setErrRspSize(I)V

    const-string v0, "stackDepth"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setStackDepth(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :try_start_6
    const-string v0, "anrActions"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setAnrAction(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    :try_start_7
    const-string v0, "uiTraces"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setUiTraces(I)V

    const-string v0, "uiTraceSize"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setUiTraceSize(I)V

    const-string v0, "uiTraceRetries"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setUiTraceRetries(I)V

    const-string v0, "uiTraceThreshold"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setUiTraceThreshold(F)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->anrThresholdName:Ljava/lang/String;

    const/16 v4, 0x1389

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setAnrThreshold(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_1

    :catchall_6
    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "Error while unpacking UITrace JSON response during connect"

    invoke-interface {v0, v4}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :goto_1
    :try_start_8
    const-string v0, "slowPageThreshold"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setSlowPageThreshold(I)V

    const-string v0, "slowFirstPaintThreshold"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setSlowFirstPaintThreshold(I)V

    const-string v0, "slowFirstScreenThreshold"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setSlowFirstScreenThreshold(I)V

    const-string v0, "slowDomThreshold"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setSlowDomThreshold(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_2

    :catchall_7
    move-exception v0

    sget-object v4, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error parse webview param error"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v4}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :goto_2
    :try_start_9
    const-string v0, "hotStartThreshold"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setHotStartThreshold(J)V

    const-string v0, "slowStartThreshold"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setSlowStartThreshold(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_3

    :catchall_8
    move-exception v0

    sget-object v4, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error parse 2.2.7\u534f\u8bae param error"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v4}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :goto_3
    :try_start_a
    invoke-direct {v1, v5, v9}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setSlowUserActionThreshold(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowUserActionThreshold()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->j(Ljava/lang/String;)V

    goto :goto_4

    :catchall_9
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_4
    invoke-direct {v1, v5, v8}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setUserActions(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUserActions()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->j(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_6

    :goto_5
    sget-object v3, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v3}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :cond_5
    :goto_6
    :try_start_b
    const-string v0, "crashTrails"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setCrashTrails(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    goto :goto_7

    :catchall_a
    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    invoke-interface {v0, v12}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :goto_7
    :try_start_c
    const-string v0, "betaOn"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setBetaonFlag(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    :catchall_b
    :try_start_d
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->features:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setFeature(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    :catchall_c
    :try_start_e
    const-string v0, "tyId"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setTyId(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    :catchall_d
    :try_start_f
    const-string v0, "tyIdNew"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyIdNew:Ljava/lang/String;

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyIdNew:Ljava/lang/String;

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v11, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyIdNew:Ljava/lang/String;

    goto :goto_8

    :catchall_e
    move-exception v0

    goto :goto_9

    :cond_6
    :goto_8
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-object v3, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyIdNew:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/networkbench/agent/impl/util/r;->n(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyIdNew:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setTYIdNew(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    goto :goto_a

    :goto_9
    sget-object v3, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "tyIdNew error:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v3}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :goto_a
    :try_start_10
    const-string v0, "tyPlatform"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyPlatformValue:I

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget v3, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyPlatformValue:I

    invoke-virtual {v0, v3}, Lcom/networkbench/agent/impl/util/r;->g(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    goto :goto_b

    :catchall_f
    move-exception v0

    sget-object v3, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "typlatform error:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v3}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :goto_b
    :try_start_11
    const-string v0, "slowInteractionThreshold"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setSlowInteractionThreshold(I)V

    sget-object v3, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    goto :goto_c

    :catchall_10
    move-exception v0

    sget-object v3, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    invoke-interface {v3, v12, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    :try_start_12
    const-string v0, "netCellInfo"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getCellInfoType(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->a:Ljava/util/List;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    goto :goto_d

    :catchall_11
    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "error whie parse cellinfo config"

    invoke-interface {v0, v3}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :goto_d
    const/4 v3, 0x0

    :try_start_13
    const-string v0, "enableExtension"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setPluginSwitch(Z)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v6, v34

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isPluginSwitch()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_12

    goto :goto_e

    :catchall_12
    move-exception v0

    sget-object v4, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error whie unpacking cellinfo config"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v4}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :goto_e
    :try_start_14
    const-string v0, "urlFilterMode"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlFilterMode:I

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setUrlFilterMode(I)V

    iget v0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlFilterMode:I

    if-eqz v0, :cond_7

    const-string v0, "urlRules"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_7
    invoke-virtual {v1, v11}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setUrlRules(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_13

    :catchall_13
    move-object/from16 v4, v33

    :try_start_15
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    move v4, v3

    :goto_f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_8

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    invoke-direct {v1, v6}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlParamsItem(Lorg/json/JSONObject;)Lcom/networkbench/agent/impl/data/j$c;

    move-result-object v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_16

    move-object/from16 v8, v32

    :try_start_16
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "urlparam url:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_15

    :try_start_17
    iget-object v9, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlParamArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v6}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlFilterKey(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;

    move-result-object v6

    invoke-virtual {v9, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_14

    :catchall_14
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v32, v8

    goto :goto_f

    :catchall_15
    move-exception v0

    goto :goto_11

    :catchall_16
    move-exception v0

    move-object/from16 v8, v32

    goto :goto_11

    :cond_8
    move-object/from16 v8, v32

    :goto_10
    move-object/from16 v4, v31

    goto :goto_12

    :goto_11
    sget-object v4, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v6, "Error while unpacking Json response during connect (urlParams)"

    invoke-interface {v4, v6, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :goto_12
    :try_start_18
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_13
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlParamsItem(Lorg/json/JSONObject;)Lcom/networkbench/agent/impl/data/j$c;

    move-result-object v6

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "urlparamBlack url:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    :try_start_19
    iget-object v7, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlParamBlackArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlFilterKey(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;

    move-result-object v4

    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_17

    :catchall_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :catchall_18
    :cond_9
    move-object/from16 v3, v30

    :try_start_1a
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->aH()Lcom/networkbench/agent/impl/k/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/networkbench/agent/impl/k/a;->a(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setPropagators(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_19

    :catchall_19
    :cond_a
    move-object/from16 v3, v29

    :try_start_1b
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->aI()Lcom/networkbench/agent/impl/performance/a/a/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/networkbench/agent/impl/performance/a/a/b;->a(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setCpuConfig(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1a

    :catchall_1a
    :cond_b
    move-object/from16 v3, v28

    :try_start_1c
    invoke-direct {v1, v5, v3}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setIgnoreErrRules(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1b

    :catchall_1b
    :cond_c
    move-object/from16 v3, v27

    :try_start_1d
    invoke-direct {v1, v5, v3}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setCdnHeaderName(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1c

    goto :goto_14

    :catchall_1c
    move-exception v0

    goto :goto_15

    :cond_d
    :goto_14
    move-object/from16 v3, v26

    goto :goto_16

    :goto_15
    sget-object v3, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Error while unpacking Json response during connect "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto :goto_14

    :goto_16
    :try_start_1e
    invoke-direct {v1, v5, v3}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setActionFailureThreshold(I)V

    :cond_e
    move-object/from16 v3, v25

    goto :goto_17

    :catchall_1d
    move-exception v0

    goto :goto_18

    :goto_17
    invoke-direct {v1, v5, v3}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setSlowPageLoadThreshold(I)V

    :cond_f
    move-object/from16 v3, v24

    invoke-direct {v1, v5, v3}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setSlowPageDurationThreshold(I)V

    :cond_10
    move-object/from16 v3, v23

    invoke-direct {v1, v5, v3}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setUiPages(I)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1d

    goto :goto_19

    :goto_18
    sget-object v3, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_11
    :goto_19
    :try_start_1f
    const-string v0, "ctl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setControllerInterval(I)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1e

    :goto_1a
    move-object/from16 v2, v22

    goto :goto_1b

    :catchall_1e
    move-exception v0

    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto :goto_1a

    :goto_1b
    :try_start_20
    invoke-direct {v1, v5, v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setBrsAgent(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->ad()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v0}, Lcom/networkbench/agent/impl/webview/JsPageUtil;->setJSAgentCon(Ljava/lang/String;)V

    goto :goto_1c

    :catchall_1f
    move-exception v0

    goto :goto_1d

    :cond_12
    const/4 v0, 0x1

    sput-boolean v0, Lcom/networkbench/agent/impl/webview/JsPageUtil;->isUpdate:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1f

    :cond_13
    :goto_1c
    move-object/from16 v2, v21

    goto :goto_1e

    :goto_1d
    :try_start_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cfgObj, \"brsAgent\"  has error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_28

    goto :goto_1c

    :goto_1e
    :try_start_22
    invoke-direct {v1, v5, v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setEnableNdk(Z)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_20

    goto :goto_1f

    :catchall_20
    move-exception v0

    goto :goto_20

    :cond_14
    :goto_1f
    move-object/from16 v2, v20

    goto :goto_21

    :goto_20
    :try_start_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cfgObj, \"enableNdk\"  has error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_28

    goto :goto_1f

    :goto_21
    :try_start_24
    invoke-direct {v1, v5, v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray apms : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->apmsIssue:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-object v2, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->apmsIssue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/util/r;->a(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_21

    goto :goto_22

    :catchall_21
    move-exception v0

    goto :goto_23

    :cond_15
    :goto_22
    move-object/from16 v2, v19

    goto :goto_24

    :goto_23
    :try_start_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cfgObj, \"apms\"  has error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_28

    goto :goto_22

    :goto_24
    :try_start_26
    invoke-direct {v1, v5, v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseHarvestConfigFromResult JSONArray sessionConfig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    invoke-direct {v2, v0}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;-><init>(Lorg/json/JSONObject;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NBSSessionConfig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->nbsSessionConfig:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_22

    goto :goto_25

    :catchall_22
    move-exception v0

    :try_start_27
    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while unpacking JSON sessionConfig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_16
    :goto_25
    iget-object v0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->logTrackConfig:Lcom/networkbench/agent/impl/plugin/c/b;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/plugin/c/b;->a(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_28

    move-object/from16 v2, v18

    :try_start_28
    invoke-direct {v1, v5, v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_17

    const/16 v0, 0x64

    :cond_17
    iput v0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackInterval:I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_23

    goto :goto_26

    :catchall_23
    move-exception v0

    goto :goto_27

    :cond_18
    :goto_26
    move-object/from16 v2, v17

    goto :goto_28

    :goto_27
    const/4 v2, -0x1

    :try_start_29
    iput v2, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackInterval:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cfgObj, \"stack_interval\"  has error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_28

    goto :goto_26

    :goto_28
    :try_start_2a
    invoke-direct {v1, v5, v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->batteryConfig:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_24

    goto :goto_29

    :catchall_24
    move-exception v0

    :try_start_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batteryConfig has error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_28

    :cond_19
    :goto_29
    :try_start_2c
    const-string v0, "httpBodyMaxSize"

    const-wide/16 v2, 0xa

    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->httpBodyMaxSize:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1a

    const-wide/16 v8, 0x400

    cmp-long v0, v6, v8

    if-lez v0, :cond_1b

    :cond_1a
    iput-wide v2, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->httpBodyMaxSize:J
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_25

    :cond_1b
    :goto_2a
    move-object/from16 v2, v16

    goto :goto_2b

    :catchall_25
    move-exception v0

    :try_start_2d
    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->TAG:Ljava/lang/String;

    const-string v3, "get httpBodyMaxSize error"

    invoke-static {v2, v3, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_28

    goto :goto_2a

    :goto_2b
    :try_start_2e
    invoke-direct {v1, v5, v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isNull_Or_Exist(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseHarvestConfigFromResult JSONArray taskConfig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/c/a;->a()Lcom/networkbench/agent/impl/data/c/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/networkbench/agent/impl/data/c/a;->a(Lorg/json/JSONObject;)Lcom/networkbench/agent/impl/data/c/a;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_26

    goto :goto_2c

    :catchall_26
    move-exception v0

    :try_start_2f
    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while unpacking JSON taskConfig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_28

    :cond_1c
    :goto_2c
    :try_start_30
    const-string v0, "viewClassWhitelist"

    const-string v2, "[]"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->viewClassWhitelist:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_27

    goto :goto_2d

    :catchall_27
    :try_start_31
    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->TAG:Ljava/lang/String;

    const-string v2, "error viewClassWhitelist"

    invoke-static {v0, v2}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_28

    goto :goto_2d

    :catchall_28
    move-exception v0

    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :goto_2d
    return-object v1
.end method

.method public reconfigure(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V
    .locals 3

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getTingyunId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->deviceId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->token:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->interval:J

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getIntervalOnIdle()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->intervalOnIdle:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getActions()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actions:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getActionAge()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actionAge:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isEnableErrTrace()Z

    move-result v0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enableErrTrace:Z

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getErrs()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errs:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getErrRspSize()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errRspSize:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getStackDepth()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackDepth:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isDnsconn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->dnsconn:Z

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlFilterMode()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlFilterMode:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlRules()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlRules()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlRules:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getIgnoreErrRules()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getIgnoreErrRules()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoreErrRules:Ljava/util/ArrayList;

    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUiTraceThreshold()F

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceThreshold:F

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUiTraces()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraces:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUiTraceSize()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceSize:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUiTraceRetries()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceRetries:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getIgnoreErrRules()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoreErrRules:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlParamArray()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlParamArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlParamBlackArray()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlParamBlackArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getCrashTrails()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->crashTrails:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getBetaonFlag()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->betaonFlag:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getControllerInterval()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->controllerInterval:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getWhiteList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->whiteList:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getCdnHeaderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->cdnHeaderName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowDomThreshold()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowDomThreshold:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowFirstScreenThreshold()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowFirstScreenThreshold:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowFirstPaintThreshold()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowFirstPaintThreshold:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowPageThreshold()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowPageThreshold:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getHotStartThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->hotStartThreshold:J

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowStartThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowStartThreshold:J

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUserActions()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->userActions:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowUserActionThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowUserActionThreshold:J

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlRulesToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlRulesToString:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getIgnoredErrorRulestoString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoredErrorRulesToSting:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getActionFailureThreshold()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actionFailureThreshold:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getEnabled()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enabled:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getControllerEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->controllerEnable:Z

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getFeature()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->feature:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getAnrThreshold()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->anrThreshold:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowPageLoadThreshold()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowPageLoadThreshold:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowPageDurationThreshold()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowPageDurationThreshold:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUiPages()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiPages:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getAnrAction()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->anrAction:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isPluginSwitch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->pluginSwitch:Z

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getBrsAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->brsAgent:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isEnableNdk()Z

    move-result v0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enableNdk:Z

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getTyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getTyIdNew()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyIdNew:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getTyPlatformValue()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyPlatformValue:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getApmsIssue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->apmsIssue:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getNbsSessionConfig()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->nbsSessionConfig:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nbsSessionConfig :  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->nbsSessionConfig:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->logTrackConfig:Lcom/networkbench/agent/impl/plugin/c/b;

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->logTrackConfig:Lcom/networkbench/agent/impl/plugin/c/b;

    iget v0, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackInterval:I

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackInterval:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getBatteryConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->batteryConfig:Ljava/lang/String;

    iget-wide v0, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->httpBodyMaxSize:J

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->httpBodyMaxSize:J

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getPropagators()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->propagators:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getCpuConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->cpuConfig:Ljava/lang/String;

    iget-object p1, p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->viewClassWhitelist:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->viewClassWhitelist:Ljava/lang/String;

    return-void
.end method

.method public reconfigurePb(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;-><init>()V

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->parseHarvestConfigFromResult(Lorg/json/JSONObject;)Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->reconfigure(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V

    return-void
.end method

.method public setActionAge(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actionAge:I

    return-void
.end method

.method public setActionFailureThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actionFailureThreshold:I

    return-void
.end method

.method public setActions(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actions:I

    return-void
.end method

.method public setAnrAction(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->anrAction:I

    return-void
.end method

.method public setAnrThreshold(I)V
    .locals 1

    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->anrThreshold:I

    return-void
.end method

.method public setApmsIssue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->apmsIssue:Ljava/lang/String;

    return-void
.end method

.method public setBatteryConfig(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->batteryConfig:Ljava/lang/String;

    return-void
.end method

.method public setBetaonFlag(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->betaonFlag:I

    return-void
.end method

.method public setBrsAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->brsAgent:Ljava/lang/String;

    return-void
.end method

.method public setCdnHeaderName(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->cdnHeaderName:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->cdnHeaderName:Ljava/lang/String;

    return-void
.end method

.method public setControllerInterval(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->controllerInterval:I

    return-void
.end method

.method public setCrashTrails(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->crashTrails:I

    return-void
.end method

.method public setDefaultValues()V
    .locals 7

    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->interval:J

    const/16 v0, 0x14

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->intervalOnIdle:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actions:I

    const/16 v2, 0x258

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actionAge:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enableErrTrace:Z

    const/16 v3, 0x64

    iput v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errs:I

    const/16 v4, 0x800

    iput v4, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errRspSize:I

    const/16 v4, 0xa

    iput v4, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackDepth:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->dnsconn:Z

    iput v4, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlFilterMode:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlRules:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoreErrRules:Ljava/util/ArrayList;

    const/high16 v5, 0x43960000    # 300.0f

    iput v5, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceThreshold:F

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraces:I

    const v5, 0xfffe

    iput v5, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceSize:I

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceRetries:I

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->crashTrails:I

    const/16 v2, 0x3c

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->controllerInterval:I

    iput-boolean v4, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->controllerEnable:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->cdnHeaderName:Ljava/lang/String;

    const/16 v5, 0x1b58

    iput v5, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowPageThreshold:I

    const/16 v5, 0x578

    iput v5, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowFirstPaintThreshold:I

    const/16 v5, 0xaf0

    iput v5, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowFirstScreenThreshold:I

    const/16 v5, 0x834

    iput v5, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowDomThreshold:I

    sget v5, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->HOT_START_THRESHOLD:I

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->hotStartThreshold:J

    const-wide/16 v5, 0xbb8

    iput-wide v5, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowStartThreshold:J

    iput-wide v5, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowUserActionThreshold:J

    iput v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->actionFailureThreshold:I

    iput v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowPageLoadThreshold:I

    const/16 v1, 0xbb8

    iput v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowPageDurationThreshold:I

    iput v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiPages:I

    iput-boolean v4, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->pluginSwitch:Z

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->anrAction:I

    iput-object v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyId:Ljava/lang/String;

    iput-object v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyIdNew:Ljava/lang/String;

    iput-object v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->apmsIssue:Ljava/lang/String;

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->nbsSessionConfig:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/c/b;->a()Lcom/networkbench/agent/impl/plugin/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->logTrackConfig:Lcom/networkbench/agent/impl/plugin/c/b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackInterval:I

    return-void
.end method

.method public setDnsconn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->dnsconn:Z

    return-void
.end method

.method public setEnableErrTrace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enableErrTrace:Z

    return-void
.end method

.method public setEnableNdk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enableNdk:Z

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/r;->a(Z)V

    return-void
.end method

.method public setEnabled(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->enabled:I

    return-void
.end method

.method public setErrRspSize(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errRspSize:I

    return-void
.end method

.method public setErrs(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->errs:I

    return-void
.end method

.method public setFeature(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->feature:I

    return-void
.end method

.method public setHotStartThreshold(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->hotStartThreshold:J

    return-void
.end method

.method public setHttpBodyMaxSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->httpBodyMaxSize:J

    return-void
.end method

.method public setIgnoreErrRules(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setIgnoredErrorRulesToString(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "matchMode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "rule"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "errs"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/networkbench/agent/impl/data/j$a;

    invoke-direct {v5}, Lcom/networkbench/agent/impl/data/j$a;-><init>()V

    iput v3, v5, Lcom/networkbench/agent/impl/data/j$a;->a:I

    iput-object v4, v5, Lcom/networkbench/agent/impl/data/j$a;->b:Ljava/lang/String;

    iput-object v2, v5, Lcom/networkbench/agent/impl/data/j$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set ignoreErrors info"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_1
    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoreErrRules:Ljava/util/ArrayList;

    return-void
.end method

.method public setIgnoredErrorRulesToString(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoredErrorRulesToSting:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoredErrorRulesToSting:Ljava/lang/String;

    return-void
.end method

.method public setInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->interval:J

    return-void
.end method

.method public setIntervalOnIdle(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->intervalOnIdle:I

    return-void
.end method

.method public setLogTrackConfig(Lcom/networkbench/agent/impl/plugin/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->logTrackConfig:Lcom/networkbench/agent/impl/plugin/c/b;

    return-void
.end method

.method public setPluginSwitch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->pluginSwitch:Z

    return-void
.end method

.method public setSlowDomThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowDomThreshold:I

    return-void
.end method

.method public setSlowFirstPaintThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowFirstPaintThreshold:I

    return-void
.end method

.method public setSlowFirstScreenThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowFirstScreenThreshold:I

    return-void
.end method

.method public setSlowInteractionThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowInteractionThreshold:I

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/r;->h(I)V

    return-void
.end method

.method public setSlowPageDurationThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowPageDurationThreshold:I

    return-void
.end method

.method public setSlowPageLoadThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowPageLoadThreshold:I

    return-void
.end method

.method public setSlowPageThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowPageThreshold:I

    return-void
.end method

.method public setSlowStartThreshold(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowStartThreshold:J

    return-void
.end method

.method public setSlowUserActionThreshold(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowUserActionThreshold:J

    return-void
.end method

.method public setStackDepth(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackDepth:I

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/r;->k(I)V

    return-void
.end method

.method public setStackInterval(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->stackInterval:I

    return-void
.end method

.method public setTingyunId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->deviceId:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/r;->l(Ljava/lang/String;)V

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->token:Ljava/lang/String;

    return-void
.end method

.method public setTyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyId:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/r;->m(Ljava/lang/String;)V

    return-void
.end method

.method public setTyPlatformValue(I)Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->tyPlatformValue:I

    return-object p0
.end method

.method public setUiPages(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiPages:I

    return-void
.end method

.method public setUiTraceRetries(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceRetries:I

    return-void
.end method

.method public setUiTraceSize(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceSize:I

    return-void
.end method

.method public setUiTraceThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceThreshold:F

    return-void
.end method

.method public setUiTraces(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraces:I

    return-void
.end method

.method public setUrlFilterMode(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlFilterMode:I

    return-void
.end method

.method public setUrlRules(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->setUrlRulesToString(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "matchMode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "rule"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/networkbench/agent/impl/data/j$b;

    invoke-direct {v4}, Lcom/networkbench/agent/impl/data/j$b;-><init>()V

    iput v3, v4, Lcom/networkbench/agent/impl/data/j$b;->a:I

    iput-object v2, v4, Lcom/networkbench/agent/impl/data/j$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlRules:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set UrlRules info"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setUrlRulesToString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlRulesToString:Ljava/lang/String;

    return-void
.end method

.method public setUserActions(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->userActions:I

    return-void
.end method

.method public setWhiteList(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->whiteList:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "did:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "token:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->token:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "interval:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->interval:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "intervalOnIdle:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->intervalOnIdle:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "urlFilterMode:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlFilterMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "uiTraces:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraces:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "uiTraceSize:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "uiTraceRetries:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceRetries:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "uiTraceThreshold:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->uiTraceThreshold:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "crashTrails:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->crashTrails:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "controllerInterval:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->controllerInterval:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "cdnHeaderName:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->cdnHeaderName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "hotStartThreshold:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->hotStartThreshold:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "slowStartThreshold : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowStartThreshold:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "slowUserActionThreshold :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->slowUserActionThreshold:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "userActions : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->userActions:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "features :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->feature:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "apms  :  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->apmsIssue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pluginSwitch : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->pluginSwitch:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlRules:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v3, "urlRules:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/data/j$b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "matchMode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lcom/networkbench/agent/impl/data/j$b;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rule:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/networkbench/agent/impl/data/j$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->nbsSessionConfig:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlParamArray:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, ";"

    const-string v3, "url"

    if-eqz v1, :cond_1

    const-string v1, "urlParamArray:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlParamArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/data/j$c;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;

    iget-object v4, v4, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->url:Ljava/lang/String;

    const-string v6, ", item:"

    invoke-static {v3, v4, v6}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/data/j$c;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlParamBlackArray:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    const-string v1, "urlParamBlackArray"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->urlParamBlackArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/data/j$c;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;

    iget-object v4, v4, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;->url:Ljava/lang/String;

    const-string v6, ", black item:"

    invoke-static {v3, v4, v6}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/data/j$c;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoreErrRules:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const-string v1, "ignoreErrRules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->ignoreErrRules:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/data/j$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "errorCode"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/networkbench/agent/impl/data/j$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rule:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/networkbench/agent/impl/data/j$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",matchMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/networkbench/agent/impl/data/j$a;->a:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
