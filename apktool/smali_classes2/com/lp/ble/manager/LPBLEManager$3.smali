.class Lcom/lp/ble/manager/LPBLEManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lp/ble/BLECharacteristicChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/manager/LPBLEManager;->sendCustomerCMD(ILjava/lang/String;Lcom/lp/ble/manager/LPBLEResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lp/ble/manager/LPBLEManager;

.field final synthetic val$cmdId:I

.field final synthetic val$listener:Lcom/lp/ble/manager/LPBLEResultListener;


# direct methods
.method public constructor <init>(Lcom/lp/ble/manager/LPBLEManager;ILcom/lp/ble/manager/LPBLEResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$3;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iput p2, p0, Lcom/lp/ble/manager/LPBLEManager$3;->val$cmdId:I

    iput-object p3, p0, Lcom/lp/ble/manager/LPBLEManager$3;->val$listener:Lcom/lp/ble/manager/LPBLEResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(ILjava/lang/String;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$3;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$3;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lp/ble/manager/LPBLEManager$3;->val$cmdId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/lp/ble/BLEConnector;->m(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    .line 57
    :cond_0
    iget v0, p0, Lcom/lp/ble/manager/LPBLEManager$3;->val$cmdId:I

    sget-object v1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    if-ne p1, v0, :cond_1

    .line 58
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$3;->val$listener:Lcom/lp/ble/manager/LPBLEResultListener;

    if-eqz p0, :cond_1

    .line 59
    invoke-interface {p0, p2}, Lcom/lp/ble/manager/LPBLEResultListener;->onResult(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCharacteristicChanged(Lcom/lp/ble/entity/BLEResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$3;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$3;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lp/ble/manager/LPBLEManager$3;->val$cmdId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/lp/ble/BLEConnector;->m(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    :cond_0
    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget v0, p1, Lcom/lp/ble/entity/BLEResponse;->a:I

    iget v1, p0, Lcom/lp/ble/manager/LPBLEManager$3;->val$cmdId:I

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$3;->val$listener:Lcom/lp/ble/manager/LPBLEResultListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/lp/ble/manager/LPBLEResultListener;->onResult(Lcom/lp/ble/entity/BLEResponse;)V

    :cond_1
    return-void
.end method

.method public onResponseTimeout(I)V
    .locals 3

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$3;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$3;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lp/ble/manager/LPBLEManager$3;->val$cmdId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/lp/ble/BLEConnector;->m(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    :cond_0
    iget v0, p0, Lcom/lp/ble/manager/LPBLEManager$3;->val$cmdId:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$3;->val$listener:Lcom/lp/ble/manager/LPBLEResultListener;

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "response timeout"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/lp/ble/manager/LPBLEResultListener;->onFailed(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
