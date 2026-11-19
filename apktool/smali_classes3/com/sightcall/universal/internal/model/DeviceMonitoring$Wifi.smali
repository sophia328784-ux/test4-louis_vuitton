.class Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/DeviceMonitoring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wifi"
.end annotation


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field final speed:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "speed"
    .end annotation
.end field

.field final ssid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "ssid"
    .end annotation
.end field

.field final strength:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "strength"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi$1;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi$1;-><init>()V

    sput-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->isUnknownSsid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    const-string v1, "^\"(.*)\"$"

    const-string v2, "$1"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->ssid:Ljava/lang/String;

    if-gtz p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, " Mbps"

    invoke-static {p2, p1}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->speed:Ljava/lang/String;

    iput p3, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->strength:I

    return-void
.end method

.method public static bridge synthetic a()Landroid/content/IntentFilter;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public static fetch(Landroid/content/Context;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->fetch(Landroid/content/Context;Landroid/net/NetworkInfo;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;

    move-result-object p0

    return-object p0
.end method

.method public static fetch(Landroid/content/Context;Landroid/net/NetworkInfo;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;
    .locals 3

    invoke-static {p0}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    return-object v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    const/4 v2, 0x5

    invoke-static {p0, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p0

    invoke-static {p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->isUnknownSsid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    return-object v1

    :cond_5
    new-instance v1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;

    invoke-direct {v1, p1, v0, p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;-><init>(Ljava/lang/String;II)V

    return-object v1
.end method

.method private static isUnknownSsid(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "<unknown ssid>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0x"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static update(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;)Z
    .locals 1

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->d(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->d(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->d(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->g(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;

    iget v2, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->strength:I

    iget v3, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->strength:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->ssid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    :goto_0
    return v1

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->speed:Ljava/lang/String;

    iget-object p1, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->speed:Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    if-nez p1, :cond_6

    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->ssid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->speed:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->strength:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wifi{ssid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', speed=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->speed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', strength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->strength:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
