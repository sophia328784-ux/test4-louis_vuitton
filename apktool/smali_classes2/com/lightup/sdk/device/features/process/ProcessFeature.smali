.class public abstract Lcom/lightup/sdk/device/features/process/ProcessFeature;
.super Lcom/lightup/sdk/device/features/Feature;
.source "SourceFile"


# static fields
.field protected static final MIN_DURATION:I = 0x28


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/Feature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    return-void
.end method


# virtual methods
.method public isAtomic()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
