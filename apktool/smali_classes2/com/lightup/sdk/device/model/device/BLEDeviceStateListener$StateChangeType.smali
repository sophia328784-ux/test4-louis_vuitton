.class public final enum Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StateChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

.field public static final enum BATTERY:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

.field public static final enum BLE_DEVICE_STATE:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

.field public static final enum CONNECTION_STATE:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;
    .locals 3

    sget-object v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->BATTERY:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    sget-object v1, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->BLE_DEVICE_STATE:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    sget-object v2, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->CONNECTION_STATE:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    filled-new-array {v0, v1, v2}, [Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    const-string v1, "BATTERY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->BATTERY:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    new-instance v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    const-string v1, "BLE_DEVICE_STATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->BLE_DEVICE_STATE:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    new-instance v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    const-string v1, "CONNECTION_STATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->CONNECTION_STATE:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    invoke-static {}, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->$values()[Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->$VALUES:[Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->$VALUES:[Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    return-object v0
.end method
