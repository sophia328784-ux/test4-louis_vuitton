.class public final Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager$componentListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;-><init>(Lcom/dynatrace/agent/lifecycle/AppStartupManager;Lcom/dynatrace/agent/lifecycle/VisibilityManager;Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/dynatrace/agent/lifecycle/OneAgentLifecycleManager$componentListener$1",
        "Landroid/content/ComponentCallbacks;",
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
.field public final synthetic b:Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager$componentListener$1;->b:Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager$componentListener$1;->b:Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-interface {p0, p1}, Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;->a(I)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method
