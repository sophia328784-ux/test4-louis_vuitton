.class public Lcom/linkplay/ota2/model/LPOTAConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public firmWareDownloadTime:J

.field public firmWareRebootTime:J

.field public firmWareWriteTime:J

.field public firmwareType:Ljava/lang/String;

.field public mcuDownloadTime:J

.field public mcuType:Ljava/lang/String;

.field public mcuWriteTime:J

.field public mcueRebootTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/ota2/model/LPOTAConfiguration;->firmwareType:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/ota2/model/LPOTAConfiguration;->mcuType:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/linkplay/ota2/model/LPOTAConfiguration;->firmWareDownloadTime:J

    iput-wide v0, p0, Lcom/linkplay/ota2/model/LPOTAConfiguration;->firmWareWriteTime:J

    iput-wide v0, p0, Lcom/linkplay/ota2/model/LPOTAConfiguration;->firmWareRebootTime:J

    iput-wide v0, p0, Lcom/linkplay/ota2/model/LPOTAConfiguration;->mcuDownloadTime:J

    iput-wide v0, p0, Lcom/linkplay/ota2/model/LPOTAConfiguration;->mcuWriteTime:J

    iput-wide v0, p0, Lcom/linkplay/ota2/model/LPOTAConfiguration;->mcueRebootTime:J

    return-void
.end method

.method public static parseConfiguraion(Landroid/content/Context;)Lcom/linkplay/ota2/model/LPOTAConfiguration;
    .locals 3

    new-instance v0, Lcom/linkplay/ota2/model/LPOTAConfiguration;

    invoke-direct {v0}, Lcom/linkplay/ota2/model/LPOTAConfiguration;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "ota_configuration.properties"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "FW"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/linkplay/ota2/model/LPOTAConfiguration;->firmwareType:Ljava/lang/String;

    const-string v2, "MCU"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/linkplay/ota2/model/LPOTAConfiguration;->mcuType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
