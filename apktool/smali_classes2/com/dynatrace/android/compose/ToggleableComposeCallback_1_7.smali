.class public final Lcom/dynatrace/android/compose/ToggleableComposeCallback_1_7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B%\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dynatrace/android/compose/ToggleableComposeCallback_1_7;",
        "Lkotlin/Function1;",
        "",
        "",
        "onValueChanged",
        "Landroidx/compose/ui/semantics/Role;",
        "role",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final b:Lkotlin/jvm/functions/Function1;

.field public c:Landroidx/compose/ui/semantics/Role;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/compose/ToggleableComposeCallback_1_7;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/dynatrace/android/compose/ToggleableComposeCallback_1_7;->c:Landroidx/compose/ui/semantics/Role;

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    iget-object v2, p0, Lcom/dynatrace/android/compose/ToggleableComposeCallback_1_7;->b:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_0

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/dynatrace/android/compose/ToggleableComposeCallback_1_7;->c:Landroidx/compose/ui/semantics/Role;

    const/4 v1, 0x0

    if-nez p1, :cond_3

    sget-object p1, Lcom/dynatrace/android/compose/SemanticsManager;->a:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    if-eqz p1, :cond_1

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {p1, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/Role;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lcom/dynatrace/android/compose/ToggleableComposeCallback_1_7;->c:Landroidx/compose/ui/semantics/Role;

    :cond_3
    new-instance p1, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;

    sget-object v3, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-direct {p1, v3}, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;-><init>(Lcom/dynatrace/android/agent/TimeLineProvider;)V

    new-instance v3, Lcom/dynatrace/android/useraction/UserActionFactoryImpl;

    invoke-direct {v3}, Lcom/dynatrace/android/useraction/UserActionFactoryImpl;-><init>()V

    new-instance v4, Lcom/dynatrace/android/compose/ToggleableInfo;

    xor-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Landroidx/compose/ui/state/ToggleableStateKt;->a(Z)Landroidx/compose/ui/state/ToggleableState;

    move-result-object v5

    iget-object v6, p0, Lcom/dynatrace/android/compose/ToggleableComposeCallback_1_7;->c:Landroidx/compose/ui/semantics/Role;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/dynatrace/android/compose/ToggleableInfo;-><init>(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    new-instance v1, Lcom/dynatrace/android/compose/ToggleActionRecorder;

    invoke-static {}, Lcom/dynatrace/android/compose/SemanticsManager;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/dynatrace/android/compose/ToggleActionRecorder;-><init>(Lcom/dynatrace/android/agent/measurement/MeasurementProvider;Lcom/dynatrace/android/useraction/UserActionFactory;Lcom/dynatrace/android/compose/ToggleableInfo;Ljava/lang/String;)V

    new-instance p1, Lhf;

    invoke-direct {p1, p0, v0}, Lhf;-><init>(Lcom/dynatrace/android/compose/ToggleableComposeCallback_1_7;Z)V

    invoke-virtual {v1, p1}, Lcom/dynatrace/android/compose/ToggleActionRecorder;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
