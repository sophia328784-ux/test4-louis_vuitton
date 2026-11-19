.class public final Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B<\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012#\u0008\u0002\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;",
        "",
        "Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;",
        "networkConnectivityChecker",
        "Landroid/content/Context;",
        "applicationContext",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "context",
        "",
        "isDeviceRooted",
        "<init>",
        "(Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V",
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
.field public final a:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;

.field public final b:Landroid/content/Context;

.field public final c:Lkotlin/jvm/functions/Function1;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->a:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;

    iput-object p2, p0, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->c:Lkotlin/jvm/functions/Function1;

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->d:Ljava/lang/String;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->e:Ljava/lang/String;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 40
    new-instance p3, Lch0;

    const/4 p4, 0x5

    invoke-direct {p3, p4}, Lch0;-><init>(I)V

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;-><init>(Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
