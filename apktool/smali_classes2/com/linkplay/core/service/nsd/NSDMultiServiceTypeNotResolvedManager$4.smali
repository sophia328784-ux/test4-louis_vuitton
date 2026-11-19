.class Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceLost(Landroid/net/nsd/NsdServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

.field final synthetic val$infoItem:Lh/a;

.field final synthetic val$serviceInfo:Landroid/net/nsd/NsdServiceInfo;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;Lh/a;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$4;->this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    iput-object p2, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$4;->val$infoItem:Lh/a;

    iput-object p3, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$4;->val$serviceInfo:Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "NSDMultiServiceTypeNotResolvedManager:serviceLost:connectTCP"

    :try_start_0
    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$4;->val$infoItem:Lh/a;

    iget-object v1, v1, Lh/a;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/linkplay/core/utils/IPUtils;->connectTCP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "LINKPLAY_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$4;->val$serviceInfo:Landroid/net/nsd/NsdServiceInfo;

    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " tcp connected status="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$4;->this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    invoke-static {v0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->a(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$4;->val$serviceInfo:Landroid/net/nsd/NsdServiceInfo;

    invoke-virtual {v1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPBrowseListener()Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPBrowseListener()Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$4;->val$infoItem:Lh/a;

    iget-object p0, p0, Lh/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->deviceRemove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
