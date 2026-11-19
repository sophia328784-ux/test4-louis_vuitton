.class Lcom/linkplay/bonjour/presenter/LPServiceManager$5;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/bonjour/presenter/LPServiceManager;->serviceConfirmByCompare(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

.field final synthetic val$from:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$5;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    iput-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$5;->val$from:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$5;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1400(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/manage/CompareTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/bonjour/manage/CompareTimer;->getUnConfirmedServices()Ljava/util/List;

    move-result-object v0

    const-string v1, "..."

    const-string v2, "LPServiceManager"

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/linkplay/bonjour/model/LinkPlayService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$5;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v5}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/linkplay/bonjour/model/LinkPlayService;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " lost before"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$5;->val$from:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/linkplay/bonjour/manage/ServiceManager;->remove(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$5;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v4}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$5;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v4}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/linkplay/bonjour/presenter/LPServiceCallback;->LPServiceRemove(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_2
    iget-object v4, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$5;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v4}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$800(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$5;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v4}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$800(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;->LPServiceRemove(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$5;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v3}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "No service lost before"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$5;->val$from:Ljava/lang/String;

    invoke-static {v0, p0, v1, v2}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
