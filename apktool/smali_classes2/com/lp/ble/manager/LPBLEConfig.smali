.class public Lcom/lp/ble/manager/LPBLEConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bHexPasswordCommand:Z

.field public bNeedCountryCode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lp/ble/manager/LPBLEConfig;->bHexPasswordCommand:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lp/ble/manager/LPBLEConfig;->bNeedCountryCode:Z

    return-void
.end method
