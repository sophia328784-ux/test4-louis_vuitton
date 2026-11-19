.class public Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;
.super Lcom/lightup/sdk/device/ble/scanner/BLEScanner;
.source "SourceFile"


# instance fields
.field public final f:Landroid/bluetooth/le/ScanCallback;

.field public g:Landroid/bluetooth/le/BluetoothLeScanner;

.field public final h:Landroid/bluetooth/le/ScanSettings;

.field public final i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lightup/sdk/device/ble/exceptions/tracking/GPSException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;-><init>(Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;)V

    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;->h:Landroid/bluetooth/le/ScanSettings;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;->i:Ljava/util/ArrayList;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    new-instance p1, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {p1}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    sget-object v2, Lcom/lightup/sdk/device/properties/Properties;->h:[B

    const/4 v3, 0x4

    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v7, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-array v4, v5, [B

    invoke-virtual {p1, v2, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    new-array v2, v3, [B

    invoke-static {p2, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v7, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v2, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    new-array v1, v5, [B

    invoke-virtual {p1, p2, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;->g:Landroid/bluetooth/le/BluetoothLeScanner;

    new-instance p1, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner$1;

    invoke-direct {p1, p0}, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner$1;-><init>(Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;)V

    iput-object p1, p0, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;->f:Landroid/bluetooth/le/ScanCallback;

    return-void

    :cond_1
    new-instance p0, Lcom/lightup/sdk/device/ble/exceptions/tracking/LocationGrantedException;

    invoke-direct {p0}, Lcom/lightup/sdk/device/ble/exceptions/tracking/LocationGrantedException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lcom/lightup/sdk/device/ble/exceptions/tracking/GPSDisabledException;

    invoke-direct {p0}, Lcom/lightup/sdk/device/ble/exceptions/tracking/GPSDisabledException;-><init>()V

    throw p0
.end method
