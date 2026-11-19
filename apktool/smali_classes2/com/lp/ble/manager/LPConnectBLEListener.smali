.class public interface abstract Lcom/lp/ble/manager/LPConnectBLEListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lp/ble/BLEGattListener;


# virtual methods
.method public abstract synthetic onConnectFail(Ljava/lang/Exception;)V
.end method

.method public abstract synthetic onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V
.end method

.method public abstract synthetic onDisConnected(ZLandroid/bluetooth/BluetoothGatt;I)V
.end method

.method public abstract synthetic onFailed(ILjava/lang/String;)V
.end method

.method public abstract synthetic onReConnectBLE(Landroid/bluetooth/BluetoothGatt;I)V
.end method

.method public abstract synthetic onStartConnect()V
.end method
