.class Lcom/linkplay/bonjour/presenter/LPServiceManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/druk/dnssd/ResolveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/bonjour/presenter/LPServiceManager;->resolve(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private resolveResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

.field final synthetic val$from:Ljava/lang/String;

.field final synthetic val$service:Lcom/linkplay/bonjour/model/LinkPlayService;


# direct methods
.method public constructor <init>(Lcom/linkplay/bonjour/presenter/LPServiceManager;Lcom/linkplay/bonjour/model/LinkPlayService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    iput-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    iput-object p3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->val$from:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->resolveResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public operationFailed(Lcom/github/druk/dnssd/DNSSDService;I)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->resolveResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "resolve operationFailed errorCode:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LPServiceManager"

    invoke-static {p1, p0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public serviceResolved(Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/druk/dnssd/DNSSDService;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->resolveResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, ""

    if-eqz p7, :cond_0

    const-string p2, "uuid"

    invoke-interface {p7, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iget-object p3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p3}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$500(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/util/Map;

    move-result-object p3

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-virtual {v0}, Lcom/linkplay/bonjour/model/LinkPlayService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p7, :cond_1

    const-string p3, "security"

    invoke-interface {p7, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p7, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p3, p1

    :goto_1
    if-eqz p7, :cond_2

    const-string v0, "version"

    invoke-interface {p7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v0, p1

    :goto_2
    if-eqz p7, :cond_3

    const-string v1, "manufacturer"

    invoke-interface {p7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1000(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_3

    :cond_4
    new-instance v1, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    iget-object v2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-direct {v1, v2}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;-><init>(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    invoke-virtual {v1, p4}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->fullName(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p4

    invoke-virtual {p4, p5}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->hostName(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p4

    invoke-virtual {p4, p6}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->port(I)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p4

    invoke-virtual {p4, p7}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->txtRecord(Ljava/util/Map;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->uuid(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->security(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->version(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->setManufacturer(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->build()Lcom/linkplay/bonjour/model/LinkPlayService;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p3}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->val$from:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", serviceResolved: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getServiceName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", port-> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getPort()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", uuid-> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", security-> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getSecurity()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", version-> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getVersion()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LPServiceManager"

    invoke-static {p3, p2}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$2;->val$from:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1100(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_5
    :goto_3
    return-void
.end method
