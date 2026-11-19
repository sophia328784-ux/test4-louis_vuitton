.class public Lcom/lightup/sdk/device/devicemanagement/BLEX408;
.super Lcom/lightup/sdk/device/devicemanagement/BLELightup;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\u000e\u001a\u00020\u0005H\u0016R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408;",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "deviceId",
        "Lcom/lightup/sdk/device/model/device/DeviceId;",
        "name",
        "",
        "mac",
        "twinSerialNumber",
        "bleX408Manager",
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;",
        "<init>",
        "(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)V",
        "getTwinSerialNumber",
        "()Ljava/lang/String;",
        "getName",
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


# instance fields
.field private final twinSerialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;-><init>(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V

    iput-object p4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408;->twinSerialNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getTwinSerialNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408;->twinSerialNumber:Ljava/lang/String;

    return-object p0
.end method
