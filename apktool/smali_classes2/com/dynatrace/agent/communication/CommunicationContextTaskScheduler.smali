.class public final Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "scope",
        "Lkotlin/time/Duration;",
        "schedulingTime",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:J

.field public c:Lkotlinx/coroutines/Job;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p2, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    const/4 p2, 0x5

    sget-object p3, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {p2, p3}, Lkotlin/time/DurationKt;->g(ILkotlin/time/DurationUnit;)J

    move-result-wide p2

    :cond_0
    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;-><init>(Lkotlinx/coroutines/CoroutineScope;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 21
    iput-wide p2, p0, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;->b:J

    return-void
.end method
