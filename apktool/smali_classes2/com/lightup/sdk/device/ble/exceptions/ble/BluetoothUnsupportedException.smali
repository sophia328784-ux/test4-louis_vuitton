.class public Lcom/lightup/sdk/device/ble/exceptions/ble/BluetoothUnsupportedException;
.super Lcom/lightup/sdk/device/ble/exceptions/ble/BluetoothException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lightup/sdk/device/ble/exceptions/ble/BluetoothException;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Bluetooth is not supported on this device"

    return-object p0
.end method
