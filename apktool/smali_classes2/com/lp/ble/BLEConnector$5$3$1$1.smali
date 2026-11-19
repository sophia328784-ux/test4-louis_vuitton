.class Lcom/lp/ble/BLEConnector$5$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$3:Lcom/lp/ble/BLEConnector$5$3$1;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEConnector$5$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$5$3$1$1;->this$3:Lcom/lp/ble/BLEConnector$5$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$5$3$1$1;->this$3:Lcom/lp/ble/BLEConnector$5$3$1;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5$3$1;->a:Lcom/lp/ble/BLEConnector$5$3;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5$3;->this$1:Lcom/lp/ble/BLEConnector$5;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$5$3$1$1;->this$3:Lcom/lp/ble/BLEConnector$5$3$1;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5$3$1;->a:Lcom/lp/ble/BLEConnector$5$3;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5$3;->this$1:Lcom/lp/ble/BLEConnector$5;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$5$3$1$1;->this$3:Lcom/lp/ble/BLEConnector$5$3$1;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5$3$1;->a:Lcom/lp/ble/BLEConnector$5$3;

    iget-object v1, v0, Lcom/lp/ble/BLEConnector$5$3;->this$1:Lcom/lp/ble/BLEConnector$5;

    iget-object v1, v1, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5$3;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {v1, v0}, Lcom/lp/ble/BLEConnector;->a(Lcom/lp/ble/BLEConnector;Lcom/clj/fastble/data/BleDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object v1, p0, Lcom/lp/ble/BLEConnector$5$3$1$1;->this$3:Lcom/lp/ble/BLEConnector$5$3$1;

    iget-object v1, v1, Lcom/lp/ble/BLEConnector$5$3$1;->a:Lcom/lp/ble/BLEConnector$5$3;

    iget-object v1, v1, Lcom/lp/ble/BLEConnector$5$3;->this$1:Lcom/lp/ble/BLEConnector$5;

    iget-object v1, v1, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    iget-object v1, v1, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$5$3$1$1;->this$3:Lcom/lp/ble/BLEConnector$5$3$1;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$5$3$1;->a:Lcom/lp/ble/BLEConnector$5$3;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$5$3;->this$1:Lcom/lp/ble/BLEConnector$5;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void
.end method
