.class public final Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;",
        "",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "Lcom/dynatrace/agent/view/ViewContextManagerApi;",
        "viewContextManager",
        "Lcom/dynatrace/agent/OneAgentConfiguration;",
        "oneAgentConfiguration",
        "<init>",
        "(Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/ViewContextManagerApi;Lcom/dynatrace/agent/OneAgentConfiguration;)V",
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
.field public final a:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final b:Lcom/dynatrace/agent/view/ViewContextManagerApi;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/ViewContextManagerApi;Lcom/dynatrace/agent/OneAgentConfiguration;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;->a:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iput-object p2, p0, Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;->b:Lcom/dynatrace/agent/view/ViewContextManagerApi;

    iget-boolean p1, p3, Lcom/dynatrace/agent/OneAgentConfiguration;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p3, Lcom/dynatrace/agent/OneAgentConfiguration;->i:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    sget-object p2, Lcom/dynatrace/agent/common/InstrumentationFlavor;->FLUTTER:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/dynatrace/agent/common/InstrumentationFlavor;->REACT_NATIVE:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/dynatrace/agent/common/InstrumentationFlavor;->MAUI:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;->c:Z

    return-void
.end method
