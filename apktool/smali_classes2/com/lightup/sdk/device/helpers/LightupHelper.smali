.class public Lcom/lightup/sdk/device/helpers/LightupHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;,
        Lcom/lightup/sdk/device/helpers/LightupHelper$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u0000 32\u00020\u0001:\u00013B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0018\u001a\u00020\u0017J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010\u001e\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\u001f\u001a\u00020\u0015H\u0002J\u001e\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u001b\u001a\u00020#2\u0006\u0010$\u001a\u00020%J\u0010\u0010&\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\'\u001a\u00020\u0015H\u0002J\u0016\u0010(\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u001b\u001a\u00020)J\u001c\u0010*\u001a\u00020\u001a2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\"0,2\u0006\u0010\u001b\u001a\u00020-J\u000e\u0010.\u001a\u00020\u00152\u0006\u0010/\u001a\u00020\u0017J\u001e\u00100\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"2\u0006\u00101\u001a\u0002022\u0006\u0010\u001b\u001a\u00020-R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/lightup/sdk/device/helpers/LightupHelper;",
        "",
        "activationKey",
        "",
        "context",
        "Landroid/content/Context;",
        "bleAvailabilityListener",
        "Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;",
        "<init>",
        "(Ljava/lang/String;Landroid/content/Context;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V",
        "keepAllHelper",
        "Lcom/lightup/sdk/device/helpers/KeepAllHelper;",
        "x408Helper",
        "Lcom/lightup/sdk/device/helpers/X408Helper;",
        "trunkHelper",
        "Lcom/lightup/sdk/device/helpers/TrunkHelper;",
        "getDeviceHelper",
        "Lcom/lightup/sdk/device/helpers/LightupHelperInterface;",
        "type",
        "Lcom/lightup/sdk/device/enums/LightupDeviceType;",
        "setAdminMode",
        "",
        "isAdmin",
        "",
        "isAdminModeEnable",
        "startScan",
        "Lcom/lightup/sdk/device/enums/CallStatus;",
        "listener",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;",
        "startDeviceScanProcess",
        "stopScan",
        "stopAllScans",
        "connect",
        "device",
        "Lcom/lightup/sdk/device/devicemanagement/LightupDevice;",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;",
        "monitoring",
        "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;",
        "disconnect",
        "disconnectAll",
        "ping",
        "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;",
        "twinPair",
        "devices",
        "",
        "Lcom/lightup/sdk/device/features/process/listener/ActionListener;",
        "setTestFolder",
        "useTestFolder",
        "setSide",
        "orientation",
        "Lcom/lightup/sdk/device/enums/PairOrientation;",
        "Companion",
        "library"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;

.field private static final defaultKeepAllWalkingConfig:Lcom/lightup/sdk/device/model/WalkingModeConfig;

.field private static final defaultWalkingConfig:Lcom/lightup/sdk/device/model/WalkingModeConfig;

.field private static final defaultX408WalkingConfig:Lcom/lightup/sdk/device/model/WalkingModeConfig;


# instance fields
.field private keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

.field private trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

