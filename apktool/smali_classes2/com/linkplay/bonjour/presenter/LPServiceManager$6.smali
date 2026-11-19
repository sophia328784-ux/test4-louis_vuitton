.class Lcom/linkplay/bonjour/presenter/LPServiceManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/bonjour/presenter/ILinkTest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/bonjour/presenter/LPServiceManager;->serviceConfirmByConnection(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

.field final synthetic val$from:Ljava/lang/String;

.field final synthetic val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    iput-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$from:Ljava/lang/String;

    iput-object p4, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionSuccessful(Lcom/linkplay/bonjour/presenter/LinkTestPresenter;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$from:Ljava/lang/String;

    const-string v1, " service ready"

    const-string v2, "LPServiceManager"

    invoke-static {p1, v0, v1, v2}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, " foreground "

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, " wificonnected "

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1400(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/manage/CompareTimer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1400(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/manage/CompareTimer;

    move-result-object p1

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-virtual {p1, v0}, Lcom/linkplay/bonjour/manage/CompareTimer;->remove(Lcom/linkplay/bonjour/model/LinkPlayService;)Lcom/linkplay/bonjour/model/LinkPlayService;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-interface {p1, p0}, Lcom/linkplay/bonjour/presenter/LPServiceCallback;->LPServiceReady(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_1
    return-void
.end method

.method public onException(Ljava/lang/Exception;I)V
    .locals 5

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-virtual {v0}, Lcom/linkplay/bonjour/model/LinkPlayService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v2}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$from:Ljava/lang/String;

    const-string v3, " serviceLost: "

    const-string v4, " | "

    invoke-static {v1, v2, v3, v0, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-virtual {v2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LPServiceManager"

    invoke-static {p2, p1}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/linkplay/bonjour/config/LinkplayConfig;->bServiceAddByConnectSetup:Z

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/linkplay/bonjour/manage/UartManager;->remove(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/linkplay/bonjour/manage/ServiceManager;->remove(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-interface {p1, p2}, Lcom/linkplay/bonjour/presenter/LPServiceCallback;->LPServiceRemove(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_1
    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$800(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$800(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$6;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-interface {p1, p0}, Lcom/linkplay/bonjour/presenter/LPServiceRemoveCallback;->LPServiceRemove(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_2
    return-void
.end method
