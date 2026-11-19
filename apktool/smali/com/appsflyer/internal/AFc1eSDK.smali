.class public final Lcom/appsflyer/internal/AFc1eSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public AFKeystoreWrapper:Ljava/lang/String;

.field public AFLogger:Ljava/lang/String;

.field public AFLoggerLogLevel:Ljava/lang/String;

.field public AppsFlyerLib:Ljava/lang/String;

.field public afDebugLog:Ljava/lang/Boolean;

.field public afErrorLog:Z

.field public afInfoLog:Z

.field public afWarnLog:Z

.field public clearUserPii:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public enableTCFDataCollection:Lcom/appsflyer/AFLogger$LogLevel;

.field public force:Ljava/lang/String;

.field public getEntries:Z

.field public getInstance:J

.field public getLevel:Ljava/lang/String;

.field public getOutOfStore:Ljava/lang/String;

.field public getSdkVersion:Ljava/lang/String;

.field public i:Ljava/lang/Long;

.field public onPause:J

.field public registerClient:Ljava/lang/String;

.field public setAndroidIdData:Z

.field public setCustomerUserId:Z

.field public setDebugLog:J

.field public setImeiData:Lcom/appsflyer/share/AppsFlyerConsent;

.field public setOaidData:Lcom/appsflyer/internal/AFd1nSDK;

.field public setUserEmail:Lcom/appsflyer/internal/AFc1rSDK;

.field public setUserFirstName:Z

.field public setUserLastName:Ljava/lang/String;

.field public setUserPhone:Z

.field public stop:Ljava/lang/String;

.field public unregisterClient:Ljava/lang/String;

.field public updateServerUninstallToken:Lcom/appsflyer/internal/AFh1qSDK;

.field public v:Lcom/appsflyer/internal/AFb1qSDK;

.field public valueOf:Ljava/lang/String;

.field public values:Ljava/lang/String;

.field public w:Lcom/appsflyer/internal/AFb1rSDK;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1eSDK;->enableTCFDataCollection:Lcom/appsflyer/AFLogger$LogLevel;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/appsflyer/internal/AFc1eSDK;->getInstance:J

    iput-wide v0, p0, Lcom/appsflyer/internal/AFc1eSDK;->onPause:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/appsflyer/internal/AFc1eSDK;->setDebugLog:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized registerClient(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1eSDK;->setOaidData:Lcom/appsflyer/internal/AFd1nSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
