.class public Lcom/lightup/sdk/device/devicemanagement/LightupDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lightup/sdk/device/devicemanagement/LightupDevice$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u00002\u00020\u0001B\u0019\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0019\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0006\u0010\nB\u0011\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u000cJ\u0006\u00102\u001a\u000203J\n\u00104\u001a\u00020\u0003H\u0096\u0080\u0004R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u000cR\u0011\u0010\u0016\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0014R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R*\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\u00170,j\u0008\u0012\u0004\u0012\u00020\u0017`-X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101\u00a8\u00065"
    }
    d2 = {
        "Lcom/lightup/sdk/device/devicemanagement/LightupDevice;",
        "",
        "name",
        "",
        "device",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "<init>",
        "(Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V",
        "pair",
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;",
        "(Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;)V",
        "deviceString",
        "(Ljava/lang/String;)V",
        "type",
        "Lcom/lightup/sdk/device/enums/LightupDeviceType;",
        "getType",
        "()Lcom/lightup/sdk/device/enums/LightupDeviceType;",
        "setType",
        "(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "uniqueId",
        "Lcom/lightup/sdk/device/model/device/DeviceId;",
        "getUniqueId",
        "()Lcom/lightup/sdk/device/model/device/DeviceId;",
        "debugIdentifier",
        "getDebugIdentifier",
        "bleDevice",
        "getBleDevice$library",
        "()Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "setBleDevice$library",
        "(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V",
        "getPair$library",
        "()Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;",
        "setPair$library",
        "(Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;)V",
        "isInternal",
        "",
        "isInternal$library",
        "()Z",
        "setInternal$library",
        "(Z)V",
        "deviceIds",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getDeviceIds$library",
        "()Ljava/util/ArrayList;",
        "setDeviceIds$library",
        "(Ljava/util/ArrayList;)V",
        "getOrientation",
        "Lcom/lightup/sdk/device/enums/PairOrientation;",
        "toString",
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
.field private bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

.field private deviceIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            ">;"
        }
    .end annotation
.end field

.field private isInternal:Z

.field private name:Ljava/lang/String;

.field private pair:Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;

.field private type:Lcom/lightup/sdk/device/enums/LightupDeviceType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    const-string p1, "name"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->name:Ljava/lang/String;

    .line 98
    const-string p1, "type"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/lightup/sdk/device/enums/LightupDeviceType;->valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/enums/LightupDeviceType;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->type:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    .line 99
    const-string p1, "deviceId"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 101
    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    new-instance v3, Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lightup/sdk/device/model/device/DeviceId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->isInternal:Z

    invoke-virtual {p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lightup/sdk/device/model/device/DeviceId;->getProductId()[B

    move-result-object p1

    invoke-static {p1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->a([B)I

    move-result p1

    sget-object p2, Lcom/lightup/sdk/device/SpecificProperties;->PRODUCT_ID_KEEP_ALL:[B

    invoke-static {p2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->a([B)I

    move-result p2

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/lightup/sdk/device/enums/LightupDeviceType;->KEEPALL:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->type:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    return-void

    :cond_0
    sget-object p2, Lcom/lightup/sdk/device/SpecificProperties;->PRODUCT_ID_X408:[B

    invoke-static {p2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->a([B)I

    move-result p2

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/lightup/sdk/device/enums/LightupDeviceType;->X408:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->type:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    return-void

    :cond_1
    sget-object p2, Lcom/lightup/sdk/device/SpecificProperties;->PRODUCT_ID_TRUNK:[B

    invoke-static {p2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->a([B)I

    move-result p2

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/lightup/sdk/device/enums/LightupDeviceType;->TRUNK:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->type:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    return-void

    :cond_2
    sget-object p1, Lcom/lightup/sdk/device/enums/LightupDeviceType;->UNKNOWN:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->type:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    .line 88
    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->name:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->pair:Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;

    .line 90
    sget-object p1, Lcom/lightup/sdk/device/enums/LightupDeviceType;->X408PAIR:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->type:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->isInternal:Z

    .line 92
    invoke-virtual {p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->getLeftDevice()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->getRightDevice()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getBleDevice$library()Lcom/lightup/sdk/device/devicemanagement/BLELightup;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    return-object p0
.end method

.method public final getDebugIdentifier()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const-string v2, "NC"

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/model/device/DeviceId;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->type:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    sget-object v3, Lcom/lightup/sdk/device/enums/LightupDeviceType;->X408PAIR:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-ne v1, v3, :cond_2

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/model/device/DeviceId;->getSerialNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceIds$library()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrientation()Lcom/lightup/sdk/device/enums/PairOrientation;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;->getOrientation()Lcom/lightup/sdk/device/enums/PairOrientation;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    sget-object p0, Lcom/lightup/sdk/device/enums/PairOrientation;->UNKNOWN:Lcom/lightup/sdk/device/enums/PairOrientation;

    return-object p0
.end method

.method public final getPair$library()Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->pair:Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;

    return-object p0
.end method

.method public final getType()Lcom/lightup/sdk/device/enums/LightupDeviceType;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->type:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    return-object p0
.end method

.method public final getUniqueId()Lcom/lightup/sdk/device/model/device/DeviceId;
    .locals 1

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/lightup/sdk/device/model/device/DeviceId;

    return-object p0
.end method

.method public final isInternal$library()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->isInternal:Z

    return p0
.end method

.method public final setBleDevice$library(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    return-void
.end method

.method public final setDeviceIds$library(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    return-void
.end method

.method public final setInternal$library(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->isInternal:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPair$library(Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->pair:Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;

    return-void
.end method

.method public final setType(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->type:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->type:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/lightup/sdk/device/devicemanagement/LightupDevice$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "\""

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0, v3}, Lo60;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->deviceIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\", \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->type:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/enums/LightupDeviceType;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v2, "\", \"type\": \""

    const-string v3, "\", \"deviceId\": ["

    const-string v4, "{ \"name\": \""

    invoke-static {v4, v1, v2, p0, v3}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "] }"

    invoke-static {v0, v1, p0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
