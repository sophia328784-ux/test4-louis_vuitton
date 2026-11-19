.class public Lcom/networkbench/agent/impl/harvest/ApplicationInformation;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"


# static fields
.field public static final CHANNEL_ID_DEFAULT_NAME:Ljava/lang/String; = "TINGYUN_UNKNOWN"

.field public static final CHANNEL_ID_NAME:Ljava/lang/String; = "NBS_CHANNEL"

.field public static customSetChannelId:Ljava/lang/String;

.field private static final log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private packageId:Ljava/lang/String;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private sdkBuildId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "TINGYUN_UNKNOWN"

    sput-object v0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->customSetChannelId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->packageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getBuildId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->sdkBuildId:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    sget-object p1, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->customSetChannelId:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->channelId:Ljava/lang/String;

    return-void
.end method

.method private configureJsonArrayWithAppInfo(Lcom/networkbench/com/google/gson/JsonArray;)V
    .locals 2

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void
.end method

.method private generateAppName()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataAppName:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-static {v0}, Lcom/networkbench/agent/impl/e/b;->a(Lcom/networkbench/agent/impl/PrivacyDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->appName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    return-void
.end method

.method private generateAppVersion()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataBundleId:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-static {v0}, Lcom/networkbench/agent/impl/e/b;->a(Lcom/networkbench/agent/impl/PrivacyDataType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/e/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->log:Lcom/networkbench/agent/impl/c/e;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method private generateChannel()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getChannelIdStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->channelId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->isValidChannelId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->channelId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getChannelIdFromManifest()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "NBS_CHANNEL"

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->packageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, " not configure the channelID  in the AndroidManifest"

    invoke-interface {p0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    sget-object v1, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->log:Lcom/networkbench/agent/impl/c/e;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method private getChannelIdStr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->channelId:Ljava/lang/String;

    const-string v1, "TINGYUN_UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getChannelIdFromManifest()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method private isValidChannelId(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "[0-9]+"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x100

    if-gt p0, v0, :cond_1

    const-string p0, "TINGYUN_UNKNOWN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "channelId is invalid:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->configureJsonArrayWithAppInfo(Lcom/networkbench/com/google/gson/JsonArray;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->sdkBuildId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->channelId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->optional(Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->channelId:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public asSocketJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->configureJsonArrayWithAppInfo(Lcom/networkbench/com/google/gson/JsonArray;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string v2, "agent-android"

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->sdkBuildId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->channelId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->optional(Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->channelId:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public generateAppInfo()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->generateAppVersion()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->generateAppName()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->generateChannel()V

    return-void
.end method

.method public generateData()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->generateAppVersion()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->generateAppName()V

    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    return-object p0
.end method
