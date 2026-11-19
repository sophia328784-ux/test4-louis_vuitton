.class public Lcom/linkplay/core/group/LPGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private masterDevice:Lcom/linkplay/core/device/LPDevice;

.field private slaveDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;"
        }
    .end annotation
.end field

.field private upnpUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linkplay/core/device/LPDevice;",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/core/group/LPGroup;->upnpUUID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/core/group/LPGroup;->upnpUUID:Ljava/lang/String;

    iput-object p1, p0, Lcom/linkplay/core/group/LPGroup;->masterDevice:Lcom/linkplay/core/device/LPDevice;

    iput-object p2, p0, Lcom/linkplay/core/group/LPGroup;->slaveDeviceList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getUpnpUUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/group/LPGroup;->upnpUUID:Ljava/lang/String;

    return-object p0
.end method
