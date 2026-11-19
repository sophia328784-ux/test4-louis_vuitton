.class public final Lcom/dynatrace/android/compose/ToggleActionRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynatrace/android/compose/ToggleActionRecorder;",
        "",
        "Lcom/dynatrace/android/agent/measurement/MeasurementProvider;",
        "measurementProvider",
        "Lcom/dynatrace/android/useraction/UserActionFactory;",
        "userActionFactory",
        "Lcom/dynatrace/android/compose/ToggleableInfo;",
        "toggleableInfo",
        "",
        "semanticsName",
        "<init>",
        "(Lcom/dynatrace/android/agent/measurement/MeasurementProvider;Lcom/dynatrace/android/useraction/UserActionFactory;Lcom/dynatrace/android/compose/ToggleableInfo;Ljava/lang/String;)V",
        "agent.instrumentorAPI.compose_release"
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
.field public final a:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

.field public final b:Lcom/dynatrace/android/useraction/UserActionFactory;

.field public final c:Lcom/dynatrace/android/compose/ToggleableInfo;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/measurement/MeasurementProvider;Lcom/dynatrace/android/useraction/UserActionFactory;Lcom/dynatrace/android/compose/ToggleableInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/compose/ToggleActionRecorder;->a:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    iput-object p2, p0, Lcom/dynatrace/android/compose/ToggleActionRecorder;->b:Lcom/dynatrace/android/useraction/UserActionFactory;

    iput-object p3, p0, Lcom/dynatrace/android/compose/ToggleActionRecorder;->c:Lcom/dynatrace/android/compose/ToggleableInfo;

    iput-object p4, p0, Lcom/dynatrace/android/compose/ToggleActionRecorder;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/dynatrace/android/compose/ToggleActionRecorder;->c:Lcom/dynatrace/android/compose/ToggleableInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/dynatrace/android/compose/ToggleableInfo;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/dynatrace/android/compose/ToggleableInfo;->b:Landroidx/compose/ui/semantics/Role;

    if-eqz v2, :cond_0

    iget v3, v2, Landroidx/compose/ui/semantics/Role;->a:I

    invoke-static {v3}, Landroidx/compose/ui/semantics/Role;->a(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "component"

    :goto_0
    iget-object v4, p0, Lcom/dynatrace/android/compose/ToggleActionRecorder;->d:Ljava/lang/String;

    const-string v5, "Touch on "

    if-eqz v4, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v4, " with function "

    invoke-static {v5, v3, v4}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-static {v4, v1, v1}, Lkotlin/text/StringsKt;->R(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/dynatrace/android/compose/ToggleActionRecorder;->a:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    invoke-interface {v4}, Lcom/dynatrace/android/agent/measurement/MeasurementProvider;->a()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object v4

    iget-object p0, p0, Lcom/dynatrace/android/compose/ToggleActionRecorder;->b:Lcom/dynatrace/android/useraction/UserActionFactory;

    invoke-interface {p0, v4, v3}, Lcom/dynatrace/android/useraction/UserActionFactory;->a(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;Ljava/lang/String;)Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    move-result-object p0

    const-string v3, "role"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "function"

    invoke-virtual {p0, v2, v1}, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dynatrace/android/compose/ToggleableInfo;->a:Landroidx/compose/ui/state/ToggleableState;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fromState"

    invoke-virtual {p0, v1, v0}, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    const-string v1, "toggle"

    invoke-virtual {p0, v0, v1}, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->g()V

    return-object p1
.end method
