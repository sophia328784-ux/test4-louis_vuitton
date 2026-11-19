.class Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/nsd/NsdManager$ResolveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->initializeResolveListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$3;->this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NSDMultiServiceTypeNotResolvedManager:onResolveFailed->NsdServiceInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", errorCoe="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LINKPLAY_SDK"

    invoke-static {p2, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$3;->this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    invoke-static {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->e(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;)V

    return-void
.end method

.method public onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$3;->this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    iget-object v0, v0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolvedNsdServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$3;->this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    iget-object v1, v1, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$3;->this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    iget-object v1, v1, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceTypes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/wiimu/service/online_service/util/a;->a()Lcom/android/wiimu/service/online_service/util/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wiimu/service/online_service/util/a;->b(Landroid/net/nsd/NsdServiceInfo;)Lh/a;

    move-result-object v0

    invoke-virtual {v0}, Lh/a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NSDMultiServiceTypeNotResolvedManager:onServiceResolved->NsdServiceInfo="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LINKPLAY_SDK"

    invoke-static {v2, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$3;->this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    invoke-static {v1}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->b(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$3;->this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    invoke-static {p1}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->a(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, v0, Lh/a;->b:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$3;->this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    invoke-static {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->e(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;)V

    return-void
.end method
