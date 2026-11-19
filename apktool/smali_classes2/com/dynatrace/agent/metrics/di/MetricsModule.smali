.class public final Lcom/dynatrace/agent/metrics/di/MetricsModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynatrace/agent/metrics/di/MetricsModule;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/dynatrace/agent/di/SecondGenServiceLocator;",
        "secondGenServiceLocator",
        "Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;",
        "metricsDataSource",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope",
        "<init>",
        "(Landroid/content/Context;Lcom/dynatrace/agent/di/SecondGenServiceLocator;Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lkotlinx/coroutines/CoroutineScope;)V",
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
.field public final a:Landroid/content/Context;

.field public final b:Lcom/dynatrace/agent/di/SecondGenServiceLocator;

.field public final c:Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;

.field public final d:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dynatrace/agent/di/SecondGenServiceLocator;Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/metrics/di/MetricsModule;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/dynatrace/agent/metrics/di/MetricsModule;->b:Lcom/dynatrace/agent/di/SecondGenServiceLocator;

    iput-object p3, p0, Lcom/dynatrace/agent/metrics/di/MetricsModule;->c:Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;

    iput-object p4, p0, Lcom/dynatrace/agent/metrics/di/MetricsModule;->d:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method
