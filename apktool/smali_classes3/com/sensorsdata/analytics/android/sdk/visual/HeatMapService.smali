.class public Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

.field private static mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;
    .locals 1

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->instance:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->instance:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->instance:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    return-object v0
.end method


# virtual methods
.method public isServiceRunning()Z
    .locals 0

    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->isServiceRunning()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resume()V
    .locals 0

    :try_start_0
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->startUpdates()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string p0, "HeatMapService"

    const-string v0, "HeatMapService service"

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "com.sensorsdata.analytics.android.ResourcePackageName"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->startUpdates()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-void
.end method

.method public stop()V
    .locals 1

    :try_start_0
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->stopUpdates(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-void
.end method
