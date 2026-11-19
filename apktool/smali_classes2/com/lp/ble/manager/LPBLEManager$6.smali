.class Lcom/lp/ble/manager/LPBLEManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lp/ble/BLECharacteristicChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/manager/LPBLEManager;->privateGetWLANList(Lcom/lp/ble/manager/LPBLEAPListListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lp/ble/manager/LPBLEManager;

.field final synthetic val$cmdId:I

.field final synthetic val$listener:Lcom/lp/ble/manager/LPBLEAPListListener;


# direct methods
.method public constructor <init>(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/LPBLEAPListListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$6;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iput-object p2, p0, Lcom/lp/ble/manager/LPBLEManager$6;->val$listener:Lcom/lp/ble/manager/LPBLEAPListListener;

    iput p3, p0, Lcom/lp/ble/manager/LPBLEManager$6;->val$cmdId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x1007

    if-ne p1, v0, :cond_1

    .line 60
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$6;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1, p2}, Lcom/lp/ble/manager/LPBLEManager;->j(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/lp/ble/manager/LPBLEManager$6;->val$listener:Lcom/lp/ble/manager/LPBLEAPListListener;

    if-eqz p2, :cond_0

    .line 62
    invoke-interface {p2, p1}, Lcom/lp/ble/manager/LPBLEAPListListener;->onSuccess(Ljava/util/List;)V

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$6;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$6;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/lp/ble/manager/LPBLEManager$6;->val$cmdId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/lp/ble/BLEConnector;->m(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    :cond_1
    return-void
.end method

.method public onCharacteristicChanged(Lcom/lp/ble/entity/BLEResponse;)V
    .locals 2

    iget v0, p1, Lcom/lp/ble/entity/BLEResponse;->a:I

    const/16 v1, 0x1007

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$6;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lp/ble/manager/LPBLEManager;->j(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$6;->val$listener:Lcom/lp/ble/manager/LPBLEAPListListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/lp/ble/manager/LPBLEAPListListener;->onSuccess(Ljava/util/List;)V

    :cond_0
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$6;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$6;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/lp/ble/manager/LPBLEManager$6;->val$cmdId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/lp/ble/BLEConnector;->m(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    :cond_1
    return-void
.end method

.method public onResponseTimeout(I)V
    .locals 2

    const/16 v0, 0x1007

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$6;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$6;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/lp/ble/manager/LPBLEManager$6;->val$cmdId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/lp/ble/BLEConnector;->m(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    :cond_0
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$6;->val$listener:Lcom/lp/ble/manager/LPBLEAPListListener;

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "response timeout"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/lp/ble/manager/LPBLEAPListListener;->onFailed(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
