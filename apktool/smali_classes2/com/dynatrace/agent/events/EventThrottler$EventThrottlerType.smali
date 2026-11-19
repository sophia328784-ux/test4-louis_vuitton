.class abstract Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/agent/events/EventThrottler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventThrottlerType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventApi;,
        Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventBiz;,
        Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventErr;,
        Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventInvalid;,
        Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventOth;,
        Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventSfm;,
        Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventWrq;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00082\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\u0008\u0082\u0001\u0007\t\n\u000b\u000c\r\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;",
        "",
        "EventApi",
        "EventWrq",
        "EventErr",
        "EventOth",
        "EventBiz",
        "EventSfm",
        "EventInvalid",
        "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventApi;",
        "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventBiz;",
        "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventErr;",
        "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventInvalid;",
        "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventOth;",
        "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventSfm;",
        "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventWrq;",
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
.field public a:I

.field public b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move p2, v0

    :cond_1
    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;-><init>(IILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;->a:I

    iput p2, p0, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;->b:I

    iput-object p3, p0, Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;->c:Ljava/lang/String;

    return-void
.end method
