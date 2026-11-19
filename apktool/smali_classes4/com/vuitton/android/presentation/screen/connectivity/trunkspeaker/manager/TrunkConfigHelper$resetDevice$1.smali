.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper$resetDevice$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/core/device/LPDeviceSettingsListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper$resetDevice$1",
        "Lcom/linkplay/core/device/LPDeviceSettingsListener;",
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
.field public final synthetic a:Lcom/linkplay/core/device/LPDevice;

.field public final synthetic b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/a;

.field public final synthetic c:Lv61;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevice;Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/a;Lv61;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper$resetDevice$1;->a:Lcom/linkplay/core/device/LPDevice;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper$resetDevice$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/a;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper$resetDevice$1;->c:Lv61;

    return-void
.end method


# virtual methods
.method public final failure(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper$resetDevice$1;->c:Lv61;

    invoke-virtual {p0}, Lv61;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final success(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper$resetDevice$1;->a:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/linkplay/core/app/LPDeviceManager;->deleteLPDevice(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper$resetDevice$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/a;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/a;->invoke()Ljava/lang/Object;

    return-void
.end method
