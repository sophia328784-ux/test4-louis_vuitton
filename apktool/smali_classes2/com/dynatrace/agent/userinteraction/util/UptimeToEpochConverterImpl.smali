.class public final Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverterImpl;",
        "Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverter;",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "<init>",
        "(Lcom/dynatrace/agent/common/time/TimeProvider;)V",
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
.field public final a:Lcom/dynatrace/agent/common/time/TimeProvider;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/common/time/TimeProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverterImpl;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 4

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverterImpl;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {p0}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    add-long/2addr v0, p1

    return-wide v0
.end method
