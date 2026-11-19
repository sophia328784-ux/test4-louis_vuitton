.class public Lcom/lightup/sdk/device/ble/exceptions/ble/BLEDisabledException;
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

    const-string p0, "BLE is disabled"

    return-object p0
.end method
