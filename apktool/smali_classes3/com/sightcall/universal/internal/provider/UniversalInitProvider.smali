.class public Lcom/sightcall/universal/internal/provider/UniversalInitProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    if-eqz p2, :cond_1

    const-string v0, "com.sightcall.universal.universalinitprovider"

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    :cond_0
    const-string p0, "Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application\'s build.gradle."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "UniversalInitProvider providerInfo cannot be null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/sightcall/core/InitSightcallKt;->initSightcall(Landroid/app/Application;)V

    invoke-static {}, Lcom/sightcall/universal/di/DaggerSdkComponent;->builder()Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;

    move-result-object v0

    invoke-static {}, Lcom/sightcall/core/InitSightcallKt;->getSightCallComponent()Lcom/sightcall/core/di/SightCallComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->sightCallComponent(Lcom/sightcall/core/di/SightCallComponent;)Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;

    move-result-object v0

    invoke-static {}, Lcom/sightcall/capabilities/di/CapabilitiesComponentKt;->newCapabilitiesModuleComponent()Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->capabilitiesComponent(Lcom/sightcall/capabilities/di/CapabilitiesComponent;)Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;

    move-result-object v0

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->caseReportComponent(Lcom/sightcall/universal/internal/report/di/CaseReportComponent;)Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/di/SdkModule;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/di/SdkModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->sdkModule(Lcom/sightcall/universal/di/SdkModule;)Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/sightcall/httpclient/di/HttpClientModule;

    const-string v2, "7.10.2 Build 800120953"

    const v3, 0x171a660

    invoke-direct {v1, v2, v3}, Lcom/sightcall/httpclient/di/HttpClientModule;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->httpClientModule(Lcom/sightcall/httpclient/di/HttpClientModule;)Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->build()Lcom/sightcall/universal/di/SdkComponent;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/di/SDKInjectorI;->Companion:Lcom/sightcall/universal/di/SDKInjectorI$Companion;

    invoke-virtual {v1, v0}, Lcom/sightcall/universal/di/SDKInjectorI$Companion;->create(Lcom/sightcall/universal/di/SdkComponent;)Lcom/sightcall/universal/di/SDKInjectorI;

    invoke-static {p0}, Lcom/sightcall/universal/util/Feature;->ensureCompatibility(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->init(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
