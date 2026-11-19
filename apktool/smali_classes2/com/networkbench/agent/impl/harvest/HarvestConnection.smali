.class public Lcom/networkbench/agent/impl/harvest/HarvestConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_HOST_REDIRECT_NAME:Ljava/lang/String; = "redirect.networkbench.com"

.field public static final HOST_ERROR:I = 0x22b8

.field public static final INIT_SP_TAG:Ljava/lang/String; = "initresult"

.field public static IsCertEnabled:Z = false

.field private static final TAG:Ljava/lang/String; = "HarvestConnection"

.field public static isRedirectSuccess:Z

.field private static isSoDisable:Z

.field private static final log:Lcom/networkbench/agent/impl/c/e;

.field public static redirectHost:Ljava/lang/String;

.field private static redirectHostIndex:I

.field public static redirectHostList:[Ljava/lang/String;


# instance fields
.field private actionDefinerUrl:Ljava/lang/String;

.field private applicationToken:Ljava/lang/String;

.field private collectorHost:Ljava/lang/String;

.field private connectInformation:Lcom/networkbench/agent/impl/harvest/ConnectInformation;

.field private connectionInterface:Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;

.field private harvestSoc:Lcom/networkbench/agent/impl/harvest/HarvestSoc;

.field private resourceHost:Ljava/lang/String;

.field private useSsl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "tyrd1.tingyun.com"

    const-string v1, "tyrd2.tingyun.com"

    const-string v2, "redirect.networkbench.com"

    const-string v3, "tyrd1.networkbench.com"

    const-string v4, "tyrd2.networkbench.com"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHostList:[Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHostIndex:I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isRedirectSuccess:Z

    sput-object v2, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHost:Ljava/lang/String;

    sput-boolean v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->IsCertEnabled:Z

    sput-boolean v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isSoDisable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->Q()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->useSsl:Z

    :cond_0
    sput-boolean v1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isSoDisable:Z

    new-instance v0, Lcom/networkbench/agent/impl/harvest/HarvestSoc;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/HarvestSoc;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->harvestSoc:Lcom/networkbench/agent/impl/harvest/HarvestSoc;

    new-instance v0, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->initUserHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->z()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->connectionInterface:Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHostList:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHostIndex:I

    array-length v2, v0

    rem-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHostIndex:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHost:Ljava/lang/String;

    return-object v0
.end method

.method private getHttpScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->useSsl:Z

    if-eqz p0, :cond_1

    const-string p0, "https://"

    goto :goto_0

    :cond_1
    const-string p0, "http://"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRedirectResult()Ljava/lang/String;
    .locals 1

    new-instance p0, Lcom/networkbench/agent/impl/util/af;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    const-string v0, "initresult"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static isSoDisable()Z
    .locals 1

    sget-boolean v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isSoDisable:Z

    return v0
.end method

.method private showUploadActionDefinerLog(ILcom/networkbench/agent/impl/floatbtnmanager/l;)V
    .locals 2

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload ActionDefiner statusCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "statusCode is 503, bitmap error"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "statusCode is 502, appid error"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "statusCode is 501, token error"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "statusCode is 500, dc error"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "upload ActionDefiner success"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p2, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/l;->a(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActionDefinerHost()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->connectionInterface:Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/a/r;->d:Lcom/networkbench/agent/impl/harvest/a/r;

    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHost:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->useSsl:Z

    invoke-static {v1, v2, v3}, Lcom/networkbench/agent/impl/harvest/a/l;->a(Lcom/networkbench/agent/impl/harvest/a/r;Ljava/lang/String;Z)Lcom/networkbench/agent/impl/harvest/a/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;->sendDataGet(Lcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->actionDefinerUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getActionDefinerHost error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public getApplicationToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->applicationToken:Ljava/lang/String;

    return-object p0
.end method

.method public getConnectInformation()Lcom/networkbench/agent/impl/harvest/ConnectInformation;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->connectInformation:Lcom/networkbench/agent/impl/harvest/ConnectInformation;

    return-object p0
.end method

.method public getLogTrackDataProcess()Lcom/networkbench/agent/impl/harvest/a/k;
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/harvest/a/r;->p:Lcom/networkbench/agent/impl/harvest/a/r;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->collectorHost:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->useSsl:Z

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/harvest/a/l;->a(Lcom/networkbench/agent/impl/harvest/a/r;Ljava/lang/String;Z)Lcom/networkbench/agent/impl/harvest/a/h;

    move-result-object p0

    instance-of v0, p0, Lcom/networkbench/agent/impl/harvest/a/k;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/networkbench/agent/impl/harvest/a/k;

    return-object p0

    :cond_0
    const-string p0, "error result is not instance of LogTaskUrl"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRedirectHost()Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->connectionInterface:Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;

    sget-object v2, Lcom/networkbench/agent/impl/harvest/a/r;->a:Lcom/networkbench/agent/impl/harvest/a/r;

    sget-object v3, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHost:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->useSsl:Z

    invoke-static {v2, v3, v4}, Lcom/networkbench/agent/impl/harvest/a/l;->a(Lcom/networkbench/agent/impl/harvest/a/r;Ljava/lang/String;Z)Lcom/networkbench/agent/impl/harvest/a/h;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;->sendDataStr(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "send init info failed"

    invoke-interface {v2, v3, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->o()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->harvestSoc:Lcom/networkbench/agent/impl/harvest/HarvestSoc;

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestSoc;->setSocketInfo(Lcom/networkbench/agent/impl/harvest/d/c;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHost:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isRedirectSuccess:Z

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->h()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getRedirectResult()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/networkbench/agent/impl/harvest/a/r;->a:Lcom/networkbench/agent/impl/harvest/a/r;

    sget-object v3, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHost:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->useSsl:Z

    invoke-static {v2, v3, p0}, Lcom/networkbench/agent/impl/harvest/a/l;->a(Lcom/networkbench/agent/impl/harvest/a/r;Ljava/lang/String;Z)Lcom/networkbench/agent/impl/harvest/a/h;

    move-result-object p0

    if-eqz v0, :cond_4

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/harvest/d/c;->a(I)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/a/h;->b()Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->a()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHost:Ljava/lang/String;

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getResourceBmp()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->connectionInterface:Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/a/r;->k:Lcom/networkbench/agent/impl/harvest/a/r;

    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHost:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->useSsl:Z

    invoke-static {v1, v2, v3}, Lcom/networkbench/agent/impl/harvest/a/l;->a(Lcom/networkbench/agent/impl/harvest/a/r;Ljava/lang/String;Z)Lcom/networkbench/agent/impl/harvest/a/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;->sendDataGet(Lcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->resourceHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/floatbtnmanager/h;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->resourceHost:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getHttpScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/h;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/h;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getResourceHost error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized getResponse(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/r;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 3

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->connectionInterface:Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->collectorHost:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->useSsl:Z

    .line 36
    invoke-static {p2, v1, v2}, Lcom/networkbench/agent/impl/harvest/a/l;->a(Lcom/networkbench/agent/impl/harvest/a/r;Ljava/lang/String;Z)Lcom/networkbench/agent/impl/harvest/a/h;

    move-result-object p2

    .line 37
    invoke-interface {v0, p1, p2}, Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;->sendDataStr(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 38
    :try_start_1
    sget-object p2, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "send init info failed"

    invoke-interface {p2, v0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 39
    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized getResponse([BLcom/networkbench/agent/impl/harvest/a/r;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->connectionInterface:Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->collectorHost:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->useSsl:Z

    invoke-static {p2, v2, v3}, Lcom/networkbench/agent/impl/harvest/a/l;->a(Lcom/networkbench/agent/impl/harvest/a/r;Ljava/lang/String;Z)Lcom/networkbench/agent/impl/harvest/a/h;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;->sendDataOutputStream([BLcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    sget-object p2, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "send init info failed"

    invoke-interface {p2, v1, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public sendActionDefinerData(Lcom/networkbench/agent/impl/floatbtnmanager/l;Lcom/networkbench/agent/impl/floatbtnmanager/p;Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    const-string v1, "upload info statusCode:"

    const-string v2, "upload bitmap result is : "

    const-string v3, "action definer url:"

    const-string v4, "selectInfo appId:"

    :try_start_0
    iget-object v5, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->actionDefinerUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "sendActionDefinerData report url is empty"

    invoke-interface {p0, p2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const/16 p0, 0x22b8

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/l;->a(I)V

    return-void

    :cond_0
    const-string v5, "HarvestConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", acName:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", token:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", filePart:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", actionFetures:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->actionDefinerUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/mobile/operate/api/produceAppData"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getHttpScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;

    const-string v6, "utf-8"

    invoke-direct {v3, v4, v6}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "appId"

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "className"

    invoke-virtual {v3, v4, v0}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "methodName"

    invoke-virtual {v3, v4, v0}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "optTypeId"

    const-string v6, "64"

    invoke-virtual {v3, v4, v6}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "vcName"

    invoke-virtual {v3, v4, v0}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "acName"

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/p;->h()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p2, "files"

    invoke-virtual {v3, p2, v0}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFilePart(Ljava/lang/String;Ljava/io/File;)V

    const-string p2, "features"

    invoke-virtual {v3, p2, p3}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->finish()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v5, p3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "status"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "message"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->showUploadActionDefinerLog(ILcom/networkbench/agent/impl/floatbtnmanager/l;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v5, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "error process part"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public sendConnect()Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 3

    sget-boolean v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isSoDisable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->harvestSoc:Lcom/networkbench/agent/impl/harvest/HarvestSoc;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->connectInformation:Lcom/networkbench/agent/impl/harvest/ConnectInformation;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/HarvestSoc;->sendConnect(Lcom/networkbench/agent/impl/harvest/ConnectInformation;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->connectInformation:Lcom/networkbench/agent/impl/harvest/ConnectInformation;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init request body: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/j;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/harvest/a/r;->b:Lcom/networkbench/agent/impl/harvest/a/r;

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getResponse(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/r;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v0

    iget v0, v0, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHost:Ljava/lang/String;

    return-object p0

    :cond_3
    invoke-static {}, Lct0;->c()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public sendData(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send data JSON "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/harvest/a/r;->c:Lcom/networkbench/agent/impl/harvest/a/r;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->b(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p1, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getResponse(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/r;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object p0

    return-object p0
.end method

.method public sendData(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/r;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getResponse(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/r;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object p0

    return-object p0
.end method

.method public sendData([B)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send data "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/harvest/a/r;->o:Lcom/networkbench/agent/impl/harvest/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", JSON length:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getResponse([BLcom/networkbench/agent/impl/harvest/a/r;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object p0

    return-object p0
.end method

.method public sendDataPb(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/networkbench/agent/impl/harvest/HarvestSoc;->sendDataInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object p0

    return-object p0
.end method

.method public sendTransactionSpanData(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/a/r;->n:Lcom/networkbench/agent/impl/harvest/a/r;

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getResponse(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/r;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object p0

    return-object p0
.end method

.method public sendVisualInfo(Lcom/networkbench/agent/impl/floatbtnmanager/l;Lcom/networkbench/agent/impl/floatbtnmanager/m;Ljava/lang/String;)V
    .locals 6

    const-string v0, "upload info statusCode:"

    const-string v1, "upload bitmap result is : "

    const-string v2, "action definer url:"

    const-string v3, "selectInfo appId:"

    :try_start_0
    iget-object v4, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->actionDefinerUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "sendActionDefinerData report url is empty"

    invoke-interface {p0, p2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const/16 p0, 0x22b8

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/l;->a(I)V

    return-void

    :cond_0
    sget-object v4, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", name:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", features:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", filePart:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", actionFetures:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v4, p3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->actionDefinerUrl:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/mobile/api/ux/page/uploadVisualInfo"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getHttpScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;

    const-string v3, "utf-8"

    invoke-direct {v2, p3, v3}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "appId"

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "name"

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "features"

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "token"

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/io/File;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->e()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p2, "files"

    invoke-virtual {v2, p2, p3}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->addFilePart(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HttpMultiPart;->finish()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v4, p3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "status"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, "message"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->showUploadActionDefinerLog(ILcom/networkbench/agent/impl/floatbtnmanager/l;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "error process part"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setApplicationToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->applicationToken:Ljava/lang/String;

    return-void
.end method

.method public setCollectorHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->collectorHost:Ljava/lang/String;

    return-void
.end method

.method public setConnectInformation(Lcom/networkbench/agent/impl/harvest/ConnectInformation;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->connectInformation:Lcom/networkbench/agent/impl/harvest/ConnectInformation;

    return-void
.end method

.method public setSoDisable(Z)V
    .locals 0

    sput-boolean p1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isSoDisable:Z

    return-void
.end method

.method public useSsl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->useSsl:Z

    return-void
.end method
