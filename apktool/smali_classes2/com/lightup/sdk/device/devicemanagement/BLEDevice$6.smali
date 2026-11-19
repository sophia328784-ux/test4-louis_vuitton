.class Lcom/lightup/sdk/device/devicemanagement/BLEDevice$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->handleServicesDiscovery(Landroid/bluetooth/BluetoothGatt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

.field final synthetic val$bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$6;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$6;->val$bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iput-object p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$6;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$6;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->b(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$6;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->a(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$6;->val$bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$6;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$6;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->a(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->e(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
