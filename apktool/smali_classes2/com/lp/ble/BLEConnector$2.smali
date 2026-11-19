.class Lcom/lp/ble/BLEConnector$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/BLEConnector;-><init>(Lcom/lp/ble/entity/LPBluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lp/ble/BLEConnector;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEConnector;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$2;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$2;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->d()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    check-cast v1, Lcom/lp/ble/BLECharacteristicChangedListener;

    invoke-interface {v1, p1}, Lcom/lp/ble/BLECharacteristicChangedListener;->onResponseTimeout(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
