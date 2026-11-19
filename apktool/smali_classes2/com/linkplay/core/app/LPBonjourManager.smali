.class public Lcom/linkplay/core/app/LPBonjourManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/bonjour/presenter/LPServiceCallback;
.implements Lcom/linkplay/bonjour/presenter/AppLifeCycle$AppLifeCycleCallback;


# instance fields
.field serviceManager:Lcom/linkplay/bonjour/presenter/LPServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/linkplay/core/app/LPBonjourManager;->serviceManager:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-direct {v0, p1, p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;-><init>(Landroid/content/Context;Lcom/linkplay/bonjour/presenter/LPServiceCallback;)V

    iput-object v0, p0, Lcom/linkplay/core/app/LPBonjourManager;->serviceManager:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    :cond_0
    invoke-static {p1, p0}, Lcom/linkplay/bonjour/presenter/AppLifeCycle;->monitorLifeCycle(Landroid/content/Context;Lcom/linkplay/bonjour/presenter/AppLifeCycle$AppLifeCycleCallback;)V

    return-void
.end method


# virtual methods
.method public LPServiceAdd(Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 1

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "uuid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/wiimu/service/online_service/util/a;->a()Lcom/android/wiimu/service/online_service/util/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wiimu/service/online_service/util/a;->a(Lcom/linkplay/bonjour/model/LinkPlayService;)Lh/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/wiimu/service/online_service/util/a;->a()Lcom/android/wiimu/service/online_service/util/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/wiimu/service/online_service/util/a;->b(Lh/a;)V

    :cond_0
    return-void
.end method

.method public LPServiceReady(Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 0

    return-void
.end method

.method public LPServiceRemove(Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPBrowseListener()Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    move-result-object p0

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->deviceRemove(Ljava/lang/String;)V

    return-void
.end method

.method public LPServiceUpdate(Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 1

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "uuid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/wiimu/service/online_service/util/a;->a()Lcom/android/wiimu/service/online_service/util/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wiimu/service/online_service/util/a;->a(Lcom/linkplay/bonjour/model/LinkPlayService;)Lh/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/wiimu/service/online_service/util/a;->a()Lcom/android/wiimu/service/online_service/util/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/wiimu/service/online_service/util/a;->b(Lh/a;)V

    :cond_0
    return-void
.end method

.method public runningBackGround()V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/app/LPBonjourManager;->serviceManager:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->runningBackGround()V

    :cond_0
    return-void
.end method

.method public runningForeGround()V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/app/LPBonjourManager;->serviceManager:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->runningForeGround()V

    :cond_0
    return-void
.end method

.method public setLogCallback(Lcom/linkplay/bonjour/utils/BonjourLog$BonjourLogCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/app/LPBonjourManager;->serviceManager:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->setLogCallback(Lcom/linkplay/bonjour/utils/BonjourLog$BonjourLogCallback;)V

    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/app/LPBonjourManager;->serviceManager:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->start(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/app/LPBonjourManager;->serviceManager:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->stop()V

    :cond_0
    return-void
.end method
