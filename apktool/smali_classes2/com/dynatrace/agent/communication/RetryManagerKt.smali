.class public abstract Lcom/dynatrace/agent/communication/RetryManagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "com.dynatrace.agent_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:J

.field public static final b:J

.field public static final c:J

.field public static final synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const-wide/16 v1, 0x1e

    invoke-static {v1, v2, v0}, Lkotlin/time/DurationKt;->h(JLkotlin/time/DurationUnit;)J

    move-result-wide v1

    sput-wide v1, Lcom/dynatrace/agent/communication/RetryManagerKt;->a:J

    const-wide/16 v1, 0x3c

    invoke-static {v1, v2, v0}, Lkotlin/time/DurationKt;->h(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/dynatrace/agent/communication/RetryManagerKt;->b:J

    const/4 v0, 0x2

    sget-object v1, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->g(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/dynatrace/agent/communication/RetryManagerKt;->c:J

    return-void
.end method

.method public static final a(Lcom/dynatrace/agent/communication/network/model/RetryInfo;)J
    .locals 2

    iget p0, p0, Lcom/dynatrace/agent/communication/network/model/RetryInfo;->a:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-wide v0, Lcom/dynatrace/agent/communication/RetryManagerKt;->c:J

    return-wide v0

    :cond_0
    sget-wide v0, Lcom/dynatrace/agent/communication/RetryManagerKt;->b:J

    return-wide v0

    :cond_1
    sget-wide v0, Lcom/dynatrace/agent/communication/RetryManagerKt;->a:J

    return-wide v0
.end method
