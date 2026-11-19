.class public final Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl;",
        "Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;",
        "Lcom/dynatrace/agent/metrics/MetricsRepository;",
        "metricsRepository",
        "Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;",
        "oneAgentUserInteractionManager",
        "<init>",
        "(Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;)V",
        "Companion",
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
.field public final a:Lcom/dynatrace/agent/metrics/MetricsRepository;

.field public final b:Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl;->a:Lcom/dynatrace/agent/metrics/MetricsRepository;

    iput-object p2, p0, Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl;->b:Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;

    const/4 p1, -0x1

    iput p1, p0, Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v4, p1

    iget v1, v0, Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl;->c:I

    if-ne v4, v1, :cond_0

    return-void

    :cond_0
    iput v4, v0, Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl;->c:I

    iget-object v15, v0, Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl;->a:Lcom/dynatrace/agent/metrics/MetricsRepository;

    iget-object v1, v15, Lcom/dynatrace/agent/metrics/MetricsRepository;->h:Lcom/dynatrace/agent/storage/preference/MetricsData;

    const/4 v13, 0x0

    const v14, 0x3fffb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v1 .. v14}, Lcom/dynatrace/agent/storage/preference/MetricsData;->a(Lcom/dynatrace/agent/storage/preference/MetricsData;IIIILjava/lang/Double;Ljava/lang/Double;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/dynatrace/agent/storage/preference/MetricsData;

    move-result-object v1

    iput-object v1, v15, Lcom/dynatrace/agent/metrics/MetricsRepository;->h:Lcom/dynatrace/agent/storage/preference/MetricsData;

    iget-object v0, v0, Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl;->b:Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;

    invoke-interface {v0}, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;->c()V

    return-void
.end method
