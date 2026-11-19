.class Lcom/lp/ble/manager/LPBLEManager$11$1;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/manager/LPBLEManager$11;->onWriteSuccess(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/lp/ble/manager/LPBLEManager$11;)V
    .locals 0

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 0

    return-void
.end method

.method public onWriteSuccess(II[B)V
    .locals 0

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void
.end method
