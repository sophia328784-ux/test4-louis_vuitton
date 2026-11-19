.class public final Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/monitoring/MonitorAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000cB+\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;",
        "Lcom/vuitton/android/domain/monitoring/MonitorAction;",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "Lcom/vuitton/android/domain/monitoring/MonitorActionName;",
        "actionName",
        "",
        "deviceId",
        "",
        "isDebug",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;Ljava/lang/String;Z)V",
        "Companion",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Lcom/dynatrace/android/agent/DTXAction;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/DTXAction;Z)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->a:Lcom/dynatrace/android/agent/DTXAction;

    .line 47
    iput-boolean p2, p0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->b:Z

    invoke-interface {p2}, Lcom/vuitton/android/domain/monitoring/MonitorActionName;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dynatrace/android/agent/Dynatrace;->a(Ljava/lang/String;)Lcom/dynatrace/android/agent/DTXAction;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->a:Lcom/dynatrace/android/agent/DTXAction;

    const-string p2, "lvappDeviceId"

    invoke-virtual {p0, p3, p2}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    const-string p2, "locale"

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;
    .locals 1

    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorActionName;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->a:Lcom/dynatrace/android/agent/DTXAction;

    invoke-static {p1, v0}, Lcom/dynatrace/android/agent/Dynatrace;->b(Ljava/lang/String;Lcom/dynatrace/android/agent/DTXAction;)Lcom/dynatrace/android/agent/DTXAction;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance v0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    iget-boolean p0, p0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->b:Z

    invoke-direct {v0, p1, p0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;-><init>(Lcom/dynatrace/android/agent/DTXAction;Z)V

    return-object v0
.end method

.method public final b()Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->a:Lcom/dynatrace/android/agent/DTXAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lcom/dynatrace/android/agent/DTXAction;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->a:Lcom/dynatrace/android/agent/DTXAction;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->a:Lcom/dynatrace/android/agent/DTXAction;

    iget-boolean p0, p0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->b:Z

    if-eqz v0, :cond_5

    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    move-object p0, p1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p2}, Lcom/dynatrace/android/agent/DTXAction;->f(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_1

    move-object p0, p1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-interface {v0, p2, v1, v2}, Lcom/dynatrace/android/agent/DTXAction;->b(Ljava/lang/String;D)V

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    move-object p0, p1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-interface {v0, p0, p2}, Lcom/dynatrace/android/agent/DTXAction;->e(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object p0, p1

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p2, p0}, Lcom/dynatrace/android/agent/DTXAction;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " type is not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_4
    throw p2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Action is not created, cannot report value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_6

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_6
    throw p1
.end method

.method public final d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;
    .locals 1

    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorActionError;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->a:Lcom/dynatrace/android/agent/DTXAction;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorActionError;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorActionError;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/dynatrace/android/agent/DTXAction;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
