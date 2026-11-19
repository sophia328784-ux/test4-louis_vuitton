.class final Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.options.notifications.components.NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1"
    f = "NotificationsPreferencesComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;->b:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;->d:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;->c:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;->d:Landroidx/compose/runtime/State;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;->b:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;->c:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->c:Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;->b:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    if-nez v0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;

    invoke-interface {v1, p0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->m3(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->b:Z

    if-nez p1, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;

    invoke-interface {v1, p0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->m3(Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1;->d:Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$SystemNotificationDisabled;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;

    sget-object p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;->e:Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet$NoOptInCustomization;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->h5()V

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
