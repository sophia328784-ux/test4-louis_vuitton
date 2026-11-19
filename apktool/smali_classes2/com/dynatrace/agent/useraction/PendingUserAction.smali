.class public final Lcom/dynatrace/agent/useraction/PendingUserAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynatrace/agent/useraction/PendingUserAction;",
        "",
        "",
        "startTime",
        "Lorg/json/JSONObject;",
        "userInteractionEvent",
        "Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;",
        "configSnapshot",
        "",
        "suppressedUia",
        "<init>",
        "(JLorg/json/JSONObject;Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;Z)V",
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

.field public final b:Lorg/json/JSONObject;

.field public final c:Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;

.field public final d:Z


# direct methods
.method public constructor <init>(JLorg/json/JSONObject;Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;Z)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/dynatrace/agent/useraction/PendingUserAction;->a:J

    iput-object p3, p0, Lcom/dynatrace/agent/useraction/PendingUserAction;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/dynatrace/agent/useraction/PendingUserAction;->c:Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;

    iput-boolean p5, p0, Lcom/dynatrace/agent/useraction/PendingUserAction;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(JLorg/json/JSONObject;Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/useraction/PendingUserAction;-><init>(JLorg/json/JSONObject;Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;Z)V

    return-void
.end method
