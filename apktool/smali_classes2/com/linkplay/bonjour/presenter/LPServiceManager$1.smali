.class Lcom/linkplay/bonjour/presenter/LPServiceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/druk/dnssd/BrowseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/bonjour/presenter/LPServiceManager;->startBonjour(Ljava/lang/String;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    iput-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->val$from:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationFailed(Lcom/github/druk/dnssd/DNSSDService;I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "operationFailed errorCode:"

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

    return-void
.end method

.method public serviceFound(Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$000(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$100(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->build()Lcom/linkplay/bonjour/model/LinkPlayService;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p3}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->val$from:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " serviceFound: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LPServiceManager"

    invoke-static {p3, p2}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p2, Lcom/linkplay/bonjour/config/LinkplayConfig;->bResolveFromCache:Z

    iget-object p3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->val$from:Ljava/lang/String;

    invoke-static {p3, p0, p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$300(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->val$from:Ljava/lang/String;

    invoke-static {p3, p0, p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$400(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_1
    return-void
.end method

.method public serviceLost(Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$000(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$100(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$900(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v2, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/linkplay/bonjour/presenter/LPServiceManager$1$1;-><init>(Lcom/linkplay/bonjour/presenter/LPServiceManager$1;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
