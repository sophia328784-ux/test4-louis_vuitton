.class Lcom/lp/ble/manager/LPBLEManager$4;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/manager/LPBLEManager;->sendCustomerCMD(ILjava/lang/String;Lcom/lp/ble/manager/LPBLEResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$cmdId:I

.field final synthetic val$listener:Lcom/lp/ble/manager/LPBLEResultListener;


# direct methods
.method public constructor <init>(Lcom/lp/ble/manager/LPBLEManager;ILcom/lp/ble/manager/LPBLEResultListener;)V
    .locals 0

    iput p2, p0, Lcom/lp/ble/manager/LPBLEManager$4;->val$cmdId:I

    iput-object p3, p0, Lcom/lp/ble/manager/LPBLEManager$4;->val$listener:Lcom/lp/ble/manager/LPBLEResultListener;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 1

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$4;->val$listener:Lcom/lp/ble/manager/LPBLEResultListener;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    iget-object p1, p1, Lcom/clj/fastble/exception/BleException;->c:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/lp/ble/manager/LPBLEResultListener;->onFailed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onWriteSuccess(II[B)V
    .locals 0

    return-void
.end method
