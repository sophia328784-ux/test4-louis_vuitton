.class public Lcom/sightcall/universal/quality/QualityOfService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/quality/QualityOfService$Fps;,
        Lcom/sightcall/universal/quality/QualityOfService$Nqi;,
        Lcom/sightcall/universal/quality/QualityOfService$Response;,
        Lcom/sightcall/universal/quality/QualityOfService$Request;,
        Lcom/sightcall/universal/quality/QualityOfService$NetworkType;,
        Lcom/sightcall/universal/quality/QualityOfService$Status;
    }
.end annotation


# instance fields
.field public callDownlink:D
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "call_downlink_standard_deviation"
    .end annotation
.end field

.field public callDownlinkStatus:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "call_downlink_status"
    .end annotation
.end field

.field public callStatus:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "call_status"
    .end annotation
.end field

.field public callUplink:D
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "call_uplink_standard_deviation"
    .end annotation
.end field

.field public callUplinkStatus:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "call_uplink_status"
    .end annotation
.end field

.field public cameraAutofocus:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "camera_autofocus"
    .end annotation
.end field

.field public cameraFlashlight:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "camera_flashlight"
    .end annotation
.end field

.field public cameraStatus:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "camera_status"
    .end annotation
.end field

.field public cameraUsb:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "camera_usb_host"
    .end annotation
.end field

.field public cameraZoom:D
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "camera_zoom"
    .end annotation
.end field

.field public deviceName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "device_name"
    .end annotation
.end field

.field public deviceOs:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "device_os"
    .end annotation
.end field

.field public deviceVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "device_version"
    .end annotation
.end field

.field public fps:Ljava/util/List;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "fps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/quality/QualityOfService$Fps;",
            ">;"
        }
    .end annotation
.end field

.field public hardwareBatteryLevel:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "hardware_battery_value"
    .end annotation
.end field

.field public hardwareBatteryLevelStatus:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "hardware_battery_status"
    .end annotation
.end field

.field public hardwareCpuCoreCount:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "hardware_cpu_count_value"
    .end annotation
.end field

.field public hardwareCpuCoreCountStatus:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "hardware_cpu_count_status"
    .end annotation
.end field

.field public hardwareCpuCoreSpeedKHz:J
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "hardware_cpu_khz_value"
    .end annotation
.end field

.field public hardwareCpuCoreSpeedKHzStatus:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "hardware_cpu_khz_status"
    .end annotation
.end field

.field public hardwareStatus:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "hardware_status"
    .end annotation
.end field

.field public hardwareTotalRam:J
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "hardware_ram_value"
    .end annotation
.end field

.field public hardwareTotalRamStatus:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "hardware_ram_status"
    .end annotation
.end field

.field public networkLatency:J
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "network_latency_value"
    .end annotation
.end field

.field public networkLatencyStatus:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "network_latency_status"
    .end annotation
.end field

.field public networkPlatform:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "network_platform"
    .end annotation
.end field

.field public networkStatus:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "network_status"
    .end annotation
.end field

.field public networkType:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "network_type_value"
    .end annotation
.end field

.field public networkTypeStatus:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "network_type_status"
    .end annotation
.end field

.field public nqi:Ljava/util/List;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "nqi"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/quality/QualityOfService$Nqi;",
            ">;"
        }
    .end annotation
.end field

.field public status:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android"

    iput-object v0, p0, Lcom/sightcall/universal/quality/QualityOfService;->deviceOs:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/quality/QualityOfService;->deviceName:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/sightcall/universal/quality/QualityOfService;->deviceVersion:Ljava/lang/String;

    return-void
.end method
