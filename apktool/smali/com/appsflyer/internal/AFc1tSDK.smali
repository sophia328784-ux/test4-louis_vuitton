.class public final Lcom/appsflyer/internal/AFc1tSDK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/internal/AFb1aSDK;


# instance fields
.field private final AFLogger:Lcom/appsflyer/internal/AFc1eSDK;

.field private final d:Lcom/appsflyer/internal/AFf1fSDK;

.field private final unregisterClient:Lcom/appsflyer/internal/AFd1zSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1eSDK;Lcom/appsflyer/internal/AFd1zSDK;Lcom/appsflyer/internal/AFf1fSDK;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1tSDK;->AFLogger:Lcom/appsflyer/internal/AFc1eSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFc1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1zSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFc1tSDK;->d:Lcom/appsflyer/internal/AFf1fSDK;

    return-void
.end method

.method public static synthetic a(Lcom/appsflyer/internal/AFc1tSDK;Lcom/google/android/gms/appset/AppSetIdInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFc1tSDK;->registerClient(Lcom/appsflyer/internal/AFc1tSDK;Lcom/google/android/gms/appset/AppSetIdInfo;)V

    return-void
.end method

.method private static final registerClient(Lcom/appsflyer/internal/AFc1tSDK;Lcom/google/android/gms/appset/AppSetIdInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/appsflyer/internal/AFc1tSDK;->AFLogger:Lcom/appsflyer/internal/AFc1eSDK;

    new-instance v0, Lcom/appsflyer/internal/AFc1rSDK;

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcom/appsflyer/internal/AFc1rSDK;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1eSDK;->setUserEmail:Lcom/appsflyer/internal/AFc1rSDK;

    return-void
.end method


# virtual methods
.method public final AFLogger()Z
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1tSDK;->d:Lcom/appsflyer/internal/AFf1fSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFf1fSDK;->AFLogger()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1tSDK;->AFLogger:Lcom/appsflyer/internal/AFc1eSDK;

    iget-boolean v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->setCustomerUserId:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1zSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFd1zSDK;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/AFj1qSDK;->AFLogger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/appsflyer/internal/AFc1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1zSDK;

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1zSDK;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/appsflyer/internal/AFj1qSDK;->registerClient(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final unregisterClient()V
    .locals 10

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1zSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFd1zSDK;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/k;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/k;-><init>(Lcom/appsflyer/internal/AFc1tSDK;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->APP_SET_ID:Lcom/appsflyer/sdk_base/logger/LogTag;

    const/16 v8, 0x78

    const/4 v9, 0x0

    const-string v2, "Error while trying to  fetch App set ID"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->e$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    :cond_0
    return-void
.end method