.field private x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/lightup/sdk/device/helpers/LightupHelper;->Companion:Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;

    new-instance v2, Lcom/lightup/sdk/device/model/WalkingModeConfig;

    const/4 v0, 0x7

    new-array v5, v0, [Z

    fill-array-data v5, :array_0

    const/16 v6, 0x64

    const/4 v7, 0x5

    const/16 v3, 0x1f4

    const/16 v4, 0x2bc

    invoke-direct/range {v2 .. v7}, Lcom/lightup/sdk/device/model/WalkingModeConfig;-><init>(II[ZII)V

    sput-object v2, Lcom/lightup/sdk/device/helpers/LightupHelper;->defaultWalkingConfig:Lcom/lightup/sdk/device/model/WalkingModeConfig;

    new-instance v3, Lcom/lightup/sdk/device/model/WalkingModeConfig;

    new-array v6, v0, [Z

    fill-array-data v6, :array_1

    const/16 v7, 0x64

    const/4 v8, 0x5

    const/16 v4, 0x1f4

    const/16 v5, 0x2bc

    invoke-direct/range {v3 .. v8}, Lcom/lightup/sdk/device/model/WalkingModeConfig;-><init>(II[ZII)V

    sput-object v3, Lcom/lightup/sdk/device/helpers/LightupHelper;->defaultX408WalkingConfig:Lcom/lightup/sdk/device/model/WalkingModeConfig;

    new-instance v4, Lcom/lightup/sdk/device/model/WalkingModeConfig;

    new-array v7, v0, [Z

    fill-array-data v7, :array_2

    const/16 v8, 0x64

    const/16 v9, 0xa

    const/16 v5, 0xbb8

    const/4 v6, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/lightup/sdk/device/model/WalkingModeConfig;-><init>(II[ZII)V

    sput-object v4, Lcom/lightup/sdk/device/helpers/LightupHelper;->defaultKeepAllWalkingConfig:Lcom/lightup/sdk/device/model/WalkingModeConfig;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    invoke-direct {v0, p2, p1, p3}, Lcom/lightup/sdk/device/helpers/KeepAllHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V

    iput-object v0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    new-instance v0, Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-direct {v0, p2, p1, p3}, Lcom/lightup/sdk/device/helpers/X408Helper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V

    iput-object v0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    new-instance v0, Lcom/lightup/sdk/device/helpers/TrunkHelper;

    invoke-direct {v0, p2, p1, p3}, Lcom/lightup/sdk/device/helpers/TrunkHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V

    iput-object v0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    return-void
.end method

.method public static final synthetic access$getDefaultKeepAllWalkingConfig$cp()Lcom/lightup/sdk/device/model/WalkingModeConfig;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/helpers/LightupHelper;->defaultKeepAllWalkingConfig:Lcom/lightup/sdk/device/model/WalkingModeConfig;

    return-object v0
.end method

.method public static final synthetic access$getDefaultWalkingConfig$cp()Lcom/lightup/sdk/device/model/WalkingModeConfig;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/helpers/LightupHelper;->defaultWalkingConfig:Lcom/lightup/sdk/device/model/WalkingModeConfig;

    return-object v0
.end method

.method public static final synthetic access$getDefaultX408WalkingConfig$cp()Lcom/lightup/sdk/device/model/WalkingModeConfig;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/helpers/LightupHelper;->defaultX408WalkingConfig:Lcom/lightup/sdk/device/model/WalkingModeConfig;

    return-object v0
.end method

.method public static synthetic disconnect$default(Lcom/lightup/sdk/device/helpers/LightupHelper;Lcom/lightup/sdk/device/enums/LightupDeviceType;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/lightup/sdk/device/enums/LightupDeviceType;->UNKNOWN:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/helpers/LightupHelper;->disconnect(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: disconnect"

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-void
.end method

.method private final disconnectAll()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->disconnect()V

    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/helpers/X408Helper;->disconnect()V

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->disconnect()V

    return-void
.end method

.method public static synthetic setAdminMode$default(Lcom/lightup/sdk/device/helpers/LightupHelper;ZLcom/lightup/sdk/device/enums/LightupDeviceType;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/lightup/sdk/device/enums/LightupDeviceType;->UNKNOWN:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/helpers/LightupHelper;->setAdminMode(ZLcom/lightup/sdk/device/enums/LightupDeviceType;)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: setAdminMode"

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-void
.end method

.method private final startDeviceScanProcess(Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1

    new-instance v0, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;

    invoke-direct {v0, p1}, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;-><init>(Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;)V

    iget-object p1, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    invoke-virtual {p1, v0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->startDeviceScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/helpers/X408Helper;->startPairScanProcess(Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method

.method public static synthetic startScan$default(Lcom/lightup/sdk/device/helpers/LightupHelper;Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;Lcom/lightup/sdk/device/enums/LightupDeviceType;ILjava/lang/Object;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/lightup/sdk/device/enums/LightupDeviceType;->UNKNOWN:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/helpers/LightupHelper;->startScan(Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: startScan"

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final stopAllScans()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->stopScan()V

    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/helpers/X408Helper;->stopScan()V

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->stopScan()V

    return-void
.end method

.method public static synthetic stopScan$default(Lcom/lightup/sdk/device/helpers/LightupHelper;Lcom/lightup/sdk/device/enums/LightupDeviceType;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/lightup/sdk/device/enums/LightupDeviceType;->UNKNOWN:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/helpers/LightupHelper;->stopScan(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: stopScan"

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final connect(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getType()Lcom/lightup/sdk/device/enums/LightupDeviceType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/lightup/sdk/device/helpers/LightupHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 p0, 0x5

    if-eq v0, p0, :cond_1

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_1
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->isInternal$library()Z

    move-result v0

    iget-object v1, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getBleDevice$library()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    invoke-direct {v2, p1, p2, p0}, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;-><init>(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;Lcom/lightup/sdk/device/helpers/LightupHelperInterface;)V

    invoke-virtual {v1, v0, v2, p3}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getDeviceIds$library()Ljava/util/ArrayList;

    move-result-object v0

    new-array v3, v2, [Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/model/device/DeviceId;

    new-instance v3, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    invoke-direct {v3, p1, p2, p0}, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;-><init>(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;Lcom/lightup/sdk/device/helpers/LightupHelperInterface;)V

    invoke-virtual {v1, v0, v2, p3, v3}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->startDeviceConnectionProcess([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->isInternal$library()Z

    move-result v0

    iget-object v1, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getPair$library()Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->getRightDevice()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getPair$library()Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->getLeftDevice()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0, v2}, [Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-direct {v2, p1, p2, p0}, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;-><init>(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;Lcom/lightup/sdk/device/helpers/LightupHelperInterface;)V

    invoke-virtual {v1, v0, v2, p3}, Lcom/lightup/sdk/device/helpers/X408Helper;->connectToPair(Ljava/util/List;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getDeviceIds$library()Ljava/util/ArrayList;

    move-result-object v0

    new-array v3, v2, [Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/model/device/DeviceId;

    new-instance v3, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-direct {v3, p1, p2, p0}, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;-><init>(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;Lcom/lightup/sdk/device/helpers/LightupHelperInterface;)V

    invoke-virtual {v1, v0, v2, p3, v3}, Lcom/lightup/sdk/device/helpers/X408Helper;->startDeviceConnectionProcess([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_7
    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->isInternal$library()Z

    move-result v0

    iget-object v1, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getBleDevice$library()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    invoke-direct {v2, p1, p2, p0}, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;-><init>(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;Lcom/lightup/sdk/device/helpers/LightupHelperInterface;)V

    invoke-virtual {v1, v0, v2, p3}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getDeviceIds$library()Ljava/util/ArrayList;

    move-result-object v0

    new-array v3, v2, [Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/model/device/DeviceId;

    new-instance v3, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    invoke-direct {v3, p1, p2, p0}, Lcom/lightup/sdk/device/helpers/UnifiedConnectionListener;-><init>(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;Lcom/lightup/sdk/device/helpers/LightupHelperInterface;)V

    invoke-virtual {v1, v0, v2, p3, v3}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->startDeviceConnectionProcess([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public final disconnect(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/lightup/sdk/device/helpers/LightupHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/lightup/sdk/device/helpers/LightupHelper;->disconnectAll()V

    return-void

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->disconnect()V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/X408Helper;->disconnect()V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->disconnect()V

    return-void
.end method

.method public final getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/lightup/sdk/device/helpers/LightupHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    return-object p0
.end method

.method public final isAdminModeEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->isAdminModeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/helpers/X408Helper;->isAdminModeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->isAdminModeEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final ping(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getType()Lcom/lightup/sdk/device/enums/LightupDeviceType;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/lightup/sdk/device/helpers/LightupHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_0
    if-eq v0, v1, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 p0, 0x5

    if-ne v0, p0, :cond_1

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getBleDevice$library()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->ping(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getPair$library()Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/helpers/X408Helper;->pingPair(Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getBleDevice$library()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/helpers/X408Helper;->pingDevice(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getBleDevice$library()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->ping(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method

.method public final setAdminMode(ZLcom/lightup/sdk/device/enums/LightupDeviceType;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/lightup/sdk/device/helpers/LightupHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string v1, "42633eab2bb146e19031e6b65a47c9b7"

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    const-string v2, "be735c4894a94265a83883da909058e8"

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    if-eqz p1, :cond_0

    invoke-virtual {p2, v1}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->enableAdminMode(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-virtual {p1, v2}, Lcom/lightup/sdk/device/helpers/X408Helper;->enableAdminMode(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->enableAdminMode(Ljava/lang/String;)Z

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->disableAdminMode()Z

    iget-object p1, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/helpers/X408Helper;->disableAdminMode()Z

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->disableAdminMode()Z

    return-void

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->enableAdminMode(Ljava/lang/String;)Z

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->disableAdminMode()Z

    return-void

    :cond_4
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Lcom/lightup/sdk/device/helpers/X408Helper;->enableAdminMode(Ljava/lang/String;)Z

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/X408Helper;->disableAdminMode()Z

    return-void

    :cond_6
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    if-eqz p1, :cond_7

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->enableAdminMode(Ljava/lang/String;)Z

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->disableAdminMode()Z

    return-void
.end method

.method public final setSide(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->NOT_AVAILABLE:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method

.method public final setTestFolder(Z)V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    invoke-virtual {v0, p1}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->setTestFolder(Z)V

    iget-object v0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    invoke-virtual {v0, p1}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->setTestFolder(Z)V

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/helpers/X408Helper;->setTestFolder(Z)V

    return-void
.end method

.method public final startScan(Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/lightup/sdk/device/helpers/LightupHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/helpers/LightupHelper;->startDeviceScanProcess(Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    new-instance p2, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;

    invoke-direct {p2, p1}, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;-><init>(Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;)V

    invoke-virtual {p0, p2}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->startDeviceScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    new-instance p2, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;

    invoke-direct {p2, p1}, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;-><init>(Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;)V

    invoke-virtual {p0, p2}, Lcom/lightup/sdk/device/helpers/X408Helper;->startPairScanProcess(Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    new-instance p2, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;

    invoke-direct {p2, p1}, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;-><init>(Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;)V

    invoke-virtual {p0, p2}, Lcom/lightup/sdk/device/helpers/X408Helper;->startDeviceScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    new-instance p2, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;

    invoke-direct {p2, p1}, Lcom/lightup/sdk/device/helpers/UnifiedScanListener;-><init>(Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;)V

    invoke-virtual {p0, p2}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->startDeviceScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public final stopScan(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/lightup/sdk/device/helpers/LightupHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/lightup/sdk/device/helpers/LightupHelper;->stopAllScans()V

    return-void

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->trunkHelper:Lcom/lightup/sdk/device/helpers/TrunkHelper;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->stopScan()V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/X408Helper;->stopScan()V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->keepAllHelper:Lcom/lightup/sdk/device/helpers/KeepAllHelper;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->stopScan()V

    return-void
.end method

.method public final twinPair(Ljava/util/List;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/lightup/sdk/device/devicemanagement/LightupDevice;",
            ">;",
            "Lcom/lightup/sdk/device/features/process/listener/ActionListener;",
            ")",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->NOT_AVAILABLE:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getType()Lcom/lightup/sdk/device/enums/LightupDeviceType;

    move-result-object v1

    sget-object v2, Lcom/lightup/sdk/device/enums/LightupDeviceType;->X408:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getType()Lcom/lightup/sdk/device/enums/LightupDeviceType;

    move-result-object v1

    if-eq v1, v2, :cond_1

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->NOT_AVAILABLE:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getBleDevice$library()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-virtual {v4}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getBleDevice$library()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v2

    :cond_3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->NOT_AVAILABLE:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupHelper;->x408Helper:Lcom/lightup/sdk/device/helpers/X408Helper;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getBleDevice$library()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getBleDevice$library()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0, p1}, [Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/helpers/X408Helper;->twin(Ljava/util/List;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method
