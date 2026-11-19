.class public final Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;",
        "",
        "leftDevice",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "rightDevice",
        "<init>",
        "(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V",
        "getLeftDevice",
        "()Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "setLeftDevice",
        "(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V",
        "getRightDevice",
        "setRightDevice",
        "found",
        "",
        "getName",
        "",
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
.field private leftDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

.field private rightDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLELightup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->leftDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->rightDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLELightup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    return-void
.end method


# virtual methods
.method public final found()Z
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->leftDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->rightDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getLeftDevice()Lcom/lightup/sdk/device/devicemanagement/BLELightup;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->leftDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->leftDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->rightDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v0, v1}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRightDevice()Lcom/lightup/sdk/device/devicemanagement/BLELightup;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->rightDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    return-object p0
.end method

.method public final setLeftDevice(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->leftDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    return-void
.end method

.method public final setRightDevice(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->rightDevice:Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    return-void
.end method
