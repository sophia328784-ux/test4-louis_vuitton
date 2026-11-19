.class public final Lcom/dynatrace/agent/view/ViewSummarizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/view/ViewSummarizer;",
        "",
        "Lcom/dynatrace/agent/view/ViewContextHistory;",
        "viewContextHistory",
        "<init>",
        "(Lcom/dynatrace/agent/view/ViewContextHistory;)V",
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
.field public final a:Lcom/dynatrace/agent/view/ViewContextHistory;

.field public b:Lcom/dynatrace/agent/view/ViewContext;

.field public c:J

.field public d:Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/view/ViewContextHistory;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/view/ViewSummarizer;->a:Lcom/dynatrace/agent/view/ViewContextHistory;

    new-instance p1, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;

    invoke-direct {p1}, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/view/ViewSummarizer;->d:Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;

    return-void
.end method
