.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteDeviceFromRoom$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/core/group/LPMultiroomListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteDeviceFromRoom$1",
        "Lcom/linkplay/core/group/LPMultiroomListener;",
        "presentation"
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;

.field public final synthetic b:Lst0;

.field public final synthetic c:Lcom/linkplay/core/device/LPDevice;

.field public final synthetic d:Ltt0;


# direct methods
.method public constructor <init>(Lst0;Ltt0;Lcom/linkplay/core/device/LPDevice;Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteDeviceFromRoom$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteDeviceFromRoom$1;->b:Lst0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteDeviceFromRoom$1;->c:Lcom/linkplay/core/device/LPDevice;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteDeviceFromRoom$1;->d:Ltt0;

    return-void
.end method


# virtual methods
.method public final failed(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteDeviceFromRoom$1;->d:Ltt0;

    invoke-virtual {p0}, Ltt0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final success(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteDeviceFromRoom$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;->c:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v3}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteDeviceFromRoom$1;->c:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v4}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$deleteDeviceFromRoom$1;->b:Lst0;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;->b:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p0, p1, v1}, Lst0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
