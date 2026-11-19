.class Lcom/linkplay/bonjour/presenter/AppLifeCycle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/bonjour/presenter/AppLifeCycle;->monitorLifeCycle(Landroid/content/Context;Lcom/linkplay/bonjour/presenter/AppLifeCycle$AppLifeCycleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic val$lifeCycleCallback:Lcom/linkplay/bonjour/presenter/AppLifeCycle$AppLifeCycleCallback;


# direct methods
.method public constructor <init>(Lcom/linkplay/bonjour/presenter/AppLifeCycle$AppLifeCycleCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/AppLifeCycle$1;->val$lifeCycleCallback:Lcom/linkplay/bonjour/presenter/AppLifeCycle$AppLifeCycleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/linkplay/bonjour/presenter/AppLifeCycle$1;->count:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget p1, p0, Lcom/linkplay/bonjour/presenter/AppLifeCycle$1;->count:I

    if-nez p1, :cond_0

    const-string p1, "LPServiceManager"

    const-string v0, ">>>>>>>>>>>>>>>>>>>\u5207\u5230\u524d\u53f0"

    invoke-static {p1, v0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/AppLifeCycle$1;->val$lifeCycleCallback:Lcom/linkplay/bonjour/presenter/AppLifeCycle$AppLifeCycleCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/linkplay/bonjour/presenter/AppLifeCycle$AppLifeCycleCallback;->runningForeGround()V

    :cond_0
    iget p1, p0, Lcom/linkplay/bonjour/presenter/AppLifeCycle$1;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/linkplay/bonjour/presenter/AppLifeCycle$1;->count:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget p1, p0, Lcom/linkplay/bonjour/presenter/AppLifeCycle$1;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/linkplay/bonjour/presenter/AppLifeCycle$1;->count:I

    if-nez p1, :cond_0

    const-string p1, "LPServiceManager"

    const-string v0, ">>>>>>>>>>>>>>>>>>>\u5207\u5230\u540e\u53f0"

    invoke-static {p1, v0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/AppLifeCycle$1;->val$lifeCycleCallback:Lcom/linkplay/bonjour/presenter/AppLifeCycle$AppLifeCycleCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/linkplay/bonjour/presenter/AppLifeCycle$AppLifeCycleCallback;->runningBackGround()V

    :cond_0
    return-void
.end method
