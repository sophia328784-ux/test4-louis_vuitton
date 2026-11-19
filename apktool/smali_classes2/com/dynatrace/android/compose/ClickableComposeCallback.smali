.class public final Lcom/dynatrace/android/compose/ClickableComposeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B)\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dynatrace/android/compose/ClickableComposeCallback;",
        "Lkotlin/Function0;",
        "",
        "function",
        "Landroidx/compose/ui/semantics/Role;",
        "role",
        "",
        "type",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final b:Lkotlin/jvm/functions/Function0;

.field public c:Landroidx/compose/ui/semantics/Role;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/compose/ClickableComposeCallback;->b:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/dynatrace/android/compose/ClickableComposeCallback;->c:Landroidx/compose/ui/semantics/Role;

    iput-object p3, p0, Lcom/dynatrace/android/compose/ClickableComposeCallback;->d:Ljava/lang/String;

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-object v1, p0, Lcom/dynatrace/android/compose/ClickableComposeCallback;->b:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_0

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/dynatrace/android/compose/ClickableComposeCallback;->c:Landroidx/compose/ui/semantics/Role;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lcom/dynatrace/android/compose/SemanticsManager;->a:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    if-eqz v0, :cond_1

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v0, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/Role;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/dynatrace/android/compose/ClickableComposeCallback;->c:Landroidx/compose/ui/semantics/Role;

    :cond_3
    new-instance v0, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;

    sget-object v3, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-direct {v0, v3}, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;-><init>(Lcom/dynatrace/android/agent/TimeLineProvider;)V

    new-instance v3, Lcom/dynatrace/android/useraction/UserActionFactoryImpl;

    invoke-direct {v3}, Lcom/dynatrace/android/useraction/UserActionFactoryImpl;-><init>()V

    instance-of v4, v1, Lcom/dynatrace/android/compose/ToggleableDataProvider;

    const-string v5, "onUA: "

    if-eqz v4, :cond_5

    new-instance v4, Lcom/dynatrace/android/compose/ToggleableInfo;

    move-object v6, v1

    check-cast v6, Lcom/dynatrace/android/compose/ToggleableDataProvider;

    invoke-interface {v6}, Lcom/dynatrace/android/compose/ToggleableDataProvider;->b()Landroidx/compose/ui/state/ToggleableState;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/android/compose/ClickableComposeCallback;->c:Landroidx/compose/ui/semantics/Role;

    invoke-interface {v6}, Lcom/dynatrace/android/compose/ToggleableDataProvider;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v7, p0, v6, v2}, Lcom/dynatrace/android/compose/ToggleableInfo;-><init>(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_4
    new-instance p0, Lcom/dynatrace/android/compose/ToggleActionRecorder;

    invoke-static {}, Lcom/dynatrace/android/compose/SemanticsManager;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/dynatrace/android/compose/ToggleActionRecorder;-><init>(Lcom/dynatrace/android/agent/measurement/MeasurementProvider;Lcom/dynatrace/android/useraction/UserActionFactory;Lcom/dynatrace/android/compose/ToggleableInfo;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/dynatrace/android/compose/ToggleActionRecorder;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v4, Lcom/dynatrace/android/compose/ClickableInfo;

    iget-object v6, p0, Lcom/dynatrace/android/compose/ClickableComposeCallback;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/dynatrace/android/compose/ClickableComposeCallback;->c:Landroidx/compose/ui/semantics/Role;

    invoke-direct {v4, v6, p0, v1, v2}, Lcom/dynatrace/android/compose/ClickableInfo;-><init>(Ljava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_6
    new-instance p0, Lcom/dynatrace/android/compose/ClickActionRecorder;

    invoke-static {}, Lcom/dynatrace/android/compose/SemanticsManager;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/dynatrace/android/compose/ClickActionRecorder;-><init>(Lcom/dynatrace/android/agent/measurement/MeasurementProvider;Lcom/dynatrace/android/useraction/UserActionFactory;Lcom/dynatrace/android/compose/ClickableInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dynatrace/android/compose/ClickActionRecorder;->c:Lcom/dynatrace/android/compose/ClickableInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/dynatrace/android/compose/ClickableInfo;->c:Lkotlin/jvm/functions/Function0;

    iget-object v3, v0, Lcom/dynatrace/android/compose/ClickableInfo;->b:Landroidx/compose/ui/semantics/Role;

    if-eqz v3, :cond_7

    iget v4, v3, Landroidx/compose/ui/semantics/Role;->a:I

    invoke-static {v4}, Landroidx/compose/ui/semantics/Role;->a(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    const-string v4, "component"

    :goto_2
    iget-object v5, p0, Lcom/dynatrace/android/compose/ClickActionRecorder;->d:Ljava/lang/String;

    const-string v6, "Touch on "

    if-eqz v5, :cond_8

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    const-string v5, " with function "

    invoke-static {v6, v4, v5}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-static {v6, v5, v5}, Lkotlin/text/StringsKt;->R(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    iget-object v5, p0, Lcom/dynatrace/android/compose/ClickActionRecorder;->a:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    invoke-interface {v5}, Lcom/dynatrace/android/agent/measurement/MeasurementProvider;->a()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object v5

    iget-object p0, p0, Lcom/dynatrace/android/compose/ClickActionRecorder;->b:Lcom/dynatrace/android/useraction/UserActionFactory;

    invoke-interface {p0, v5, v4}, Lcom/dynatrace/android/useraction/UserActionFactory;->a(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;Ljava/lang/String;)Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    move-result-object p0

    const-string v4, "role"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "function"

    invoke-virtual {p0, v3, v2}, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    iget-object v0, v0, Lcom/dynatrace/android/compose/ClickableInfo;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->g()V

    return-object v0
.end method
