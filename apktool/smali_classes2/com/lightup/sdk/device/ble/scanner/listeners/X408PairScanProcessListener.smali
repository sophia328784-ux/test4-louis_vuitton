.class public interface abstract Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\t\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;",
        "",
        "onDeviceFound",
        "",
        "device",
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;",
        "onScanEnd",
        "cancelled",
        "",
        "library"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onDeviceFound(Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;)V
.end method

.method public abstract onScanEnd(Z)V
.end method
