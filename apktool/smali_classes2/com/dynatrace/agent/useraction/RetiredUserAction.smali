.class public final Lcom/dynatrace/agent/useraction/RetiredUserAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynatrace/agent/useraction/RetiredUserAction;",
        "",
        "Lcom/dynatrace/agent/useraction/ActiveUserAction;",
        "userAction",
        "",
        "endTime",
        "Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;",
        "completeReason",
        "",
        "interruptedByInstanceId",
        "<init>",
        "(Lcom/dynatrace/agent/useraction/ActiveUserAction;JLcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;Ljava/lang/String;)V",
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
.field public final a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

.field public final b:J

.field public final c:Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/useraction/ActiveUserAction;JLcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iput-wide p2, p0, Lcom/dynatrace/agent/useraction/RetiredUserAction;->b:J

    iput-object p4, p0, Lcom/dynatrace/agent/useraction/RetiredUserAction;->c:Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynatrace/agent/useraction/ActiveUserAction;JLcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/useraction/RetiredUserAction;-><init>(Lcom/dynatrace/agent/useraction/ActiveUserAction;JLcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;Ljava/lang/String;)V

    return-void
.end method
