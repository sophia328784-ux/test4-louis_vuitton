.class public Lcom/lightup/sdk/device/ble/exceptions/tracking/LocationGrantedException;
.super Lcom/lightup/sdk/device/ble/exceptions/tracking/GPSException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lightup/sdk/device/ble/exceptions/tracking/GPSException;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Permission to use location has not been granted by the user"

    return-object p0
.end method
