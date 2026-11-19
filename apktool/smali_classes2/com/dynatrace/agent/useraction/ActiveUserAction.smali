.class public final Lcom/dynatrace/agent/useraction/ActiveUserAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/useraction/ActiveUserAction$Companion;,
        Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;,
        Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dynatrace/agent/useraction/ActiveUserAction;",
        "",
        "Type",
        "CompleteReason",
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


# static fields
.field public static final m:Lcom/dynatrace/agent/useraction/ActiveUserAction$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;

.field public final d:Lcom/dynatrace/agent/useraction/UserInteractionMemory;

.field public e:Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public final j:Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;

.field public final k:Lcom/dynatrace/agent/events/EventBuildingContext;

.field public l:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/useraction/ActiveUserAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/useraction/ActiveUserAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->m:Lcom/dynatrace/agent/useraction/ActiveUserAction$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/dynatrace/agent/useraction/ActiveUserAction$Type;Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;Lcom/dynatrace/agent/useraction/UserInteractionMemory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->b:J

    iput-object p5, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->c:Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;

    iput-object p6, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->d:Lcom/dynatrace/agent/useraction/UserInteractionMemory;

    iput-object p4, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->e:Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;

    new-instance p1, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;

    invoke-direct {p1}, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->j:Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;

    new-instance p1, Lcom/dynatrace/agent/events/EventBuildingContext;

    const-string p4, "UserAction"

    const/4 p5, 0x0

    const/4 p6, 0x1

    invoke-direct {p1, p5, p4, p6, p5}, Lcom/dynatrace/agent/events/EventBuildingContext;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->k:Lcom/dynatrace/agent/events/EventBuildingContext;

    iput-wide p2, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->l:J

    return-void
.end method
