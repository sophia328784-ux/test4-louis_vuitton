.class public final Lcom/dynatrace/agent/useraction/UserActionGraveyard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/useraction/UserActionGraveyard;",
        "",
        "",
        "retentionMs",
        "<init>",
        "(J)V",
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
.field public final a:J

.field public final b:Lkotlin/collections/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 19
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/dynatrace/agent/useraction/UserActionGraveyard;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/dynatrace/agent/useraction/UserActionGraveyard;->a:J

    .line 18
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/useraction/UserActionGraveyard;->b:Lkotlin/collections/ArrayDeque;

    return-void
.end method

.method public constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget p1, Lcom/dynatrace/agent/common/specification/OneAgentSpecification$RetentionSpecifications;->b:I

    sget-wide p1, Lcom/dynatrace/agent/common/specification/OneAgentSpecification$RetentionSpecifications;->a:J

    invoke-static {p1, p2}, Lkotlin/time/Duration;->e(J)J

    move-result-wide p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/dynatrace/agent/useraction/UserActionGraveyard;-><init>(J)V

    return-void
.end method
