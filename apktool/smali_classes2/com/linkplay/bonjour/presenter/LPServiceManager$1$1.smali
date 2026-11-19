.class Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->serviceLost(Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/linkplay/bonjour/presenter/LPServiceManager$1;

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$flags:I

.field final synthetic val$ifIndex:I

.field final synthetic val$regType:Ljava/lang/String;

.field final synthetic val$serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/linkplay/bonjour/presenter/LPServiceManager$1;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->this$1:Lcom/linkplay/bonjour/presenter/LPServiceManager$1;

    iput-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$serviceName:Ljava/lang/String;

    iput p3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$flags:I

    iput p4, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$ifIndex:I

    iput-object p5, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$regType:Ljava/lang/String;

    iput-object p6, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$domain:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->this$1:Lcom/linkplay/bonjour/presenter/LPServiceManager$1;

    iget-object v0, v0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$500(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$serviceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    iget v2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$flags:I

    iget v3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$ifIndex:I

    iget-object v4, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$serviceName:Ljava/lang/String;

    iget-object v5, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$regType:Ljava/lang/String;

    iget-object v6, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$domain:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->uuid(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->build()Lcom/linkplay/bonjour/model/LinkPlayService;

    move-result-object v1

    sget-boolean v2, Lcom/linkplay/bonjour/config/LinkplayConfig;->bWifiChangeProcess:Z

    const-string v3, "   uuid:"

    const-string v4, "LPServiceManager"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->this$1:Lcom/linkplay/bonjour/presenter/LPServiceManager$1;

    iget-object v2, v2, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v2}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$600(Lcom/linkplay/bonjour/presenter/LPServiceManager;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->this$1:Lcom/linkplay/bonjour/presenter/LPServiceManager$1;

    iget-object v2, v2, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v2}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "wifi disconnected, return... (serviceLost: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$serviceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->this$1:Lcom/linkplay/bonjour/presenter/LPServiceManager$1;

    iget-object v5, v5, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v5}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "serviceLost: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$serviceName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/linkplay/bonjour/config/LinkplayConfig;->bServiceAddByConnectSetup:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->val$serviceName:Ljava/lang/String;

    invoke-static {v2}, Lcom/linkplay/bonjour/manage/UartManager;->remove(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lcom/linkplay/bonjour/manage/ServiceManager;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->this$1:Lcom/linkplay/bonjour/presenter/LPServiceManager$1;

    iget-object v0, v0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->this$1:Lcom/linkplay/bonjour/presenter/LPServiceManager$1;

    iget-object v0, v0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/linkplay/bonjour/presenter/LPServiceCallback;->LPServiceRemove(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_2
    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->this$1:Lcom/linkplay/bonjour/presenter/LPServiceManager$1;

    iget-object v0, v0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$800(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;->this$1:Lcom/linkplay/bonjour/presenter/LPServiceManager$1;

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$800(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;->LPServiceRemove(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_3
    return-void
.end method
