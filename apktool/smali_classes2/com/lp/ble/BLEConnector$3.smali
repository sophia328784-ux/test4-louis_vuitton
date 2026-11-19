.class Lcom/lp/ble/BLEConnector$3;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/clj/fastble/data/BleDevice;

.field public final synthetic b:Lcom/lp/ble/BLEConnector;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEConnector;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$3;->b:Lcom/lp/ble/BLEConnector;

    iput-object p2, p0, Lcom/lp/ble/BLEConnector$3;->a:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 1

    iget-object p1, p0, Lcom/lp/ble/BLEConnector$3;->b:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p1}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$3;->a:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1, p0}, Lcom/lp/ble/BLEConnector;->b(Lcom/lp/ble/BLEConnector;Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method public final onWriteSuccess(II[B)V
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$3;->b:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput p1, p0, Lcom/lp/ble/BLEConnector;->d:I

    return-void
.end method
