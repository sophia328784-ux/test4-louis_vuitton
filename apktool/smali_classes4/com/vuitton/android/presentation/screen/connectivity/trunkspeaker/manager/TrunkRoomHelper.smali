.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper;",
        "",
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


# direct methods
.method public static a(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkplay/core/device/LPDevice;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/group/LPMultiroomManager;->getInstance()Lcom/linkplay/core/group/LPMultiroomManager;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$createMultiRoomWithMaster$2;

    invoke-direct {v1, p2, p3}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper$createMultiRoomWithMaster$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/linkplay/core/group/LPMultiroomManager;->deviceMultiroomWithSlaveDeviceList(Ljava/util/List;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V

    return-void
.end method

.method public static b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getProject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "U_Trunk_speaker_GM"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getProject()Ljava/lang/String;

    move-result-object v2

    const-string v3, "U_Trunk_speaker_PM"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static c()Ljava/util/ArrayList;
    .locals 8

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->getMasterDevices()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkplay/core/device/LPDevice;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/linkplay/core/device/LPDevice;

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v5

    invoke-virtual {v4}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/linkplay/core/app/LPDeviceManager;->getSlaveDevices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    new-instance v6, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;

    new-instance v7, Ljava/util/ArrayList;

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v4, v7}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;-><init>(Lcom/linkplay/core/device/LPDevice;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;

    sget-object v6, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->b(Lcom/linkplay/core/device/LPDevice;)Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;-><init>(Lcom/linkplay/core/device/LPDevice;Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method
