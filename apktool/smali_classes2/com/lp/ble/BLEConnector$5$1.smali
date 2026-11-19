.class Lcom/lp/ble/BLEConnector$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/lp/ble/BLEConnector$5;

.field final synthetic val$bleDevice:Lcom/clj/fastble/data/BleDevice;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEConnector$5;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$5$1;->this$1:Lcom/lp/ble/BLEConnector$5;

    iput-object p2, p0, Lcom/lp/ble/BLEConnector$5$1;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$5$1;->this$1:Lcom/lp/ble/BLEConnector$5;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lp/ble/BLEConnector$5$1;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$5$1;->this$1:Lcom/lp/ble/BLEConnector$5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Lcom/clj/fastble/BleManager;->a(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleGattCallback;)V

    return-void
.end method
