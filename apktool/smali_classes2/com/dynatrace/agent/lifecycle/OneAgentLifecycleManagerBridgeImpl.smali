.class public final Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManagerBridgeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManagerBridgeImpl;",
        "Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;",
        "Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;",
        "oneAgentLifecycleManager",
        "Lcom/dynatrace/agent/view/ViewContextManagerApi;",
        "viewContextManager",
        "<init>",
        "(Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;Lcom/dynatrace/agent/view/ViewContextManagerApi;)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;

.field public final b:Lcom/dynatrace/agent/view/ViewContextManagerApi;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;Lcom/dynatrace/agent/view/ViewContextManagerApi;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManagerBridgeImpl;->a:Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;

    iput-object p2, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManagerBridgeImpl;->b:Lcom/dynatrace/agent/view/ViewContextManagerApi;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "onAppStart"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManagerBridgeImpl;->a:Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;

    iget-object v0, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;->b:Landroid/app/Application;

    iget-boolean v1, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;->c:Z

    iget-object v1, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;->a:Lcom/dynatrace/agent/lifecycle/AppStartupManager;

    sget-object v2, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->APPLICATION_CREATE_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {v1, v2}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->d(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;)V

    iget-object v1, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;->d:Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;->e:Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager$componentListener$1;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    const-string v0, "stop OneAgent, unregister lifecycle callbacks"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManagerBridgeImpl;->a:Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;

    iput-boolean v0, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;->c:Z

    iget-object v0, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;->b:Landroid/app/Application;

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;->d:Lcom/dynatrace/agent/lifecycle/callback/ActivityLifecycleListener;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManagerBridgeImpl;->b:Lcom/dynatrace/agent/view/ViewContextManagerApi;

    invoke-interface {p0}, Lcom/dynatrace/agent/view/ViewContextManagerApi;->d()V

    return-void
.end method
