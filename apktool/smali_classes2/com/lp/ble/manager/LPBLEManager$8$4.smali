.class Lcom/lp/ble/manager/LPBLEManager$8$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lp/ble/manager/LPBLEAPListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/manager/LPBLEManager$8;->onCharacteristicChanged(Lcom/lp/ble/entity/BLEResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lp/ble/manager/LPBLEManager$8;


# direct methods
.method public constructor <init>(Lcom/lp/ble/manager/LPBLEManager$8;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8$4;->this$1:Lcom/lp/ble/manager/LPBLEManager$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lp/ble/manager/ApItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8$4;->this$1:Lcom/lp/ble/manager/LPBLEManager$8;

    iget-object v0, v0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object v1, v0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object v1, v1, Lcom/lp/ble/manager/ConnectBLEInfo;->ssid:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/lp/ble/manager/LPBLEManager;->i(Lcom/lp/ble/manager/LPBLEManager;Ljava/util/List;Ljava/lang/String;)Lcom/lp/ble/manager/ApItem;

    move-result-object p1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8$4;->this$1:Lcom/lp/ble/manager/LPBLEManager$8;

    iget-object v0, v0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0, p1}, Lcom/lp/ble/manager/LPBLEManager;->k(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Z

    move-result v0

    iget-object v1, p0, Lcom/lp/ble/manager/LPBLEManager$8$4;->this$1:Lcom/lp/ble/manager/LPBLEManager$8;

    if-nez v0, :cond_1

    iget-object p0, v1, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v0, "need password"

    invoke-interface {p0, p1, v0}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, v1, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0, p1}, Lcom/lp/ble/manager/LPBLEManager;->h(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8$4;->this$1:Lcom/lp/ble/manager/LPBLEManager$8;

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->o(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V

    return-void
.end method
